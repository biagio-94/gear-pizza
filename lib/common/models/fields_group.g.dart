// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fields_group.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FieldsGroup extends FieldsGroup {
  @override
  final OneOf oneOf;

  factory _$FieldsGroup([void Function(FieldsGroupBuilder)? updates]) =>
      (FieldsGroupBuilder()..update(updates))._build();

  _$FieldsGroup._({required this.oneOf}) : super._();
  @override
  FieldsGroup rebuild(void Function(FieldsGroupBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FieldsGroupBuilder toBuilder() => FieldsGroupBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FieldsGroup && oneOf == other.oneOf;
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
    return (newBuiltValueToStringHelper(r'FieldsGroup')..add('oneOf', oneOf))
        .toString();
  }
}

class FieldsGroupBuilder implements Builder<FieldsGroup, FieldsGroupBuilder> {
  _$FieldsGroup? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  FieldsGroupBuilder() {
    FieldsGroup._defaults(this);
  }

  FieldsGroupBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FieldsGroup other) {
    _$v = other as _$FieldsGroup;
  }

  @override
  void update(void Function(FieldsGroupBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FieldsGroup build() => _build();

  _$FieldsGroup _build() {
    final _$result = _$v ??
        _$FieldsGroup._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'FieldsGroup', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
