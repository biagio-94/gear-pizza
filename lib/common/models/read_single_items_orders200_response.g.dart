// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'read_single_items_orders200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReadSingleItemsOrders200Response
    extends ReadSingleItemsOrders200Response {
  @override
  final ItemsOrders? data;

  factory _$ReadSingleItemsOrders200Response(
          [void Function(ReadSingleItemsOrders200ResponseBuilder)? updates]) =>
      (ReadSingleItemsOrders200ResponseBuilder()..update(updates))._build();

  _$ReadSingleItemsOrders200Response._({this.data}) : super._();
  @override
  ReadSingleItemsOrders200Response rebuild(
          void Function(ReadSingleItemsOrders200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReadSingleItemsOrders200ResponseBuilder toBuilder() =>
      ReadSingleItemsOrders200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReadSingleItemsOrders200Response && data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReadSingleItemsOrders200Response')
          ..add('data', data))
        .toString();
  }
}

class ReadSingleItemsOrders200ResponseBuilder
    implements
        Builder<ReadSingleItemsOrders200Response,
            ReadSingleItemsOrders200ResponseBuilder> {
  _$ReadSingleItemsOrders200Response? _$v;

  ItemsOrdersBuilder? _data;
  ItemsOrdersBuilder get data => _$this._data ??= ItemsOrdersBuilder();
  set data(ItemsOrdersBuilder? data) => _$this._data = data;

  ReadSingleItemsOrders200ResponseBuilder() {
    ReadSingleItemsOrders200Response._defaults(this);
  }

  ReadSingleItemsOrders200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReadSingleItemsOrders200Response other) {
    _$v = other as _$ReadSingleItemsOrders200Response;
  }

  @override
  void update(void Function(ReadSingleItemsOrders200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReadSingleItemsOrders200Response build() => _build();

  _$ReadSingleItemsOrders200Response _build() {
    _$ReadSingleItemsOrders200Response _$result;
    try {
      _$result = _$v ??
          _$ReadSingleItemsOrders200Response._(
            data: _data?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ReadSingleItemsOrders200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
