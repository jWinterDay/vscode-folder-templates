import 'package:<FTName>/src/services/<FTName>_service.dart';
import 'package:neo_network/neo_network.dart';

class <FTName | pascalcase>ServiceMockImpl extends <FTName | pascalcase>Service {
  <FTName | pascalcase>ServiceMockImpl(
    this.neoApi,
  );

  final NeoApi? neoApi;

  // @override
  // Future<VerificationResponse> confirmPhoneNumber(String mobilePhone) async {
  //   assert(mobilePhone != null);

  //   log('************** YOU USE MOCKED RegistrationServiceMockImpl. confirmPhoneNumber $mobilePhone **************');

  //   await Future<void>.delayed(const Duration(seconds: 1));

  //   if (mobilePhone == '') {
  //     return null;
  //   }

  //   final VerificationResponse response = VerificationResponse(
  //     (VerificationResponseBuilder b) => b
  //       ..isError = false
  //       ..data = VerificationDataResponse(
  //         (VerificationDataResponseBuilder b2) => b2.expirationTime = DateTime.now().toUtc().toString(),
  //       ).toBuilder(),
  //   );

  //   return response;
  // }

  // @override
  // Future<RegistrationTokenResponse> confirmSms(String mobilePhone, String verificationCode) async {
  //   assert(mobilePhone != null);
  //   assert(verificationCode != null);

  //   log('************** YOU USE MOCKED RegistrationServiceMockImpl. confirmSms **************');

  //   await Future<void>.delayed(const Duration(seconds: 1));

  //   if (mobilePhone == '' || verificationCode == '') {
  //     return Future<RegistrationTokenResponse>.value();
  //   }

  //   final RegistrationTokenResponse response = RegistrationTokenResponse(
  //     (RegistrationTokenResponseBuilder b) => b
  //       ..isError = false
  //       ..data = RegistrationTokenDataResponse(
  //         (RegistrationTokenDataResponseBuilder b2) => b2.token = 'test_test',
  //       ).toBuilder(),
  //   );

  //   return response;
  // }

  // @override
  // Future<RegistrationResponse> registration(RegistrationParams registrationParams) async {
  //   assert(registrationParams != null);

  //   log('************** YOU USE MOCKED RegistrationServiceMockImpl. registration **************');

  //   await Future<void>.delayed(const Duration(seconds: 1));

  //   if (registrationParams == null) {
  //     return Future<RegistrationResponse>.value();
  //   }

  //   // final t1 = DateTime.now().toUtc();
  //   // final t2 = DateTime.now().toIso8601String();
  //   // final t3 = DateTime.now().toString();

  //   // print('t1 = $t1, t2 = $t2, t3 = $t3');

  //   final TokensNM authenticationData = TokensNM((TokensNMBuilder b) => b
  //     ..accessToken = '123'
  //     ..accessTokenExpirationTime = DateTime.now().toUtc().toString()
  //     ..refreshToken = '456');

  //   final RegistrationResponse response = RegistrationResponse(
  //     (RegistrationResponseBuilder b) => b
  //       ..isError = false
  //       ..data = RegistrationDataResponse(
  //         (RegistrationDataResponseBuilder b2) => b2.authenticationData = authenticationData.toBuilder(),
  //       ).toBuilder(),
  //   );

  //   return response;
  // }
}
