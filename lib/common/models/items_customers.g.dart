// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'items_customers.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ItemsCustomers extends ItemsCustomers {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? emailAddress;
  @override
  final ItemsPizzasRestaurant? restaurant;

  factory _$ItemsCustomers([void Function(ItemsCustomersBuilder)? updates]) =>
      (ItemsCustomersBuilder()..update(updates))._build();

  _$ItemsCustomers._({this.id, this.name, this.emailAddress, this.restaurant})
      : super._();
  @override
  ItemsCustomers rebuild(void Function(ItemsCustomersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ItemsCustomersBuilder toBuilder() => ItemsCustomersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ItemsCustomers &&
        id == other.id &&
        name == other.name &&
        emailAddress == other.emailAddress &&
        restaurant == other.restaurant;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, emailAddress.hashCode);
    _$hash = $jc(_$hash, restaurant.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ItemsCustomers')
          ..add('id', id)
          ..add('name', name)
          ..add('emailAddress', emailAddress)
          ..add('restaurant', restaurant))
        .toString();
  }
}

class ItemsCustomersBuilder
    implements Builder<ItemsCustomers, ItemsCustomersBuilder> {
  _$ItemsCustomers? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _emailAddress;
  String? get emailAddress => _$this._emailAddress;
  set emailAddress(String? emailAddress) => _$this._emailAddress = emailAddress;

  ItemsPizzasRestaurantBuilder? _restaurant;
  ItemsPizzasRestaurantBuilder get restaurant =>
      _$this._restaurant ??= ItemsPizzasRestaurantBuilder();
  set restaurant(ItemsPizzasRestaurantBuilder? restaurant) =>
      _$this._restaurant = restaurant;

  ItemsCustomersBuilder() {
    ItemsCustomers._defaults(this);
  }

  ItemsCustomersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _emailAddress = $v.emailAddress;
      _restaurant = $v.restaurant?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ItemsCustomers other) {
    _$v = other as _$ItemsCustomers;
  }

  @override
  void update(void Function(ItemsCustomersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ItemsCustomers build() => _build();

  _$ItemsCustomers _build() {
    _$ItemsCustomers _$result;
    try {
      _$result = _$v ??
          _$ItemsCustomers._(
            id: id,
            name: name,
            emailAddress: emailAddress,
            restaurant: _restaurant?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'restaurant';
        _restaurant?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ItemsCustomers', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
