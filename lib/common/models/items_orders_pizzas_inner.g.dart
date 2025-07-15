// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'items_orders_pizzas_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ItemsOrdersPizzasInner extends ItemsOrdersPizzasInner {
  @override
  final OneOf oneOf;

  factory _$ItemsOrdersPizzasInner(
          [void Function(ItemsOrdersPizzasInnerBuilder)? updates]) =>
      (ItemsOrdersPizzasInnerBuilder()..update(updates))._build();

  _$ItemsOrdersPizzasInner._({required this.oneOf}) : super._();
  @override
  ItemsOrdersPizzasInner rebuild(
          void Function(ItemsOrdersPizzasInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ItemsOrdersPizzasInnerBuilder toBuilder() =>
      ItemsOrdersPizzasInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ItemsOrdersPizzasInner && oneOf == other.oneOf;
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
    return (newBuiltValueToStringHelper(r'ItemsOrdersPizzasInner')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class ItemsOrdersPizzasInnerBuilder
    implements Builder<ItemsOrdersPizzasInner, ItemsOrdersPizzasInnerBuilder> {
  _$ItemsOrdersPizzasInner? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  ItemsOrdersPizzasInnerBuilder() {
    ItemsOrdersPizzasInner._defaults(this);
  }

  ItemsOrdersPizzasInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ItemsOrdersPizzasInner other) {
    _$v = other as _$ItemsOrdersPizzasInner;
  }

  @override
  void update(void Function(ItemsOrdersPizzasInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ItemsOrdersPizzasInner build() => _build();

  _$ItemsOrdersPizzasInner _build() {
    final _$result = _$v ??
        _$ItemsOrdersPizzasInner._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'ItemsOrdersPizzasInner', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
