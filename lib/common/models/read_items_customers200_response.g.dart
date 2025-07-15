// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'read_items_customers200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReadItemsCustomers200Response extends ReadItemsCustomers200Response {
  @override
  final BuiltList<ItemsCustomers>? data;
  @override
  final XMetadata? meta;

  factory _$ReadItemsCustomers200Response(
          [void Function(ReadItemsCustomers200ResponseBuilder)? updates]) =>
      (ReadItemsCustomers200ResponseBuilder()..update(updates))._build();

  _$ReadItemsCustomers200Response._({this.data, this.meta}) : super._();
  @override
  ReadItemsCustomers200Response rebuild(
          void Function(ReadItemsCustomers200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReadItemsCustomers200ResponseBuilder toBuilder() =>
      ReadItemsCustomers200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReadItemsCustomers200Response &&
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
    return (newBuiltValueToStringHelper(r'ReadItemsCustomers200Response')
          ..add('data', data)
          ..add('meta', meta))
        .toString();
  }
}

class ReadItemsCustomers200ResponseBuilder
    implements
        Builder<ReadItemsCustomers200Response,
            ReadItemsCustomers200ResponseBuilder> {
  _$ReadItemsCustomers200Response? _$v;

  ListBuilder<ItemsCustomers>? _data;
  ListBuilder<ItemsCustomers> get data =>
      _$this._data ??= ListBuilder<ItemsCustomers>();
  set data(ListBuilder<ItemsCustomers>? data) => _$this._data = data;

  XMetadataBuilder? _meta;
  XMetadataBuilder get meta => _$this._meta ??= XMetadataBuilder();
  set meta(XMetadataBuilder? meta) => _$this._meta = meta;

  ReadItemsCustomers200ResponseBuilder() {
    ReadItemsCustomers200Response._defaults(this);
  }

  ReadItemsCustomers200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data?.toBuilder();
      _meta = $v.meta?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReadItemsCustomers200Response other) {
    _$v = other as _$ReadItemsCustomers200Response;
  }

  @override
  void update(void Function(ReadItemsCustomers200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReadItemsCustomers200Response build() => _build();

  _$ReadItemsCustomers200Response _build() {
    _$ReadItemsCustomers200Response _$result;
    try {
      _$result = _$v ??
          _$ReadItemsCustomers200Response._(
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
            r'ReadItemsCustomers200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
