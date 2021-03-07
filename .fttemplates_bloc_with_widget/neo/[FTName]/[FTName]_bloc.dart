// @dart = 2.12

import 'dart:async';

// ignore_for_file: import_of_legacy_library_into_null_safe
import 'package:app_domain/domain/store_provider.dart';
// import 'package:package1/src/domain/action/package1_actions.dart';
// import 'package:package1/src/domain/state/package1_state.dart';
import 'package:rxdart/rxdart.dart';
import 'package:utilities/logger.dart';
import 'package:dioc/dioc.dart' as dioc;

class <FTName | pascalcase>Bloc {
  late dioc.Container _di;
  void setDi(dioc.Container di) {
    _di = di;

    _init();
  }

  StoreProvider get _storeProvider => _di.singleton<StoreProvider>();

  /// domain state, actions and other resources
  // Package1State get _package1State => _storeProvider.state<Package1State>();
  // Package1Actions get _package1Actions => _storeProvider.actions<Package1Actions>();
  // Stream<Package1State> get package1Stream => _storeProvider.streamState<Package1State>();

  /// some subject
  // final BehaviorSubject<bool> _source1Subject = BehaviorSubject<bool>.seeded(false);
  // Stream<bool> get source1Stream => _source1Subject.stream;

  /// loading subject
  final BehaviorSubject<bool> _isLoadingSubject = BehaviorSubject<bool>.seeded(false);
  Stream<bool> get isLoadingStream => _isLoadingSubject.stream;
  bool get isLoading => _isLoadingSubject.value ?? false;

  /// restoring data
  void restoreFields() {
    // loading
    // _setLoading(loading: _package1State.isloading);
  }

  /// initial bloc logic here
  void _init() {
    
  }

  void _setLoading({required bool loading}) {
    _isLoadingSubject.add(loading);
  }

  void dispose() {
    _isLoadingSubject.close();
    // _source1Subject.close();
  }
}
