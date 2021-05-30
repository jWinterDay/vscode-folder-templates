// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of '<FTName>_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$<FTName | pascalcase>StateTearOff {
  const _$<FTName | pascalcase>StateTearOff();

// ignore: unused_element
  _<FTName | pascalcase>State call({bool loading = false}) {
    return _<FTName | pascalcase>State(
      loading: loading,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $<FTName | pascalcase>State = _$<FTName | pascalcase>StateTearOff();

/// @nodoc
mixin _$<FTName | pascalcase>State {
  bool get loading;

  @JsonKey(ignore: true)
  $<FTName | pascalcase>StateCopyWith<<FTName | pascalcase>State> get copyWith;
}

/// @nodoc
abstract class $<FTName | pascalcase>StateCopyWith<$Res> {
  factory $<FTName | pascalcase>StateCopyWith(<FTName | pascalcase>State value, $Res Function(<FTName | pascalcase>State) then) =
      _$<FTName | pascalcase>StateCopyWithImpl<$Res>;
  $Res call({bool loading});
}

/// @nodoc
class _$<FTName | pascalcase>StateCopyWithImpl<$Res> implements $<FTName | pascalcase>StateCopyWith<$Res> {
  _$<FTName | pascalcase>StateCopyWithImpl(this._value, this._then);

  final <FTName | pascalcase>State _value;
  // ignore: unused_field
  final $Res Function(<FTName | pascalcase>State) _then;

  @override
  $Res call({
    Object loading = freezed,
  }) {
    return _then(_value.copyWith(
      loading: loading == freezed ? _value.loading : loading as bool,
    ));
  }
}

/// @nodoc
abstract class _$<FTName | pascalcase>StateCopyWith<$Res> implements $<FTName | pascalcase>StateCopyWith<$Res> {
  factory _$<FTName | pascalcase>StateCopyWith(_<FTName | pascalcase>State value, $Res Function(_<FTName | pascalcase>State) then) =
      __$<FTName | pascalcase>StateCopyWithImpl<$Res>;
  @override
  $Res call({bool loading});
}

/// @nodoc
class __$<FTName | pascalcase>StateCopyWithImpl<$Res> extends _$<FTName | pascalcase>StateCopyWithImpl<$Res>
    implements _$<FTName | pascalcase>StateCopyWith<$Res> {
  __$<FTName | pascalcase>StateCopyWithImpl(_<FTName | pascalcase>State _value, $Res Function(_<FTName | pascalcase>State) _then)
      : super(_value, (v) => _then(v as _<FTName | pascalcase>State));

  @override
  _<FTName | pascalcase>State get _value => super._value as _<FTName | pascalcase>State;

  @override
  $Res call({
    Object loading = freezed,
  }) {
    return _then(_<FTName | pascalcase>State(
      loading: loading == freezed ? _value.loading : loading as bool,
    ));
  }
}

/// @nodoc
class _$_<FTName | pascalcase>State extends _<FTName | pascalcase>State {
  const _$_<FTName | pascalcase>State({this.loading = false})
      : assert(loading != null),
        super._();

  @JsonKey(defaultValue: false)
  @override
  final bool loading;

  @override
  String toString() {
    return '<FTName | pascalcase>State(loading: $loading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _<FTName | pascalcase>State &&
            (identical(other.loading, loading) || const DeepCollectionEquality().equals(other.loading, loading)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(loading);

  @JsonKey(ignore: true)
  @override
  _$<FTName | pascalcase>StateCopyWith<_<FTName | pascalcase>State> get copyWith => __$<FTName | pascalcase>StateCopyWithImpl<_<FTName | pascalcase>State>(this, _$identity);
}

abstract class _<FTName | pascalcase>State extends <FTName | pascalcase>State {
  const _<FTName | pascalcase>State._() : super._();
  const factory _<FTName | pascalcase>State({bool loading}) = _$_<FTName | pascalcase>State;

  @override
  bool get loading;
  @override
  @JsonKey(ignore: true)
  _$<FTName | pascalcase>StateCopyWith<_<FTName | pascalcase>State> get copyWith;
}
