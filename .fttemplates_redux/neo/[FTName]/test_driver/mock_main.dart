import 'package:app_domain/domain/store_provider.dart';
import 'package:design/design.dart';
import 'package:design/design_data.dart';
import 'package:design/theme/palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:<FTName>/src/generated/l10n.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:get_it/get_it.dart';

import 'lib/init_application.dart';
import 'lib/localization/fallback_cupertino_localizations_delegate.dart';
import 'lib/mock_di.dart';
import 'package:<FTName>/src/view/<FTName>/<FTName>.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initApplication(diGet);
  await Palette.init();
  final DesignData design = await DesignData().initAsync();

  runApp(
    Design(
      design: design,
      child: const MockApp(),
    ),
  );
}

class MockApp extends StatefulWidget {
  const MockApp();

  @override
  State createState() => _MockAppState();
}

class _MockAppState extends State<MockApp> with WidgetsBindingObserver {
  Design get _design => Design.of(context);

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance?.addObserver(this);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: _design.colors.primaryDark,
      ),
    );
  }

  @override
  void dispose() {
    WidgetsBinding.instance?.removeObserver(this);

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return
    
     MultiProvider(
      providers: <SingleChildWidget>[
        Provider<StoreProvider>.value(value: diGet<StoreProvider>()),
        Provider<GetIt>.value(value: diGet),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: _design.theme,
        supportedLocales: const <Locale>[
          Locale('ru'),
          // Locale('en'),
        ],
        initialRoute: '/',
        onGenerateRoute: (RouteSettings settings) {
          switch (settings.name) {
            case '/':
              return MaterialPageRoute<dynamic>(
                settings: settings,
                builder: (_) => HomeScreen(),
              );
            case '/example':
              return MaterialPageRoute<dynamic>(
                settings: settings,
                builder: (_) => <FTName | pascalcase>(),
              );
            default:
              return null;
          }
        },
        localizationsDelegates: <LocalizationsDelegate<dynamic>>[
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          const FallbackCupertinoLocalisationsDelegate(),
          <FTName | pascalcase>Localizations.delegate,
        ],
        builder: (_, Widget? child) {
          return child ?? const SizedBox();
        },
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const Center(
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Text('<FTName | pascalcase>'),
                ),
              ),

              // example widget
              Padding(
                padding: const EdgeInsets.only(top: 32),
                child: ListTile(
                  leading: const Icon(Icons.ac_unit),
                  title: InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed('/example');
                    },
                    child: const Text('example widget'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
