

// ignore_for_file: import_of_legacy_library_into_null_safe
import 'package:dioc/dioc.dart';
import 'package:neo_network/neo_network.dart';

import 'package:<FTName>/src/services/<FTName>_service.dart';

class <FTName | pascalcase>ServiceImpl extends <FTName | pascalcase>Service {
  <FTName | pascalcase>ServiceImpl(
    this.neoApi,
  );

  @Inject(mode: InjectMode.singleton)
  final NeoApi neoApi;
}
