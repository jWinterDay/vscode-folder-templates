// import 'dart:io' show ProcessResult;

// import 'package:flutter_driver/flutter_driver.dart';
// import 'package:neo_registration/src/utils/registration_keys.dart';
// import 'package:screenshots/screenshots.dart';
// import 'package:test/test.dart';

// import 'utils/compare_images.dart';

// void main() {
//   group('RegistrationChooseTypeComponent', () {
//     final SerializableFinder chooseTypeFinder = find.byValueKey(registrationChooseTypeComponentKey);

//     FlutterDriver _driver;
//     final Config _screenshotconfig = Config();

//     setUpAll(() async {
//       _driver = await FlutterDriver.connect();
//     });

//     tearDownAll(() async {
//       await _driver?.close();
//     });

//     test('check health', () async {
//       final Health health = await _driver.checkHealth();

//       expect(health.status, HealthStatus.ok);
//     });

//     test('check design registration_choose_type_component', () async {
//       await _driver.tap(chooseTypeFinder);

//       await screenshot(_driver, _screenshotconfig, 'registration_choose_type_component');
//       final ProcessResult processResult = await compareImages(
//         'test_driver/images/original/registration_choose_type_component.png',
//         'test_driver/images/actual/test/registration_choose_type_component.png',
//         'registration_choose_type_component.png',
//       );

//       if (processResult.exitCode != 0) {
//         // ignore: avoid_print
//         print('registration_choose_type_component res: ${processResult.stderr}, ${processResult.stdout}');
//       }

//       expect(processResult.exitCode, 0);
//     });
//   });
// }
