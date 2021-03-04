// @dart = 2.12

// ignore_for_file: import_of_legacy_library_into_null_safe
import 'package:built_redux/built_redux.dart';
import 'package:<FTName>/src/domain/action/<FTName>_actions.dart';
import 'package:<FTName>/src/domain/state/<FTName>_state.dart';

MiddlewareBuilder<<FTName | pascalcase>State, <FTName | pascalcase>StateBuilder, <FTName | pascalcase>Actions> create<FTName | pascalcase>Middleware() {
  return MiddlewareBuilder<<FTName | pascalcase>State, <FTName | pascalcase>StateBuilder, <FTName | pascalcase>Actions>();
  // ..add<RegistrationState>(RegistrationActionsNames.setRegistrationUserInfo, _onUpdateRegistrationInfo);
}

// void _onUpdateRegistrationInfo(
//   MiddlewareApi<RegistrationState, RegistrationStateBuilder, RegistrationActions> api,
//   ActionHandler next,
//   Action<RegistrationState> action,
// ) {
//   next(action);
// }
