// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_users200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetUsers200Response extends GetUsers200Response {
  @override
  final BuiltList<Users>? data;
  @override
  final XMetadata? meta;

  factory _$GetUsers200Response(
          [void Function(GetUsers200ResponseBuilder)? updates]) =>
      (GetUsers200ResponseBuilder()..update(updates))._build();

  _$GetUsers200Response._({this.data, this.meta}) : super._();
  @override
  GetUsers200Response rebuild(
          void Function(GetUsers200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetUsers200ResponseBuilder toBuilder() =>
      GetUsers200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetUsers200Response &&
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
    return (newBuiltValueToStringHelper(r'GetUsers200Response')
          ..add('data', data)
          ..add('meta', meta))
        .toString();
  }
}

class GetUsers200ResponseBuilder
    implements Builder<GetUsers200Response, GetUsers200ResponseBuilder> {
  _$GetUsers200Response? _$v;

  ListBuilder<Users>? _data;
  ListBuilder<Users> get data => _$this._data ??= ListBuilder<Users>();
  set data(ListBuilder<Users>? data) => _$this._data = data;

  XMetadataBuilder? _meta;
  XMetadataBuilder get meta => _$this._meta ??= XMetadataBuilder();
  set meta(XMetadataBuilder? meta) => _$this._meta = meta;

  GetUsers200ResponseBuilder() {
    GetUsers200Response._defaults(this);
  }

  GetUsers200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data?.toBuilder();
      _meta = $v.meta?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetUsers200Response other) {
    _$v = other as _$GetUsers200Response;
  }

  @override
  void update(void Function(GetUsers200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetUsers200Response build() => _build();

  _$GetUsers200Response _build() {
    _$GetUsers200Response _$result;
    try {
      _$result = _$v ??
          _$GetUsers200Response._(
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
            r'GetUsers200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
