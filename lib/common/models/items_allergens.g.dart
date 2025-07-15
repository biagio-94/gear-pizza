// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'items_allergens.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ItemsAllergens extends ItemsAllergens {
  @override
  final int? id;
  @override
  final String? name;

  factory _$ItemsAllergens([void Function(ItemsAllergensBuilder)? updates]) =>
      (ItemsAllergensBuilder()..update(updates))._build();

  _$ItemsAllergens._({this.id, this.name}) : super._();
  @override
  ItemsAllergens rebuild(void Function(ItemsAllergensBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ItemsAllergensBuilder toBuilder() => ItemsAllergensBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ItemsAllergens && id == other.id && name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ItemsAllergens')
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class ItemsAllergensBuilder
    implements Builder<ItemsAllergens, ItemsAllergensBuilder> {
  _$ItemsAllergens? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ItemsAllergensBuilder() {
    ItemsAllergens._defaults(this);
  }

  ItemsAllergensBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ItemsAllergens other) {
    _$v = other as _$ItemsAllergens;
  }

  @override
  void update(void Function(ItemsAllergensBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ItemsAllergens build() => _build();

  _$ItemsAllergens _build() {
    final _$result = _$v ??
        _$ItemsAllergens._(
          id: id,
          name: name,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
