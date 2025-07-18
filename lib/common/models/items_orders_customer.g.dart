// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'items_orders_customer.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ItemsOrdersCustomer extends ItemsOrdersCustomer {
  @override
  final OneOf oneOf;

  factory _$ItemsOrdersCustomer(
          [void Function(ItemsOrdersCustomerBuilder)? updates]) =>
      (ItemsOrdersCustomerBuilder()..update(updates))._build();

  _$ItemsOrdersCustomer._({required this.oneOf}) : super._();
  @override
  ItemsOrdersCustomer rebuild(
          void Function(ItemsOrdersCustomerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ItemsOrdersCustomerBuilder toBuilder() =>
      ItemsOrdersCustomerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ItemsOrdersCustomer && oneOf == other.oneOf;
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
    return (newBuiltValueToStringHelper(r'ItemsOrdersCustomer')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class ItemsOrdersCustomerBuilder
    implements Builder<ItemsOrdersCustomer, ItemsOrdersCustomerBuilder> {
  _$ItemsOrdersCustomer? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  ItemsOrdersCustomerBuilder() {
    ItemsOrdersCustomer._defaults(this);
  }

  ItemsOrdersCustomerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ItemsOrdersCustomer other) {
    _$v = other as _$ItemsOrdersCustomer;
  }

  @override
  void update(void Function(ItemsOrdersCustomerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ItemsOrdersCustomer build() => _build();

  _$ItemsOrdersCustomer _build() {
    final _$result = _$v ??
        _$ItemsOrdersCustomer._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'ItemsOrdersCustomer', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
