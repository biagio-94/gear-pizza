// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'read_items_orders_pizzas200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReadItemsOrdersPizzas200Response
    extends ReadItemsOrdersPizzas200Response {
  @override
  final BuiltList<ItemsOrdersPizzas>? data;
  @override
  final XMetadata? meta;

  factory _$ReadItemsOrdersPizzas200Response(
          [void Function(ReadItemsOrdersPizzas200ResponseBuilder)? updates]) =>
      (ReadItemsOrdersPizzas200ResponseBuilder()..update(updates))._build();

  _$ReadItemsOrdersPizzas200Response._({this.data, this.meta}) : super._();
  @override
  ReadItemsOrdersPizzas200Response rebuild(
          void Function(ReadItemsOrdersPizzas200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReadItemsOrdersPizzas200ResponseBuilder toBuilder() =>
      ReadItemsOrdersPizzas200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReadItemsOrdersPizzas200Response &&
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
    return (newBuiltValueToStringHelper(r'ReadItemsOrdersPizzas200Response')
          ..add('data', data)
          ..add('meta', meta))
        .toString();
  }
}

class ReadItemsOrdersPizzas200ResponseBuilder
    implements
        Builder<ReadItemsOrdersPizzas200Response,
            ReadItemsOrdersPizzas200ResponseBuilder> {
  _$ReadItemsOrdersPizzas200Response? _$v;

  ListBuilder<ItemsOrdersPizzas>? _data;
  ListBuilder<ItemsOrdersPizzas> get data =>
      _$this._data ??= ListBuilder<ItemsOrdersPizzas>();
  set data(ListBuilder<ItemsOrdersPizzas>? data) => _$this._data = data;

  XMetadataBuilder? _meta;
  XMetadataBuilder get meta => _$this._meta ??= XMetadataBuilder();
  set meta(XMetadataBuilder? meta) => _$this._meta = meta;

  ReadItemsOrdersPizzas200ResponseBuilder() {
    ReadItemsOrdersPizzas200Response._defaults(this);
  }

  ReadItemsOrdersPizzas200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data?.toBuilder();
      _meta = $v.meta?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReadItemsOrdersPizzas200Response other) {
    _$v = other as _$ReadItemsOrdersPizzas200Response;
  }

  @override
  void update(void Function(ReadItemsOrdersPizzas200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReadItemsOrdersPizzas200Response build() => _build();

  _$ReadItemsOrdersPizzas200Response _build() {
    _$ReadItemsOrdersPizzas200Response _$result;
    try {
      _$result = _$v ??
          _$ReadItemsOrdersPizzas200Response._(
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
            r'ReadItemsOrdersPizzas200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
