// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'items_pizzas_allergens_allergens_id.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ItemsPizzasAllergensAllergensId
    extends ItemsPizzasAllergensAllergensId {
  @override
  final OneOf oneOf;

  factory _$ItemsPizzasAllergensAllergensId(
          [void Function(ItemsPizzasAllergensAllergensIdBuilder)? updates]) =>
      (ItemsPizzasAllergensAllergensIdBuilder()..update(updates))._build();

  _$ItemsPizzasAllergensAllergensId._({required this.oneOf}) : super._();
  @override
  ItemsPizzasAllergensAllergensId rebuild(
          void Function(ItemsPizzasAllergensAllergensIdBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ItemsPizzasAllergensAllergensIdBuilder toBuilder() =>
      ItemsPizzasAllergensAllergensIdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ItemsPizzasAllergensAllergensId && oneOf == other.oneOf;
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
    return (newBuiltValueToStringHelper(r'ItemsPizzasAllergensAllergensId')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class ItemsPizzasAllergensAllergensIdBuilder
    implements
        Builder<ItemsPizzasAllergensAllergensId,
            ItemsPizzasAllergensAllergensIdBuilder> {
  _$ItemsPizzasAllergensAllergensId? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  ItemsPizzasAllergensAllergensIdBuilder() {
    ItemsPizzasAllergensAllergensId._defaults(this);
  }

  ItemsPizzasAllergensAllergensIdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ItemsPizzasAllergensAllergensId other) {
    _$v = other as _$ItemsPizzasAllergensAllergensId;
  }

  @override
  void update(void Function(ItemsPizzasAllergensAllergensIdBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ItemsPizzasAllergensAllergensId build() => _build();

  _$ItemsPizzasAllergensAllergensId _build() {
    final _$result = _$v ??
        _$ItemsPizzasAllergensAllergensId._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'ItemsPizzasAllergensAllergensId', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
