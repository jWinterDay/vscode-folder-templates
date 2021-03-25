import 'package:dioc/dioc.dart';
// import 'package:models/config.dart';

part 'mock_bootstrap.g.dart';

@bootstrapper
abstract class MockBootstrap extends Bootstrapper {
  // @Provide(AppConfig, AppConfig)
  Container production();
}
