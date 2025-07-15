// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'read_items_restaurants200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReadItemsRestaurants200Response
    extends ReadItemsRestaurants200Response {
  @override
  final BuiltList<ItemsRestaurants>? data;
  @override
  final XMetadata? meta;

  factory _$ReadItemsRestaurants200Response(
          [void Function(ReadItemsRestaurants200ResponseBuilder)? updates]) =>
      (ReadItemsRestaurants200ResponseBuilder()..update(updates))._build();

  _$ReadItemsRestaurants200Response._({this.data, this.meta}) : super._();
  @override
  ReadItemsRestaurants200Response rebuild(
          void Function(ReadItemsRestaurants200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReadItemsRestaurants200ResponseBuilder toBuilder() =>
      ReadItemsRestaurants200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReadItemsRestaurants200Response &&
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
    return (newBuiltValueToStringHelper(r'ReadItemsRestaurants200Response')
          ..add('data', data)
          ..add('meta', meta))
        .toString();
  }
}

class ReadItemsRestaurants200ResponseBuilder
    implements
        Builder<ReadItemsRestaurants200Response,
            ReadItemsRestaurants200ResponseBuilder> {
  _$ReadItemsRestaurants200Response? _$v;

  ListBuilder<ItemsRestaurants>? _data;
  ListBuilder<ItemsRestaurants> get data =>
      _$this._data ??= ListBuilder<ItemsRestaurants>();
  set data(ListBuilder<ItemsRestaurants>? data) => _$this._data = data;

  XMetadataBuilder? _meta;
  XMetadataBuilder get meta => _$this._meta ??= XMetadataBuilder();
  set meta(XMetadataBuilder? meta) => _$this._meta = meta;

  ReadItemsRestaurants200ResponseBuilder() {
    ReadItemsRestaurants200Response._defaults(this);
  }

  ReadItemsRestaurants200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data?.toBuilder();
      _meta = $v.meta?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReadItemsRestaurants200Response other) {
    _$v = other as _$ReadItemsRestaurants200Response;
  }

  @override
  void update(void Function(ReadItemsRestaurants200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReadItemsRestaurants200Response build() => _build();

  _$ReadItemsRestaurants200Response _build() {
    _$ReadItemsRestaurants200Response _$result;
    try {
      _$result = _$v ??
          _$ReadItemsRestaurants200Response._(
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
            r'ReadItemsRestaurants200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
