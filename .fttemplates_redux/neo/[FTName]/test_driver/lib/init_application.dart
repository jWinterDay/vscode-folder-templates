
// ignore_for_file: import_of_legacy_library_into_null_safe
import 'package:app_domain/domain/store_provider.dart';
import 'package:built_redux/src/store.dart';
import 'package:dioc/dioc.dart' as dioc;
import 'package:models/config/config.dart';
import 'package:<FTName>/src/domain/action/<FTName>_actions.dart';
import 'package:<FTName>/src/domain/state/<FTName>_state.dart';
import 'package:<FTName>/src/services/<FTName>_service.dart';

import 'mock_redux_instances.dart';
import '<FTName>_service_mock_impl.dart';
import 'store_provider_impl.dart';

Future<Store<<FTName | pascalcase>State, <FTName | pascalcase>StateBuilder, <FTName | pascalcase>Actions>> initApplication(
  dioc.Container di,
) async {
  final AppConfig appConfig = AppConfig((AppConfigBuilder b) {
    return b
      ..app = 'neo'
      ..appId = 'neo'
      ..appVersion = 'neo'
      ..devFlurryApiAndroid = 'neo'
      ..devFlurryApiIos = 'neo'
      ..flyerAppIdIos = 'neo'
      ..flyerAppIdAndroid = 'neo'
      ..companyName = 'neo'
      ..registrationSmsRequestPeriod = 10;
  });

  di.register<AppConfig>(
    (dioc.Container container) => appConfig,
    defaultMode: dioc.InjectMode.singleton,
  );

  // StoreProvider
  final StoreProviderImpl storeProviderImpl = StoreProviderImpl();

  di.register<StoreProvider>(
    (dioc.Container container) => storeProviderImpl,
    defaultMode: dioc.InjectMode.singleton,
  );

  // services
  _initServices(di);

  // redux store
  return await initStore(di);
}

void _initServices(dioc.Container di) {
  di.register<<FTName | pascalcase>Service>(
    (dioc.Container container) => <FTName | pascalcase>ServiceMockImpl(null),
    defaultMode: dioc.InjectMode.singleton,
  );
}

Future<Store<<FTName | pascalcase>State, <FTName | pascalcase>StateBuilder, <FTName | pascalcase>Actions>> initStore(dioc.Container di) async {
  final Store<<FTName | pascalcase>State, <FTName | pascalcase>StateBuilder, <FTName | pascalcase>Actions> store =
      Store<<FTName | pascalcase>State, <FTName | pascalcase>StateBuilder, <FTName | pascalcase>Actions>(
    mockReducerBuilder.build(),
    <FTName | pascalcase>State(),
    <FTName | pascalcase>Actions(),
    middleware: mockMiddlewares(),
  );

  // ignore: avoid_as
  final StoreProviderImpl storeProvider = di.singleton<StoreProvider>() as StoreProviderImpl;
  storeProvider.setStore(store);

  return store;
}
