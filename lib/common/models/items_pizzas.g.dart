// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'items_pizzas.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ItemsPizzas extends ItemsPizzas {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final ItemsPizzasCoverImage? coverImage;
  @override
  final ItemsPizzasRestaurant? restaurant;
  @override
  final BuiltList<ItemsPizzasAllergensInner>? allergens;

  factory _$ItemsPizzas([void Function(ItemsPizzasBuilder)? updates]) =>
      (ItemsPizzasBuilder()..update(updates))._build();

  _$ItemsPizzas._(
      {this.id,
      this.name,
      this.description,
      this.coverImage,
      this.restaurant,
      this.allergens})
      : super._();
  @override
  ItemsPizzas rebuild(void Function(ItemsPizzasBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ItemsPizzasBuilder toBuilder() => ItemsPizzasBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ItemsPizzas &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        coverImage == other.coverImage &&
        restaurant == other.restaurant &&
        allergens == other.allergens;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, coverImage.hashCode);
    _$hash = $jc(_$hash, restaurant.hashCode);
    _$hash = $jc(_$hash, allergens.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ItemsPizzas')
          ..add('id', id)
          ..add('name', name)
          ..add('description', description)
          ..add('coverImage', coverImage)
          ..add('restaurant', restaurant)
          ..add('allergens', allergens))
        .toString();
  }
}

class ItemsPizzasBuilder implements Builder<ItemsPizzas, ItemsPizzasBuilder> {
  _$ItemsPizzas? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  ItemsPizzasCoverImageBuilder? _coverImage;
  ItemsPizzasCoverImageBuilder get coverImage =>
      _$this._coverImage ??= ItemsPizzasCoverImageBuilder();
  set coverImage(ItemsPizzasCoverImageBuilder? coverImage) =>
      _$this._coverImage = coverImage;

  ItemsPizzasRestaurantBuilder? _restaurant;
  ItemsPizzasRestaurantBuilder get restaurant =>
      _$this._restaurant ??= ItemsPizzasRestaurantBuilder();
  set restaurant(ItemsPizzasRestaurantBuilder? restaurant) =>
      _$this._restaurant = restaurant;

  ListBuilder<ItemsPizzasAllergensInner>? _allergens;
  ListBuilder<ItemsPizzasAllergensInner> get allergens =>
      _$this._allergens ??= ListBuilder<ItemsPizzasAllergensInner>();
  set allergens(ListBuilder<ItemsPizzasAllergensInner>? allergens) =>
      _$this._allergens = allergens;

  ItemsPizzasBuilder() {
    ItemsPizzas._defaults(this);
  }

  ItemsPizzasBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _description = $v.description;
      _coverImage = $v.coverImage?.toBuilder();
      _restaurant = $v.restaurant?.toBuilder();
      _allergens = $v.allergens?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ItemsPizzas other) {
    _$v = other as _$ItemsPizzas;
  }

  @override
  void update(void Function(ItemsPizzasBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ItemsPizzas build() => _build();

  _$ItemsPizzas _build() {
    _$ItemsPizzas _$result;
    try {
      _$result = _$v ??
          _$ItemsPizzas._(
            id: id,
            name: name,
            description: description,
            coverImage: _coverImage?.build(),
            restaurant: _restaurant?.build(),
            allergens: _allergens?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'coverImage';
        _coverImage?.build();
        _$failedField = 'restaurant';
        _restaurant?.build();
        _$failedField = 'allergens';
        _allergens?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ItemsPizzas', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
