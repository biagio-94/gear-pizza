// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'items_restaurants.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ItemsRestaurants extends ItemsRestaurants {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final ItemsPizzasCoverImage? coverImage;
  @override
  final FilesModifiedBy? owner;
  @override
  final BuiltList<ItemsRestaurantsPizzasInner>? pizzas;

  factory _$ItemsRestaurants(
          [void Function(ItemsRestaurantsBuilder)? updates]) =>
      (ItemsRestaurantsBuilder()..update(updates))._build();

  _$ItemsRestaurants._(
      {this.id, this.name, this.coverImage, this.owner, this.pizzas})
      : super._();
  @override
  ItemsRestaurants rebuild(void Function(ItemsRestaurantsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ItemsRestaurantsBuilder toBuilder() =>
      ItemsRestaurantsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ItemsRestaurants &&
        id == other.id &&
        name == other.name &&
        coverImage == other.coverImage &&
        owner == other.owner &&
        pizzas == other.pizzas;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, coverImage.hashCode);
    _$hash = $jc(_$hash, owner.hashCode);
    _$hash = $jc(_$hash, pizzas.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ItemsRestaurants')
          ..add('id', id)
          ..add('name', name)
          ..add('coverImage', coverImage)
          ..add('owner', owner)
          ..add('pizzas', pizzas))
        .toString();
  }
}

class ItemsRestaurantsBuilder
    implements Builder<ItemsRestaurants, ItemsRestaurantsBuilder> {
  _$ItemsRestaurants? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ItemsPizzasCoverImageBuilder? _coverImage;
  ItemsPizzasCoverImageBuilder get coverImage =>
      _$this._coverImage ??= ItemsPizzasCoverImageBuilder();
  set coverImage(ItemsPizzasCoverImageBuilder? coverImage) =>
      _$this._coverImage = coverImage;

  FilesModifiedByBuilder? _owner;
  FilesModifiedByBuilder get owner =>
      _$this._owner ??= FilesModifiedByBuilder();
  set owner(FilesModifiedByBuilder? owner) => _$this._owner = owner;

  ListBuilder<ItemsRestaurantsPizzasInner>? _pizzas;
  ListBuilder<ItemsRestaurantsPizzasInner> get pizzas =>
      _$this._pizzas ??= ListBuilder<ItemsRestaurantsPizzasInner>();
  set pizzas(ListBuilder<ItemsRestaurantsPizzasInner>? pizzas) =>
      _$this._pizzas = pizzas;

  ItemsRestaurantsBuilder() {
    ItemsRestaurants._defaults(this);
  }

  ItemsRestaurantsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _coverImage = $v.coverImage?.toBuilder();
      _owner = $v.owner?.toBuilder();
      _pizzas = $v.pizzas?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ItemsRestaurants other) {
    _$v = other as _$ItemsRestaurants;
  }

  @override
  void update(void Function(ItemsRestaurantsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ItemsRestaurants build() => _build();

  _$ItemsRestaurants _build() {
    _$ItemsRestaurants _$result;
    try {
      _$result = _$v ??
          _$ItemsRestaurants._(
            id: id,
            name: name,
            coverImage: _coverImage?.build(),
            owner: _owner?.build(),
            pizzas: _pizzas?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'coverImage';
        _coverImage?.build();
        _$failedField = 'owner';
        _owner?.build();
        _$failedField = 'pizzas';
        _pizzas?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ItemsRestaurants', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
