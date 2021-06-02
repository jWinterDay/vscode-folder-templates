// GENERATED CODE - DO NOT MODIFY BY HAND

part of '<FTName>_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<<FTName | pascalcase>State> _$<FTName | camelcase>StateSerializer = new _$<FTName | pascalcase>StateSerializer();

class _$<FTName | pascalcase>StateSerializer implements StructuredSerializer<<FTName | pascalcase>State> {
  @override
  final Iterable<Type> types = const [<FTName | pascalcase>State, _$<FTName | pascalcase>State];
  @override
  final String wireName = '<FTName | pascalcase>State';

  @override
  Iterable<Object?> serialize(Serializers serializers, <FTName | pascalcase>State object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'loading',
      serializers.serialize(object.loading, specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  <FTName | pascalcase>State deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new <FTName | pascalcase>StateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'loading':
          result.loading = serializers.deserialize(value, specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$<FTName | pascalcase>State extends <FTName | pascalcase>State {
  @override
  final bool loading;

  factory _$<FTName | pascalcase>State([void Function(<FTName | pascalcase>StateBuilder)? updates]) =>
      (new <FTName | pascalcase>StateBuilder()..update(updates)).build();

  _$<FTName | pascalcase>State._({required this.loading}) : super._() {
    BuiltValueNullFieldError.checkNotNull(loading, '<FTName | pascalcase>State', 'loading');
  }

  @override
  <FTName | pascalcase>State rebuild(void Function(<FTName | pascalcase>StateBuilder) updates) => (toBuilder()..update(updates)).build();

  @override
  <FTName | pascalcase>StateBuilder toBuilder() => new <FTName | pascalcase>StateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is <FTName | pascalcase>State && loading == other.loading;
  }

  @override
  int get hashCode {
    return $jf($jc(0, loading.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('<FTName | pascalcase>State')..add('loading', loading)).toString();
  }
}

class <FTName | pascalcase>StateBuilder implements Builder<<FTName | pascalcase>State, <FTName | pascalcase>StateBuilder> {
  _$<FTName | pascalcase>State? _$v;

  bool? _loading;
  bool? get loading => _$this._loading;
  set loading(bool? loading) => _$this._loading = loading;

  <FTName | pascalcase>StateBuilder() {
    <FTName | pascalcase>State._initializeBuilder(this);
  }

  <FTName | pascalcase>StateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _loading = $v.loading;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(<FTName | pascalcase>State other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$<FTName | pascalcase>State;
  }

  @override
  void update(void Function(<FTName | pascalcase>StateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$<FTName | pascalcase>State build() {
    final _$result =
        _$v ?? new _$<FTName | pascalcase>State._(loading: BuiltValueNullFieldError.checkNotNull(loading, '<FTName | pascalcase>State', 'loading'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
