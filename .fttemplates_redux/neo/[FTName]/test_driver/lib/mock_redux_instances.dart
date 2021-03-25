// ignore_for_file: import_of_legacy_library_into_null_safe
import 'package:built_redux/built_redux.dart';
import 'package:<FTName>/src/domain/action/<FTName>_actions.dart';
import 'package:<FTName>/src/domain/epics/<FTName>_epic.dart';
import 'package:<FTName>/src/domain/epics/<FTName>_epic_impl.dart';
import 'package:<FTName>/src/domain/middleware/<FTName>_middleware.dart';
import 'package:<FTName>/src/domain/reducer/<FTName>_reducer.dart';
import 'package:<FTName>/src/domain/state/<FTName>_state.dart';
import 'package:<FTName>/src/services/<FTName>_service.dart';
import 'package:utilities/utilities.dart';

import 'mock_di.dart';

<FTName | pascalcase>Epic _<FTName | camelcase>Epic = <FTName | pascalcase>EpicImpl(
  diContainer.singleton<<FTName | pascalcase>Service>(),
);

Iterable<Middleware<<FTName | pascalcase>State, <FTName | pascalcase>StateBuilder, <FTName | pascalcase>Actions>> mockMiddlewares() {
  return <Middleware<<FTName | pascalcase>State, <FTName | pascalcase>StateBuilder, <FTName | pascalcase>Actions>>[
    create<FTName | pascalcase>Middleware().build(),
    createEpicMiddleware(
      // ignore: always_specify_types
      [
        _<FTName | camelcase>Epic.test,
      ],
      (<FTName | pascalcase>State state) => state,
      (<FTName | pascalcase>Actions actions) => actions,
    ),
  ];
}

final ReducerBuilder<<FTName | pascalcase>State, <FTName | pascalcase>StateBuilder> mockReducerBuilder =
    ReducerBuilder<<FTName | pascalcase>State, <FTName | pascalcase>StateBuilder>()
      ..combine(
        create<FTName | pascalcase>Reducer(),
      );
