// @dart = 2.12

// ignore_for_file: import_of_legacy_library_into_null_safe
import 'package:built_redux/built_redux.dart';

abstract class <FTName | pascalcase>Epic {
  Stream<void> test(
    Stream<Action<dynamic>> stream,
    MiddlewareApi<<FTName | pascalcase>State, <FTName | pascalcase>StateBuilder, <FTName | pascalcase>Actions> api,
  );
}
