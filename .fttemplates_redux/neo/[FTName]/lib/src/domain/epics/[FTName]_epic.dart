

import 'package:built_redux/built_redux.dart';

import 'package:<FTName>/src/domain/action/<FTName>_actions.dart';
import 'package:<FTName>/src/domain/state/<FTName>_state.dart';

abstract class <FTName | pascalcase>Epic {
  Stream<void> test(
    Stream<Action<dynamic>> stream,
    MiddlewareApi<<FTName | pascalcase>State, <FTName | pascalcase>StateBuilder, <FTName | pascalcase>Actions> api,
  );
}
