// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'items_orders.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ItemsOrders extends ItemsOrders {
  @override
  final int? id;
  @override
  final ItemsPizzasRestaurant? restaurant;
  @override
  final ItemsOrdersCustomer? customer;
  @override
  final String? address;
  @override
  final String? status;
  @override
  final ItemsPizzasCoverImage? helpingImage;
  @override
  final BuiltList<ItemsOrdersPizzasInner>? pizzas;

  factory _$ItemsOrders([void Function(ItemsOrdersBuilder)? updates]) =>
      (ItemsOrdersBuilder()..update(updates))._build();

  _$ItemsOrders._(
      {this.id,
      this.restaurant,
      this.customer,
      this.address,
      this.status,
      this.helpingImage,
      this.pizzas})
      : super._();
  @override
  ItemsOrders rebuild(void Function(ItemsOrdersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ItemsOrdersBuilder toBuilder() => ItemsOrdersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ItemsOrders &&
        id == other.id &&
        restaurant == other.restaurant &&
        customer == other.customer &&
        address == other.address &&
        status == other.status &&
        helpingImage == other.helpingImage &&
        pizzas == other.pizzas;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, restaurant.hashCode);
    _$hash = $jc(_$hash, customer.hashCode);
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, helpingImage.hashCode);
    _$hash = $jc(_$hash, pizzas.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ItemsOrders')
          ..add('id', id)
          ..add('restaurant', restaurant)
          ..add('customer', customer)
          ..add('address', address)
          ..add('status', status)
          ..add('helpingImage', helpingImage)
          ..add('pizzas', pizzas))
        .toString();
  }
}

class ItemsOrdersBuilder implements Builder<ItemsOrders, ItemsOrdersBuilder> {
  _$ItemsOrders? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  ItemsPizzasRestaurantBuilder? _restaurant;
  ItemsPizzasRestaurantBuilder get restaurant =>
      _$this._restaurant ??= ItemsPizzasRestaurantBuilder();
  set restaurant(ItemsPizzasRestaurantBuilder? restaurant) =>
      _$this._restaurant = restaurant;

  ItemsOrdersCustomerBuilder? _customer;
  ItemsOrdersCustomerBuilder get customer =>
      _$this._customer ??= ItemsOrdersCustomerBuilder();
  set customer(ItemsOrdersCustomerBuilder? customer) =>
      _$this._customer = customer;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  ItemsPizzasCoverImageBuilder? _helpingImage;
  ItemsPizzasCoverImageBuilder get helpingImage =>
      _$this._helpingImage ??= ItemsPizzasCoverImageBuilder();
  set helpingImage(ItemsPizzasCoverImageBuilder? helpingImage) =>
      _$this._helpingImage = helpingImage;

  ListBuilder<ItemsOrdersPizzasInner>? _pizzas;
  ListBuilder<ItemsOrdersPizzasInner> get pizzas =>
      _$this._pizzas ??= ListBuilder<ItemsOrdersPizzasInner>();
  set pizzas(ListBuilder<ItemsOrdersPizzasInner>? pizzas) =>
      _$this._pizzas = pizzas;

  ItemsOrdersBuilder() {
    ItemsOrders._defaults(this);
  }

  ItemsOrdersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _restaurant = $v.restaurant?.toBuilder();
      _customer = $v.customer?.toBuilder();
      _address = $v.address;
      _status = $v.status;
      _helpingImage = $v.helpingImage?.toBuilder();
      _pizzas = $v.pizzas?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ItemsOrders other) {
    _$v = other as _$ItemsOrders;
  }

  @override
  void update(void Function(ItemsOrdersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ItemsOrders build() => _build();

  _$ItemsOrders _build() {
    _$ItemsOrders _$result;
    try {
      _$result = _$v ??
          _$ItemsOrders._(
            id: id,
            restaurant: _restaurant?.build(),
            customer: _customer?.build(),
            address: address,
            status: status,
            helpingImage: _helpingImage?.build(),
            pizzas: _pizzas?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'restaurant';
        _restaurant?.build();
        _$failedField = 'customer';
        _customer?.build();

        _$failedField = 'helpingImage';
        _helpingImage?.build();
        _$failedField = 'pizzas';
        _pizzas?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ItemsOrders', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
