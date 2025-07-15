// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'items_orders_pizzas_orders_id.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ItemsOrdersPizzasOrdersId extends ItemsOrdersPizzasOrdersId {
  @override
  final OneOf oneOf;

  factory _$ItemsOrdersPizzasOrdersId(
          [void Function(ItemsOrdersPizzasOrdersIdBuilder)? updates]) =>
      (ItemsOrdersPizzasOrdersIdBuilder()..update(updates))._build();

  _$ItemsOrdersPizzasOrdersId._({required this.oneOf}) : super._();
  @override
  ItemsOrdersPizzasOrdersId rebuild(
          void Function(ItemsOrdersPizzasOrdersIdBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ItemsOrdersPizzasOrdersIdBuilder toBuilder() =>
      ItemsOrdersPizzasOrdersIdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ItemsOrdersPizzasOrdersId && oneOf == other.oneOf;
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
    return (newBuiltValueToStringHelper(r'ItemsOrdersPizzasOrdersId')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class ItemsOrdersPizzasOrdersIdBuilder
    implements
        Builder<ItemsOrdersPizzasOrdersId, ItemsOrdersPizzasOrdersIdBuilder> {
  _$ItemsOrdersPizzasOrdersId? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  ItemsOrdersPizzasOrdersIdBuilder() {
    ItemsOrdersPizzasOrdersId._defaults(this);
  }

  ItemsOrdersPizzasOrdersIdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ItemsOrdersPizzasOrdersId other) {
    _$v = other as _$ItemsOrdersPizzasOrdersId;
  }

  @override
  void update(void Function(ItemsOrdersPizzasOrdersIdBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ItemsOrdersPizzasOrdersId build() => _build();

  _$ItemsOrdersPizzasOrdersId _build() {
    final _$result = _$v ??
        _$ItemsOrdersPizzasOrdersId._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'ItemsOrdersPizzasOrdersId', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
