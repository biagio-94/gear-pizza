// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'read_items_allergens200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReadItemsAllergens200Response extends ReadItemsAllergens200Response {
  @override
  final BuiltList<ItemsAllergens>? data;
  @override
  final XMetadata? meta;

  factory _$ReadItemsAllergens200Response(
          [void Function(ReadItemsAllergens200ResponseBuilder)? updates]) =>
      (ReadItemsAllergens200ResponseBuilder()..update(updates))._build();

  _$ReadItemsAllergens200Response._({this.data, this.meta}) : super._();
  @override
  ReadItemsAllergens200Response rebuild(
          void Function(ReadItemsAllergens200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReadItemsAllergens200ResponseBuilder toBuilder() =>
      ReadItemsAllergens200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReadItemsAllergens200Response &&
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
    return (newBuiltValueToStringHelper(r'ReadItemsAllergens200Response')
          ..add('data', data)
          ..add('meta', meta))
        .toString();
  }
}

class ReadItemsAllergens200ResponseBuilder
    implements
        Builder<ReadItemsAllergens200Response,
            ReadItemsAllergens200ResponseBuilder> {
  _$ReadItemsAllergens200Response? _$v;

  ListBuilder<ItemsAllergens>? _data;
  ListBuilder<ItemsAllergens> get data =>
      _$this._data ??= ListBuilder<ItemsAllergens>();
  set data(ListBuilder<ItemsAllergens>? data) => _$this._data = data;

  XMetadataBuilder? _meta;
  XMetadataBuilder get meta => _$this._meta ??= XMetadataBuilder();
  set meta(XMetadataBuilder? meta) => _$this._meta = meta;

  ReadItemsAllergens200ResponseBuilder() {
    ReadItemsAllergens200Response._defaults(this);
  }

  ReadItemsAllergens200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data?.toBuilder();
      _meta = $v.meta?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReadItemsAllergens200Response other) {
    _$v = other as _$ReadItemsAllergens200Response;
  }

  @override
  void update(void Function(ReadItemsAllergens200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReadItemsAllergens200Response build() => _build();

  _$ReadItemsAllergens200Response _build() {
    _$ReadItemsAllergens200Response _$result;
    try {
      _$result = _$v ??
          _$ReadItemsAllergens200Response._(
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
            r'ReadItemsAllergens200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
