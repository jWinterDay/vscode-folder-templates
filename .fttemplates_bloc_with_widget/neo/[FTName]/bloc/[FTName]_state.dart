import 'package:freezed_annotation/freezed_annotation.dart';

part '<FTName>_state.freezed.dart';

@freezed
abstract class <FTName | pascalcase>State with _$<FTName | pascalcase>State {
  const <FTName | pascalcase>State._();

  const factory <FTName | pascalcase>State({
    @Default(false) bool loading,
  }) = _<FTName | pascalcase>State;
}
