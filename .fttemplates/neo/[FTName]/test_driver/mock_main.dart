// import 'package:components/flushbar.dart';
// import 'package:design/design.dart';
// import 'package:design/design_data.dart';
// import 'package:design/theme/palette.dart';
// import 'package:dioc/dioc.dart' as dioc;
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';
// import 'package:neo_registration/neo_registration.dart';
// import 'package:neo_registration/src/generated/l10n.dart';
// import 'package:neo_registration/src/view/new_client/user_info_step_one/user_info_step_one.dart';
// import 'package:neo_registration/src/utils/base_flush_bar.dart';
// import 'package:neo_registration/src/view/new_client/user_info_step_three/user_info_step_three.dart';
// import 'package:neo_registration/src/view/choose_type/registration_choose_type.dart';
// import 'package:neo_registration/src/view/registration_status_dialog/registration_status_dialog.dart';
// import 'package:provider/provider.dart';

// import 'lib/init_application.dart';
// import 'lib/localization/fallback_cupertino_localizations_delegate.dart';
// import 'lib/mock_di.dart';

// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();

//   await initApplication(diContainer);

//   await Palette.init();
//   final DesignData design = await DesignData().initAsync();

//   runApp(
//     Design(
//       design: design,
//       isInversed: true,
//       child: const MockApp(),
//     ),
//   );
// }

// class MockApp extends StatefulWidget {
//   const MockApp({
//     Key key,
//   }) : super(key: key);

//   @override
//   State createState() => _MockAppState();
// }

// class _MockAppState extends State<MockApp> with WidgetsBindingObserver {
//   Design get _design => Design.of(context);

//   @override
//   void initState() {
//     super.initState();

//     WidgetsBinding.instance.addObserver(this);
//   }

//   @override
//   void didChangeDependencies() {
//     super.didChangeDependencies();

//     SystemChrome.setSystemUIOverlayStyle(
//       SystemUiOverlayStyle(
//         statusBarColor: _design.colors.primaryDark,
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     WidgetsBinding.instance.removeObserver(this);

//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Provider<dioc.Container>.value(
//       value: diContainer,
//       child: MaterialApp(
//         debugShowCheckedModeBanner: false,
//         theme: _design.theme,
//         supportedLocales: const <Locale>[
//           Locale('ru'),
//           // Locale('en'),
//         ],
//         routes: <String, Widget Function(BuildContext)>{
//           '/': (_) => HomeScreen(),
//           // choose type
//           registrationChooseTypeComponentKey: (_) => const RegistrationChooseType(),
//           // step 1
//           registrationNewClientStepOneKey: (_) => const RegistrationNewClientStepOne(),
//           // step 2
//           registrationNewClientStepTwoKey: (_) => const RegistrationNewClientStepTwo(),
//           // step 3
//           registrationNewClientStepThreeKey: (_) => const RegistrationNewClientStepThree(),
//         },
//         localizationsDelegates: <LocalizationsDelegate<dynamic>>[
//           GlobalMaterialLocalizations.delegate,
//           GlobalWidgetsLocalizations.delegate,
//           const FallbackCupertinoLocalisationsDelegate(),
//           RegistrationIntl.delegate,
//         ],
//         builder: (_, Widget child) {
//           return child;
//         },
//       ),
//     );
//   }
// }

// class HomeScreen extends StatelessWidget {
//   HomeScreen();

//   final Flushbar<void> _flush = notificationFlushbar(
//     title: 'title',
//     message: 'message',
//   );

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(16),
//         child: SingleChildScrollView(
//           child: Column(
//             children: <Widget>[
//               const SizedBox(height: 32),
//               // choose type component
//               ListTile(
//                 leading: const Icon(Icons.ac_unit),
//                 title: InkWell(
//                   key: const Key(registrationChooseTypeComponentKey),
//                   child: const Text('choose type'),
//                   onTap: () {
//                     Navigator.of(context).pushNamed(registrationChooseTypeComponentKey);
//                   },
//                 ),
//               ),

//               // status dialog
//               ListTile(
//                 leading: const Icon(Icons.account_tree_outlined),
//                 title: InkWell(
//                   key: const Key(registrationStatusDialogKey),
//                   child: const Text('status dialog'),
//                   onTap: () async {
//                     await Navigator.of(context).push<void>(
//                       MaterialPageRoute<void>(
//                         builder: (_) {
//                           return const RegistrationStatusDialog();
//                         },
//                       ),
//                     );
//                   },
//                 ),
//               ),

//               // new client step 1
//               ListTile(
//                 leading: const Icon(Icons.add_alarm_rounded),
//                 title: InkWell(
//                   key: const Key(registrationNewClientStepOneKey),
//                   child: const Text('step 1'),
//                   onTap: () {
//                     Navigator.of(context).pushNamed(registrationNewClientStepOneKey);
//                   },
//                 ),
//               ),

//               // new client step 2
//               ListTile(
//                 leading: const Icon(Icons.fast_forward),
//                 title: InkWell(
//                   key: const Key(registrationNewClientStepTwoKey),
//                   child: const Text('step 2'),
//                   onTap: () {
//                     Navigator.of(context).pushNamed(registrationNewClientStepTwoKey);
//                   },
//                 ),
//               ),

//               // new client step 2 dialog
//               ListTile(
//                 leading: const Icon(Icons.account_tree_outlined),
//                 title: InkWell(
//                   key: const Key(registrationStatusDialogKey),
//                   child: const Text('step 2. confirm dialog'),
//                   onTap: () async {
//                     if (_flush.isHide()) {
//                       await _flush.show(context);
//                     }
//                   },
//                 ),
//               ),

//               // new client step 3
//               ListTile(
//                 leading: const Icon(Icons.icecream),
//                 title: InkWell(
//                   key: const Key(registrationNewClientStepThreeKey),
//                   child: const Text('step 3'),
//                   onTap: () {
//                     Navigator.of(context).pushNamed(registrationNewClientStepThreeKey);
//                   },
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
