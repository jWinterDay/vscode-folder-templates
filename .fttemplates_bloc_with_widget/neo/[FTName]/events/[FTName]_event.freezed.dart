// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of '<FTName>_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$<FTName | pascalcase>EventTearOff {
  const _$<FTName | pascalcase>EventTearOff();

// ignore: unused_element
  _Start start() {
    return const _Start();
  }

// ignore: unused_element
  _ChangeLoading changeLoading({bool value}) {
    return _ChangeLoading(
      value: value,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $<FTName | pascalcase>Event = _$<FTName | pascalcase>EventTearOff();

/// @nodoc
mixin _$<FTName | pascalcase>Event {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult start(),
    @required TResult changeLoading(bool value),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult start(),
    TResult changeLoading(bool value),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult start(_Start value),
    @required TResult changeLoading(_ChangeLoading value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult start(_Start value),
    TResult changeLoading(_ChangeLoading value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $<FTName | pascalcase>EventCopyWith<$Res> {
  factory $<FTName | pascalcase>EventCopyWith(<FTName | pascalcase>Event value, $Res Function(<FTName | pascalcase>Event) then) =
      _$<FTName | pascalcase>EventCopyWithImpl<$Res>;
}

/// @nodoc
class _$<FTName | pascalcase>EventCopyWithImpl<$Res> implements $<FTName | pascalcase>EventCopyWith<$Res> {
  _$<FTName | pascalcase>EventCopyWithImpl(this._value, this._then);

  final <FTName | pascalcase>Event _value;
  // ignore: unused_field
  final $Res Function(<FTName | pascalcase>Event) _then;
}

/// @nodoc
abstract class _$StartCopyWith<$Res> {
  factory _$StartCopyWith(_Start value, $Res Function(_Start) then) = __$StartCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartCopyWithImpl<$Res> extends _$<FTName | pascalcase>EventCopyWithImpl<$Res> implements _$StartCopyWith<$Res> {
  __$StartCopyWithImpl(_Start _value, $Res Function(_Start) _then) : super(_value, (v) => _then(v as _Start));

  @override
  _Start get _value => super._value as _Start;
}

/// @nodoc
class _$_Start implements _Start {
  const _$_Start();

  @override
  String toString() {
    return '<FTName | pascalcase>Event.start()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Start);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult start(),
    @required TResult changeLoading(bool value),
  }) {
    assert(start != null);
    assert(changeLoading != null);
    return start();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult start(),
    TResult changeLoading(bool value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (start != null) {
      return start();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult start(_Start value),
    @required TResult changeLoading(_ChangeLoading value),
  }) {
    assert(start != null);
    assert(changeLoading != null);
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult start(_Start value),
    TResult changeLoading(_ChangeLoading value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class _Start implements <FTName | pascalcase>Event {
  const factory _Start() = _$_Start;
}

/// @nodoc
abstract class _$ChangeLoadingCopyWith<$Res> {
  factory _$ChangeLoadingCopyWith(_ChangeLoading value, $Res Function(_ChangeLoading) then) =
      __$ChangeLoadingCopyWithImpl<$Res>;
  $Res call({bool value});
}

/// @nodoc
class __$ChangeLoadingCopyWithImpl<$Res> extends _$<FTName | pascalcase>EventCopyWithImpl<$Res>
    implements _$ChangeLoadingCopyWith<$Res> {
  __$ChangeLoadingCopyWithImpl(_ChangeLoading _value, $Res Function(_ChangeLoading) _then)
      : super(_value, (v) => _then(v as _ChangeLoading));

  @override
  _ChangeLoading get _value => super._value as _ChangeLoading;

  @override
  $Res call({
    Object value = freezed,
  }) {
    return _then(_ChangeLoading(
      value: value == freezed ? _value.value : value as bool,
    ));
  }
}

/// @nodoc
class _$_ChangeLoading implements _ChangeLoading {
  const _$_ChangeLoading({this.value});

  @override
  final bool value;

  @override
  String toString() {
    return '<FTName | pascalcase>Event.changeLoading(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeLoading &&
            (identical(other.value, value) || const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$ChangeLoadingCopyWith<_ChangeLoading> get copyWith =>
      __$ChangeLoadingCopyWithImpl<_ChangeLoading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult start(),
    @required TResult changeLoading(bool value),
  }) {
    assert(start != null);
    assert(changeLoading != null);
    return changeLoading(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult start(),
    TResult changeLoading(bool value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeLoading != null) {
      return changeLoading(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult start(_Start value),
    @required TResult changeLoading(_ChangeLoading value),
  }) {
    assert(start != null);
    assert(changeLoading != null);
    return changeLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult start(_Start value),
    TResult changeLoading(_ChangeLoading value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeLoading != null) {
      return changeLoading(this);
    }
    return orElse();
  }
}

abstract class _ChangeLoading implements <FTName | pascalcase>Event {
  const factory _ChangeLoading({bool value}) = _$_ChangeLoading;

  bool get value;
  @JsonKey(ignore: true)
  _$ChangeLoadingCopyWith<_ChangeLoading> get copyWith;
}
