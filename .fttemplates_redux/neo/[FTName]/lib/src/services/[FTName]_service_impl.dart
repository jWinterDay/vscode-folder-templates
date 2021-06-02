import 'package:neo_network/neo_network.dart';

import 'package:<FTName>/src/services/<FTName>_service.dart';

class <FTName | pascalcase>ServiceImpl extends <FTName | pascalcase>Service {
  <FTName | pascalcase>ServiceImpl(
    this.neoApi,
  );

  final NeoApi? neoApi;
}
