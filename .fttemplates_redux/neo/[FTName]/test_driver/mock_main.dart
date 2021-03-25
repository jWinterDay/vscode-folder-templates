
// ignore_for_file: import_of_legacy_library_into_null_safe
import 'package:design/design.dart';
import 'package:design/design_data.dart';
import 'package:design/theme/palette.dart';
import 'package:dioc/dioc.dart' as dioc;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:<FTName>/src/generated/l10n.dart';
import 'package:provider/provider.dart';

import 'lib/init_application.dart';
import 'lib/localization/fallback_cupertino_localizations_delegate.dart';
import 'lib/mock_di.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initApplication(diContainer);

  await Palette.init();
  final DesignData design = await DesignData().initAsync();

  runApp(
    Design(
      design: design,
      isInversed: true,
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
    return Provider<dioc.Container>.value(
      value: diContainer,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: _design.theme,
        supportedLocales: const <Locale>[
          Locale('ru'),
          // Locale('en'),
        ],
        routes: <String, Widget Function(BuildContext)>{
          '/': (_) => HomeScreen(),
          // choose type
          // registrationChooseTypeComponentKey: (_) => const RegistrationChooseType(),
          // // step 1
          // registrationNewClientStepOneKey: (_) => const RegistrationNewClientStepOne(),
          // // step 2
          // registrationNewClientStepTwoKey: (_) => const RegistrationNewClientStepTwo(),
          // // step 3
          // registrationNewClientStepThreeKey: (_) => const RegistrationNewClientStepThree(),
        },
        localizationsDelegates: <LocalizationsDelegate<dynamic>>[
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          const FallbackCupertinoLocalisationsDelegate(),
          <FTName | pascalcase>Intl.delegate,
        ],
        builder: (_, Widget child) {
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
              const SizedBox(height: 32),
              // choose type component
              // ListTile(
              //   leading: const Icon(Icons.ac_unit),
              //   title: InkWell(
              //     key: const Key(registrationChooseTypeComponentKey),
              //     child: const Text('choose type'),
              //     onTap: () {
              //       Navigator.of(context).pushNamed(registrationChooseTypeComponentKey);
              //     },
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
