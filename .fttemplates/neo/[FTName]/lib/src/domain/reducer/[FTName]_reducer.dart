// @dart = 2.12

// ignore_for_file: import_of_legacy_library_into_null_safe
import 'package:built_redux/built_redux.dart';
// import 'package:neo_error_converter/network/entity/network_error_model.dart';
// import 'package:neo_network/entity/registration/registration_response.dart';
// import 'package:neo_network/entity/registration/registration_token_response.dart';
// import 'package:neo_network/entity/registration/verification_response.dart';
// import 'package:neo_registration/src/domain/action/registration_actions.dart';
// import 'package:neo_registration/src/domain/state/registration_state.dart';
// import 'package:utilities/utilities.dart' show Pair;

ReducerBuilder<<FTName | pascalcase>State, <FTName | pascalcase>StateBuilder> create<FTName | pascalcase>Reducer() {
  return ReducerBuilder<<FTName | pascalcase>State, <FTName | pascalcase>StateBuilder>();
    // ..add<<FTName | pascalcase>State>(<FTName | pascalcase>ActionsNames.setStepThreeUserInfo, _setStepThreeUserInfo);
}

// example
// void _setStepThreeUserInfo(
//   <FTName | pascalcase>State state,
//   Action<<FTName | pascalcase>State> action,
//   <FTName | pascalcase>StateBuilder builder,
// ) {
//   final <FTName | pascalcase>State userRegistrationInfo = action.payload;

//   builder.update(
//     (<FTName | pascalcase>StateBuilder builder) => builder
//       ..promoCode = userRegistrationInfo.promoCode
//       ..birthDate = userRegistrationInfo.birthDate,
//   );
// }
