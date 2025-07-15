// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'items_pizzas_restaurant.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ItemsPizzasRestaurant extends ItemsPizzasRestaurant {
  @override
  final OneOf oneOf;

  factory _$ItemsPizzasRestaurant(
          [void Function(ItemsPizzasRestaurantBuilder)? updates]) =>
      (ItemsPizzasRestaurantBuilder()..update(updates))._build();

  _$ItemsPizzasRestaurant._({required this.oneOf}) : super._();
  @override
  ItemsPizzasRestaurant rebuild(
          void Function(ItemsPizzasRestaurantBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ItemsPizzasRestaurantBuilder toBuilder() =>
      ItemsPizzasRestaurantBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ItemsPizzasRestaurant && oneOf == other.oneOf;
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
    return (newBuiltValueToStringHelper(r'ItemsPizzasRestaurant')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class ItemsPizzasRestaurantBuilder
    implements Builder<ItemsPizzasRestaurant, ItemsPizzasRestaurantBuilder> {
  _$ItemsPizzasRestaurant? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  ItemsPizzasRestaurantBuilder() {
    ItemsPizzasRestaurant._defaults(this);
  }

  ItemsPizzasRestaurantBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ItemsPizzasRestaurant other) {
    _$v = other as _$ItemsPizzasRestaurant;
  }

  @override
  void update(void Function(ItemsPizzasRestaurantBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ItemsPizzasRestaurant build() => _build();

  _$ItemsPizzasRestaurant _build() {
    final _$result = _$v ??
        _$ItemsPizzasRestaurant._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'ItemsPizzasRestaurant', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
