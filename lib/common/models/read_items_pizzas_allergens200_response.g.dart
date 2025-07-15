// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'read_items_pizzas_allergens200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReadItemsPizzasAllergens200Response
    extends ReadItemsPizzasAllergens200Response {
  @override
  final BuiltList<ItemsPizzasAllergens>? data;
  @override
  final XMetadata? meta;

  factory _$ReadItemsPizzasAllergens200Response(
          [void Function(ReadItemsPizzasAllergens200ResponseBuilder)?
              updates]) =>
      (ReadItemsPizzasAllergens200ResponseBuilder()..update(updates))._build();

  _$ReadItemsPizzasAllergens200Response._({this.data, this.meta}) : super._();
  @override
  ReadItemsPizzasAllergens200Response rebuild(
          void Function(ReadItemsPizzasAllergens200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReadItemsPizzasAllergens200ResponseBuilder toBuilder() =>
      ReadItemsPizzasAllergens200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReadItemsPizzasAllergens200Response &&
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
    return (newBuiltValueToStringHelper(r'ReadItemsPizzasAllergens200Response')
          ..add('data', data)
          ..add('meta', meta))
        .toString();
  }
}

class ReadItemsPizzasAllergens200ResponseBuilder
    implements
        Builder<ReadItemsPizzasAllergens200Response,
            ReadItemsPizzasAllergens200ResponseBuilder> {
  _$ReadItemsPizzasAllergens200Response? _$v;

  ListBuilder<ItemsPizzasAllergens>? _data;
  ListBuilder<ItemsPizzasAllergens> get data =>
      _$this._data ??= ListBuilder<ItemsPizzasAllergens>();
  set data(ListBuilder<ItemsPizzasAllergens>? data) => _$this._data = data;

  XMetadataBuilder? _meta;
  XMetadataBuilder get meta => _$this._meta ??= XMetadataBuilder();
  set meta(XMetadataBuilder? meta) => _$this._meta = meta;

  ReadItemsPizzasAllergens200ResponseBuilder() {
    ReadItemsPizzasAllergens200Response._defaults(this);
  }

  ReadItemsPizzasAllergens200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data?.toBuilder();
      _meta = $v.meta?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReadItemsPizzasAllergens200Response other) {
    _$v = other as _$ReadItemsPizzasAllergens200Response;
  }

  @override
  void update(
      void Function(ReadItemsPizzasAllergens200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReadItemsPizzasAllergens200Response build() => _build();

  _$ReadItemsPizzasAllergens200Response _build() {
    _$ReadItemsPizzasAllergens200Response _$result;
    try {
      _$result = _$v ??
          _$ReadItemsPizzasAllergens200Response._(
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
        throw BuiltValueNestedFieldError(r'ReadItemsPizzasAllergens200Response',
            _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
