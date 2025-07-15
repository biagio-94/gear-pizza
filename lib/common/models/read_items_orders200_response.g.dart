// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'read_items_orders200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReadItemsOrders200Response extends ReadItemsOrders200Response {
  @override
  final BuiltList<ItemsOrders>? data;
  @override
  final XMetadata? meta;

  factory _$ReadItemsOrders200Response(
          [void Function(ReadItemsOrders200ResponseBuilder)? updates]) =>
      (ReadItemsOrders200ResponseBuilder()..update(updates))._build();

  _$ReadItemsOrders200Response._({this.data, this.meta}) : super._();
  @override
  ReadItemsOrders200Response rebuild(
          void Function(ReadItemsOrders200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReadItemsOrders200ResponseBuilder toBuilder() =>
      ReadItemsOrders200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReadItemsOrders200Response &&
        data == other.data &&
        meta == other.meta;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, meta.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReadItemsOrders200Response')
          ..add('data', data)
          ..add('meta', meta))
        .toString();
  }
}

class ReadItemsOrders200ResponseBuilder
    implements
        Builder<ReadItemsOrders200Response, ReadItemsOrders200ResponseBuilder> {
  _$ReadItemsOrders200Response? _$v;

  ListBuilder<ItemsOrders>? _data;
  ListBuilder<ItemsOrders> get data =>
      _$this._data ??= ListBuilder<ItemsOrders>();
  set data(ListBuilder<ItemsOrders>? data) => _$this._data = data;

  XMetadataBuilder? _meta;
  XMetadataBuilder get meta => _$this._meta ??= XMetadataBuilder();
  set meta(XMetadataBuilder? meta) => _$this._meta = meta;

  ReadItemsOrders200ResponseBuilder() {
    ReadItemsOrders200Response._defaults(this);
  }

  ReadItemsOrders200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data?.toBuilder();
      _meta = $v.meta?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReadItemsOrders200Response other) {
    _$v = other as _$ReadItemsOrders200Response;
  }

  @override
  void update(void Function(ReadItemsOrders200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReadItemsOrders200Response build() => _build();

  _$ReadItemsOrders200Response _build() {
    _$ReadItemsOrders200Response _$result;
    try {
      _$result = _$v ??
          _$ReadItemsOrders200Response._(
            data: _data?.build(),
            meta: _meta?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
        _$failedField = 'meta';
        _meta?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ReadItemsOrders200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
