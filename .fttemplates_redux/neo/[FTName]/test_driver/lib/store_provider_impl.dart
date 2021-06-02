
import 'package:app_domain/domain/actions/actions.dart';
import 'package:app_domain/domain/states/application.dart';
import 'package:app_domain/domain/store_provider.dart';
import 'package:built_redux/built_redux.dart';
import 'package:built_value/built_value.dart';
import 'package:states/states.dart';

class StoreProviderImpl implements StoreProvider {
  // ignore_for_file: avoid_as
  // ignore_for_file: always_specify_types
  late Store _store;

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
    if (S == AppState) {
      return AppState((b) {
        return b
          ..appSettingsState.replace(
            AppSettingsState(
              (b2) {
                return b2
                  ..offline = false
                  ..outOfService = false;
              },
            ),
          ); // = AppSettingsState()
      }) as S;
    }

    return _store.state as S;
  }

  @override
  AppActions get appActions {
    return AppActions();
  }

  @override
  AppState get appState {
    return AppState();
  }

  T getStateValueByType<T>({required String methodName}) {
    throw UnimplementedError();
  }

  @override
  Stream<S> nextSubstate<S>(S Function(AppState) mapper) {
    if (S == AppState) {
      // stable internet connection
      return Stream.value(AppState()) as Stream<S>;

      // for tests unstable internet connection
      // return Stream.periodic(const Duration(seconds: 1), (_) {
      //   final AppState mockAppState = AppState((b) {
      //     return b
      //       ..appSettingsState.replace(
      //         AppSettingsState(
      //           (b2) {
      //             return b2
      //               ..offline = _kRandom.nextBool()
      //               ..outOfService = _kRandom.nextBool();
      //           },
      //         ),
      //       );
      //   });

      //   return mockAppState as S;
      // });
    }

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