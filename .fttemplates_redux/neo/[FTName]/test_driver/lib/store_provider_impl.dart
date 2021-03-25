
// ignore_for_file: import_of_legacy_library_into_null_safe
import 'package:app_domain/domain/actions/actions.dart';
import 'package:app_domain/domain/states/application.dart';
import 'package:app_domain/domain/store_provider.dart';
import 'package:built_redux/built_redux.dart';
import 'package:built_value/built_value.dart';

class StoreProviderImpl implements StoreProvider {
  // ignore_for_file: avoid_as
  // ignore_for_file: always_specify_types
  Store _store;

  @override
  S actions<S>() {
    return _store.actions as S;
    // mock
    // if (S == RegistrationActions) {
    //   return RegistrationActions() as S;
    // }

    // throw UnimplementedError();
  }

  @override
  S state<S>() {
    // mock

    return _store.state as S;
    // if (S == RegistrationState) {
    //   return RegistrationState() as S;
    // }

    // throw UnimplementedError();
  }

  @override
  AppActions get appActions {
    return null;
  }

  @override
  AppState get appState {
    throw UnimplementedError();
  }

  @override
  T getStateValueByType<T>({String methodName}) {
    throw UnimplementedError();
  }

  @override
  Stream<S> nextSubstate<S>(S Function(AppState) mapper) {
    // return _store.nextState.map((event) => event as Built<RegistrationState, RegistrationStateBuilder>) as Stream<S>;

    throw UnimplementedError();
  }

  @override
  void setStore(Store store) {
    _store = store;
  }

  @override
  Store<Built<dynamic, dynamic>, Builder<dynamic, dynamic>, ReduxActions> get store {
    return _store;
  }

  @override
  Stream<S> streamState<S>() {
    // return Stream<S>.value(null);
    return _store.stream.map((event) => event.next as S);
  }
}

// @override
// Stream<SubState> nextSubstate<SubState>(StateMapper<AppState, AppStateBuilder, SubState> mapper) {
//   final StateMapper<S, SB, dynamic> appStateMapper = _mappers[AppState];

//   return _store.nextSubstate<SubState>((S state) => mapper(appStateMapper(state) as AppState));
// }
