// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'items_restaurants_pizzas_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ItemsRestaurantsPizzasInner extends ItemsRestaurantsPizzasInner {
  @override
  final OneOf oneOf;

  factory _$ItemsRestaurantsPizzasInner(
          [void Function(ItemsRestaurantsPizzasInnerBuilder)? updates]) =>
      (ItemsRestaurantsPizzasInnerBuilder()..update(updates))._build();

  _$ItemsRestaurantsPizzasInner._({required this.oneOf}) : super._();
  @override
  ItemsRestaurantsPizzasInner rebuild(
          void Function(ItemsRestaurantsPizzasInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ItemsRestaurantsPizzasInnerBuilder toBuilder() =>
      ItemsRestaurantsPizzasInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ItemsRestaurantsPizzasInner && oneOf == other.oneOf;
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
    return (newBuiltValueToStringHelper(r'ItemsRestaurantsPizzasInner')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class ItemsRestaurantsPizzasInnerBuilder
    implements
        Builder<ItemsRestaurantsPizzasInner,
            ItemsRestaurantsPizzasInnerBuilder> {
  _$ItemsRestaurantsPizzasInner? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  ItemsRestaurantsPizzasInnerBuilder() {
    ItemsRestaurantsPizzasInner._defaults(this);
  }

  ItemsRestaurantsPizzasInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ItemsRestaurantsPizzasInner other) {
    _$v = other as _$ItemsRestaurantsPizzasInner;
  }

  @override
  void update(void Function(ItemsRestaurantsPizzasInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ItemsRestaurantsPizzasInner build() => _build();

  _$ItemsRestaurantsPizzasInner _build() {
    final _$result = _$v ??
        _$ItemsRestaurantsPizzasInner._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'ItemsRestaurantsPizzasInner', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
