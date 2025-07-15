// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'items_pizzas_allergens_pizzas_id.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ItemsPizzasAllergensPizzasId extends ItemsPizzasAllergensPizzasId {
  @override
  final OneOf oneOf;

  factory _$ItemsPizzasAllergensPizzasId(
          [void Function(ItemsPizzasAllergensPizzasIdBuilder)? updates]) =>
      (ItemsPizzasAllergensPizzasIdBuilder()..update(updates))._build();

  _$ItemsPizzasAllergensPizzasId._({required this.oneOf}) : super._();
  @override
  ItemsPizzasAllergensPizzasId rebuild(
          void Function(ItemsPizzasAllergensPizzasIdBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ItemsPizzasAllergensPizzasIdBuilder toBuilder() =>
      ItemsPizzasAllergensPizzasIdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ItemsPizzasAllergensPizzasId && oneOf == other.oneOf;
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
    return (newBuiltValueToStringHelper(r'ItemsPizzasAllergensPizzasId')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class ItemsPizzasAllergensPizzasIdBuilder
    implements
        Builder<ItemsPizzasAllergensPizzasId,
            ItemsPizzasAllergensPizzasIdBuilder> {
  _$ItemsPizzasAllergensPizzasId? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  ItemsPizzasAllergensPizzasIdBuilder() {
    ItemsPizzasAllergensPizzasId._defaults(this);
  }

  ItemsPizzasAllergensPizzasIdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ItemsPizzasAllergensPizzasId other) {
    _$v = other as _$ItemsPizzasAllergensPizzasId;
  }

  @override
  void update(void Function(ItemsPizzasAllergensPizzasIdBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ItemsPizzasAllergensPizzasId build() => _build();

  _$ItemsPizzasAllergensPizzasId _build() {
    final _$result = _$v ??
        _$ItemsPizzasAllergensPizzasId._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'ItemsPizzasAllergensPizzasId', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
