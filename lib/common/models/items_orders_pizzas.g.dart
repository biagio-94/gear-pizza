// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'items_orders_pizzas.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ItemsOrdersPizzas extends ItemsOrdersPizzas {
  @override
  final int? id;
  @override
  final ItemsOrdersPizzasOrdersId? ordersId;
  @override
  final ItemsPizzasAllergensPizzasId? pizzasId;

  factory _$ItemsOrdersPizzas(
          [void Function(ItemsOrdersPizzasBuilder)? updates]) =>
      (ItemsOrdersPizzasBuilder()..update(updates))._build();

  _$ItemsOrdersPizzas._({this.id, this.ordersId, this.pizzasId}) : super._();
  @override
  ItemsOrdersPizzas rebuild(void Function(ItemsOrdersPizzasBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ItemsOrdersPizzasBuilder toBuilder() =>
      ItemsOrdersPizzasBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ItemsOrdersPizzas &&
        id == other.id &&
        ordersId == other.ordersId &&
        pizzasId == other.pizzasId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, ordersId.hashCode);
    _$hash = $jc(_$hash, pizzasId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ItemsOrdersPizzas')
          ..add('id', id)
          ..add('ordersId', ordersId)
          ..add('pizzasId', pizzasId))
        .toString();
  }
}

class ItemsOrdersPizzasBuilder
    implements Builder<ItemsOrdersPizzas, ItemsOrdersPizzasBuilder> {
  _$ItemsOrdersPizzas? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  ItemsOrdersPizzasOrdersIdBuilder? _ordersId;
  ItemsOrdersPizzasOrdersIdBuilder get ordersId =>
      _$this._ordersId ??= ItemsOrdersPizzasOrdersIdBuilder();
  set ordersId(ItemsOrdersPizzasOrdersIdBuilder? ordersId) =>
      _$this._ordersId = ordersId;

  ItemsPizzasAllergensPizzasIdBuilder? _pizzasId;
  ItemsPizzasAllergensPizzasIdBuilder get pizzasId =>
      _$this._pizzasId ??= ItemsPizzasAllergensPizzasIdBuilder();
  set pizzasId(ItemsPizzasAllergensPizzasIdBuilder? pizzasId) =>
      _$this._pizzasId = pizzasId;

  ItemsOrdersPizzasBuilder() {
    ItemsOrdersPizzas._defaults(this);
  }

  ItemsOrdersPizzasBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _ordersId = $v.ordersId?.toBuilder();
      _pizzasId = $v.pizzasId?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ItemsOrdersPizzas other) {
    _$v = other as _$ItemsOrdersPizzas;
  }

  @override
  void update(void Function(ItemsOrdersPizzasBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ItemsOrdersPizzas build() => _build();

  _$ItemsOrdersPizzas _build() {
    _$ItemsOrdersPizzas _$result;
    try {
      _$result = _$v ??
          _$ItemsOrdersPizzas._(
            id: id,
            ordersId: _ordersId?.build(),
            pizzasId: _pizzasId?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ordersId';
        _ordersId?.build();
        _$failedField = 'pizzasId';
        _pizzasId?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ItemsOrdersPizzas', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
