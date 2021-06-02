import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part '<FTName>_state.g.dart';

abstract class <FTName | pascalcase>State implements Built<<FTName | pascalcase>State, <FTName | pascalcase>StateBuilder> {
  <FTName | pascalcase>State._();

  factory <FTName | pascalcase>State([Function(<FTName | pascalcase>StateBuilder builder)? updates]) {
    return _$<FTName | pascalcase>State((<FTName | pascalcase>StateBuilder builder) {
      _initializeBuilder(builder);

      builder.update(updates);
    });
  }

  static void _initializeBuilder(<FTName | pascalcase>StateBuilder b) => b..loading = false;

  bool get loading;

  static Serializer<<FTName | pascalcase>State> get serializer => _$<FTName | camelcase>StateSerializer;
}
