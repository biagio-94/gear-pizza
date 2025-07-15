// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'read_single_items_pizzas_id_parameter.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReadSingleItemsPizzasIdParameter
    extends ReadSingleItemsPizzasIdParameter {
  @override
  final OneOf oneOf;

  factory _$ReadSingleItemsPizzasIdParameter(
          [void Function(ReadSingleItemsPizzasIdParameterBuilder)? updates]) =>
      (ReadSingleItemsPizzasIdParameterBuilder()..update(updates))._build();

  _$ReadSingleItemsPizzasIdParameter._({required this.oneOf}) : super._();
  @override
  ReadSingleItemsPizzasIdParameter rebuild(
          void Function(ReadSingleItemsPizzasIdParameterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReadSingleItemsPizzasIdParameterBuilder toBuilder() =>
      ReadSingleItemsPizzasIdParameterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReadSingleItemsPizzasIdParameter && oneOf == other.oneOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, oneOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReadSingleItemsPizzasIdParameter')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class ReadSingleItemsPizzasIdParameterBuilder
    implements
        Builder<ReadSingleItemsPizzasIdParameter,
            ReadSingleItemsPizzasIdParameterBuilder> {
  _$ReadSingleItemsPizzasIdParameter? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  ReadSingleItemsPizzasIdParameterBuilder() {
    ReadSingleItemsPizzasIdParameter._defaults(this);
  }

  ReadSingleItemsPizzasIdParameterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReadSingleItemsPizzasIdParameter other) {
    _$v = other as _$ReadSingleItemsPizzasIdParameter;
  }

  @override
  void update(void Function(ReadSingleItemsPizzasIdParameterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReadSingleItemsPizzasIdParameter build() => _build();

  _$ReadSingleItemsPizzasIdParameter _build() {
    final _$result = _$v ??
        _$ReadSingleItemsPizzasIdParameter._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'ReadSingleItemsPizzasIdParameter', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
