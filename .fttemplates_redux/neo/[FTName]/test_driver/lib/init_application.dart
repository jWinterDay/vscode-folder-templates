
import 'package:app_domain/domain/store_provider.dart';
import 'package:built_redux/src/store.dart';
import 'package:get_it/get_it.dart';
import 'package:models/config/config.dart';
import 'package:<FTName>/src/domain/action/<FTName>_actions.dart';
import 'package:<FTName>/src/domain/state/<FTName>_state.dart';
import 'package:<FTName>/src/services/<FTName>_service.dart';
import 'package:states/states.dart';

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

  di.registerSingleton<AppConfig>(appConfig);

  final StoreProviderImpl storeProviderImpl = StoreProviderImpl();
  di.registerSingleton<StoreProvider>(storeProviderImpl);

  // services
  _initServices(di);

  // redux store
  return await initStore(di);
}

void _initServices(dioc.Container di) {
  di.registerSingleton<<FTName | pascalcase>Service>(<FTName | pascalcase>ServiceMockImpl(null));
}

Future<Store<<FTName | pascalcase>State, <FTName | pascalcase>StateBuilder, <FTName | pascalcase>Actions>> initStore(GetIt di) async {
  final Store<<FTName | pascalcase>State, <FTName | pascalcase>StateBuilder, <FTName | pascalcase>Actions> store =
      Store<<FTName | pascalcase>State, <FTName | pascalcase>StateBuilder, <FTName | pascalcase>Actions>(
    mockReducerBuilder.build(),
    <FTName | pascalcase>State(),
    <FTName | pascalcase>Actions(),
    middleware: mockMiddlewares(),
  );

  // ignore: avoid_as
  final StoreProviderImpl storeProvider = di<StoreProvider>() as StoreProviderImpl;
  storeProvider.setStore(store);

  return store;
}
