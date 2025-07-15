// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'read_items_pizzas200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReadItemsPizzas200Response extends ReadItemsPizzas200Response {
  @override
  final BuiltList<ItemsPizzas>? data;
  @override
  final XMetadata? meta;

  factory _$ReadItemsPizzas200Response(
          [void Function(ReadItemsPizzas200ResponseBuilder)? updates]) =>
      (ReadItemsPizzas200ResponseBuilder()..update(updates))._build();

  _$ReadItemsPizzas200Response._({this.data, this.meta}) : super._();
  @override
  ReadItemsPizzas200Response rebuild(
          void Function(ReadItemsPizzas200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReadItemsPizzas200ResponseBuilder toBuilder() =>
      ReadItemsPizzas200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReadItemsPizzas200Response &&
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
    return (newBuiltValueToStringHelper(r'ReadItemsPizzas200Response')
          ..add('data', data)
          ..add('meta', meta))
        .toString();
  }
}

class ReadItemsPizzas200ResponseBuilder
    implements
        Builder<ReadItemsPizzas200Response, ReadItemsPizzas200ResponseBuilder> {
  _$ReadItemsPizzas200Response? _$v;

  ListBuilder<ItemsPizzas>? _data;
  ListBuilder<ItemsPizzas> get data =>
      _$this._data ??= ListBuilder<ItemsPizzas>();
  set data(ListBuilder<ItemsPizzas>? data) => _$this._data = data;

  XMetadataBuilder? _meta;
  XMetadataBuilder get meta => _$this._meta ??= XMetadataBuilder();
  set meta(XMetadataBuilder? meta) => _$this._meta = meta;

  ReadItemsPizzas200ResponseBuilder() {
    ReadItemsPizzas200Response._defaults(this);
  }

  ReadItemsPizzas200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data?.toBuilder();
      _meta = $v.meta?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReadItemsPizzas200Response other) {
    _$v = other as _$ReadItemsPizzas200Response;
  }

  @override
  void update(void Function(ReadItemsPizzas200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReadItemsPizzas200Response build() => _build();

  _$ReadItemsPizzas200Response _build() {
    _$ReadItemsPizzas200Response _$result;
    try {
      _$result = _$v ??
          _$ReadItemsPizzas200Response._(
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
            r'ReadItemsPizzas200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
