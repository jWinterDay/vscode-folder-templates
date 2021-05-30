import 'package:freezed_annotation/freezed_annotation.dart';

part '<FTName>_event.freezed.dart';

@freezed
abstract class <FTName | pascalcase>Event with _$<FTName | pascalcase>Event {
  const factory <FTName | pascalcase>Event.start() = _Start;

  const factory <FTName | pascalcase>Event.changeLoading({bool value}) = _ChangeLoading;
}
