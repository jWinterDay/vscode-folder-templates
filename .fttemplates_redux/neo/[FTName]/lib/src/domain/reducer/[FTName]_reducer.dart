import 'package:built_redux/built_redux.dart';
// import 'package:<FTName>/src/domain/action/<FTName>_actions.dart';
import 'package:<FTName>/src/domain/state/<FTName>_state.dart';

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
