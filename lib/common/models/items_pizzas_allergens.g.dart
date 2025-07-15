// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'items_pizzas_allergens.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ItemsPizzasAllergens extends ItemsPizzasAllergens {
  @override
  final int? id;
  @override
  final ItemsPizzasAllergensPizzasId? pizzasId;
  @override
  final ItemsPizzasAllergensAllergensId? allergensId;

  factory _$ItemsPizzasAllergens(
          [void Function(ItemsPizzasAllergensBuilder)? updates]) =>
      (ItemsPizzasAllergensBuilder()..update(updates))._build();

  _$ItemsPizzasAllergens._({this.id, this.pizzasId, this.allergensId})
      : super._();
  @override
  ItemsPizzasAllergens rebuild(
          void Function(ItemsPizzasAllergensBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ItemsPizzasAllergensBuilder toBuilder() =>
      ItemsPizzasAllergensBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ItemsPizzasAllergens &&
        id == other.id &&
        pizzasId == other.pizzasId &&
        allergensId == other.allergensId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, pizzasId.hashCode);
    _$hash = $jc(_$hash, allergensId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ItemsPizzasAllergens')
          ..add('id', id)
          ..add('pizzasId', pizzasId)
          ..add('allergensId', allergensId))
        .toString();
  }
}

class ItemsPizzasAllergensBuilder
    implements Builder<ItemsPizzasAllergens, ItemsPizzasAllergensBuilder> {
  _$ItemsPizzasAllergens? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  ItemsPizzasAllergensPizzasIdBuilder? _pizzasId;
  ItemsPizzasAllergensPizzasIdBuilder get pizzasId =>
      _$this._pizzasId ??= ItemsPizzasAllergensPizzasIdBuilder();
  set pizzasId(ItemsPizzasAllergensPizzasIdBuilder? pizzasId) =>
      _$this._pizzasId = pizzasId;

  ItemsPizzasAllergensAllergensIdBuilder? _allergensId;
  ItemsPizzasAllergensAllergensIdBuilder get allergensId =>
      _$this._allergensId ??= ItemsPizzasAllergensAllergensIdBuilder();
  set allergensId(ItemsPizzasAllergensAllergensIdBuilder? allergensId) =>
      _$this._allergensId = allergensId;

  ItemsPizzasAllergensBuilder() {
    ItemsPizzasAllergens._defaults(this);
  }

  ItemsPizzasAllergensBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _pizzasId = $v.pizzasId?.toBuilder();
      _allergensId = $v.allergensId?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ItemsPizzasAllergens other) {
    _$v = other as _$ItemsPizzasAllergens;
  }

  @override
  void update(void Function(ItemsPizzasAllergensBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ItemsPizzasAllergens build() => _build();

  _$ItemsPizzasAllergens _build() {
    _$ItemsPizzasAllergens _$result;
    try {
      _$result = _$v ??
          _$ItemsPizzasAllergens._(
            id: id,
            pizzasId: _pizzasId?.build(),
            allergensId: _allergensId?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'pizzasId';
        _pizzasId?.build();
        _$failedField = 'allergensId';
        _allergensId?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ItemsPizzasAllergens', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
