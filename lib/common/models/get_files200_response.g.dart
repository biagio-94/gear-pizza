// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_files200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetFiles200Response extends GetFiles200Response {
  @override
  final BuiltList<Files>? data;
  @override
  final XMetadata? meta;

  factory _$GetFiles200Response(
          [void Function(GetFiles200ResponseBuilder)? updates]) =>
      (GetFiles200ResponseBuilder()..update(updates))._build();

  _$GetFiles200Response._({this.data, this.meta}) : super._();
  @override
  GetFiles200Response rebuild(
          void Function(GetFiles200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetFiles200ResponseBuilder toBuilder() =>
      GetFiles200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetFiles200Response &&
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
    return (newBuiltValueToStringHelper(r'GetFiles200Response')
          ..add('data', data)
          ..add('meta', meta))
        .toString();
  }
}

class GetFiles200ResponseBuilder
    implements Builder<GetFiles200Response, GetFiles200ResponseBuilder> {
  _$GetFiles200Response? _$v;

  ListBuilder<Files>? _data;
  ListBuilder<Files> get data => _$this._data ??= ListBuilder<Files>();
  set data(ListBuilder<Files>? data) => _$this._data = data;

  XMetadataBuilder? _meta;
  XMetadataBuilder get meta => _$this._meta ??= XMetadataBuilder();
  set meta(XMetadataBuilder? meta) => _$this._meta = meta;

  GetFiles200ResponseBuilder() {
    GetFiles200Response._defaults(this);
  }

  GetFiles200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data?.toBuilder();
      _meta = $v.meta?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetFiles200Response other) {
    _$v = other as _$GetFiles200Response;
  }

  @override
  void update(void Function(GetFiles200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetFiles200Response build() => _build();

  _$GetFiles200Response _build() {
    _$GetFiles200Response _$result;
    try {
      _$result = _$v ??
          _$GetFiles200Response._(
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
            r'GetFiles200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
