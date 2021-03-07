import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:<FTName>/src/domain/state/<FTName>_state.dart';

part '<FTName>_serializers.g.dart';

@SerializersFor(<Type>[
  <FTName | pascalcase>State,
])
final Serializers <FTName | camelcase>Serializers = (_$<FTName | camelcase>Serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(
          BuiltList,
          <FullType>[FullType(int)],
        ),
        () => ListBuilder<int>(),
      )
      ..addPlugin(
        StandardJsonPlugin(),
      ))
    .build();