// @dart=2.12

// ignore_for_file: import_of_legacy_library_into_null_safe
import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';

// app_domain part
import 'package:app_domain/domain/store_provider.dart';

// TODO: uncomment it for using redux
// import 'package:package_name/src/domain/action/<FTName>_actions.dart';
// import 'package:package_name/src/domain/state/<FTName>_state.dart';

// flutter_bloc part
// ignore: always_use_package_imports
import '../events/<FTName>_event.dart';
// ignore: always_use_package_imports
import '../states/<FTName>_state.dart';

class <FTName | pascalcase>Bloc extends Bloc<<FTName | pascalcase>Event, <FTName | pascalcase>State> {
  <FTName | pascalcase>Bloc({
    required this.storeProvider,
    required this.testMode,
  }) : super(const <FTName | pascalcase>State()) {
    _subscribe();
  }

  final StoreProvider storeProvider;
  final bool testMode;

  StreamSubscription<bool>? _awaitingOfSomething;

  // replace this with package State and Actions for using redux
  // PackageState _packageState => storeProvider.state<PackageState>State>();
  // PackageActions get _packageActions => storeProvider.actions<PackageActions>();
  // Stream<PackageState> get _packageStateStream => storeProvider.streamState<PackageState>();

  @override
  Future<void> close() {
    _awaitingOfSomething?.cancel();

    return super.close();
  }

  @override
  Stream<<FTName | pascalcase>State> mapEventToState(<FTName | pascalcase>Event event) async* {
    yield* event.maybeMap<Stream<<FTName | pascalcase>State>>(
      start: (_) => _mapStartToState(),
      // ignore: always_specify_types
      changeLoading: (blocEvent) => _changeLoading(blocEvent.value),
      orElse: _mapDefaultEventToState,
    );
  }

  /// initial values
  Stream<<FTName | pascalcase>State> _mapStartToState() async* {
    yield const <FTName | pascalcase>State().copyWith(
      // an example of initial value to starting
      // loading: _packageState.loading,
    );
  }

  /// loading of something
  Stream<<FTName | pascalcase>State> _changeLoading(bool value) async* {
    yield state.copyWith(
      loading: value,
    );
  }

  /// default handler
  Stream<<FTName | pascalcase>State> _mapDefaultEventToState() async* {}

  /// `subscribe to redux state`
  void _subscribe() {
    // _awaitingOfSomething = _packageStateStream.map((PackageState _packageState) {
    //   return _packageState.loading;
    // }).listen((bool loading) {
    //   emit(state.copyWith(
    //     loading: loading,
    //   ));
    // });
  }
}
