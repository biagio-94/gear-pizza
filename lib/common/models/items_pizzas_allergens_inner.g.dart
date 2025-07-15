// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'items_pizzas_allergens_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ItemsPizzasAllergensInner extends ItemsPizzasAllergensInner {
  @override
  final OneOf oneOf;

  factory _$ItemsPizzasAllergensInner(
          [void Function(ItemsPizzasAllergensInnerBuilder)? updates]) =>
      (ItemsPizzasAllergensInnerBuilder()..update(updates))._build();

  _$ItemsPizzasAllergensInner._({required this.oneOf}) : super._();
  @override
  ItemsPizzasAllergensInner rebuild(
          void Function(ItemsPizzasAllergensInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ItemsPizzasAllergensInnerBuilder toBuilder() =>
      ItemsPizzasAllergensInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ItemsPizzasAllergensInner && oneOf == other.oneOf;
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
    return (newBuiltValueToStringHelper(r'ItemsPizzasAllergensInner')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class ItemsPizzasAllergensInnerBuilder
    implements
        Builder<ItemsPizzasAllergensInner, ItemsPizzasAllergensInnerBuilder> {
  _$ItemsPizzasAllergensInner? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  ItemsPizzasAllergensInnerBuilder() {
    ItemsPizzasAllergensInner._defaults(this);
  }

  ItemsPizzasAllergensInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ItemsPizzasAllergensInner other) {
    _$v = other as _$ItemsPizzasAllergensInner;
  }

  @override
  void update(void Function(ItemsPizzasAllergensInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ItemsPizzasAllergensInner build() => _build();

  _$ItemsPizzasAllergensInner _build() {
    final _$result = _$v ??
        _$ItemsPizzasAllergensInner._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'ItemsPizzasAllergensInner', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
