// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_presets200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetPresets200Response extends GetPresets200Response {
  @override
  final BuiltList<Presets>? data;
  @override
  final XMetadata? meta;

  factory _$GetPresets200Response(
          [void Function(GetPresets200ResponseBuilder)? updates]) =>
      (GetPresets200ResponseBuilder()..update(updates))._build();

  _$GetPresets200Response._({this.data, this.meta}) : super._();
  @override
  GetPresets200Response rebuild(
          void Function(GetPresets200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetPresets200ResponseBuilder toBuilder() =>
      GetPresets200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetPresets200Response &&
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
    return (newBuiltValueToStringHelper(r'GetPresets200Response')
          ..add('data', data)
          ..add('meta', meta))
        .toString();
  }
}

class GetPresets200ResponseBuilder
    implements Builder<GetPresets200Response, GetPresets200ResponseBuilder> {
  _$GetPresets200Response? _$v;

  ListBuilder<Presets>? _data;
  ListBuilder<Presets> get data => _$this._data ??= ListBuilder<Presets>();
  set data(ListBuilder<Presets>? data) => _$this._data = data;

  XMetadataBuilder? _meta;
  XMetadataBuilder get meta => _$this._meta ??= XMetadataBuilder();
  set meta(XMetadataBuilder? meta) => _$this._meta = meta;

  GetPresets200ResponseBuilder() {
    GetPresets200Response._defaults(this);
  }

  GetPresets200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data?.toBuilder();
      _meta = $v.meta?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetPresets200Response other) {
    _$v = other as _$GetPresets200Response;
  }

  @override
  void update(void Function(GetPresets200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetPresets200Response build() => _build();

  _$GetPresets200Response _build() {
    _$GetPresets200Response _$result;
    try {
      _$result = _$v ??
          _$GetPresets200Response._(
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
            r'GetPresets200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
