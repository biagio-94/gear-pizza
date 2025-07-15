// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_roles200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetRoles200Response extends GetRoles200Response {
  @override
  final BuiltList<Roles>? data;
  @override
  final XMetadata? meta;

  factory _$GetRoles200Response(
          [void Function(GetRoles200ResponseBuilder)? updates]) =>
      (GetRoles200ResponseBuilder()..update(updates))._build();

  _$GetRoles200Response._({this.data, this.meta}) : super._();
  @override
  GetRoles200Response rebuild(
          void Function(GetRoles200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetRoles200ResponseBuilder toBuilder() =>
      GetRoles200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetRoles200Response &&
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
    return (newBuiltValueToStringHelper(r'GetRoles200Response')
          ..add('data', data)
          ..add('meta', meta))
        .toString();
  }
}

class GetRoles200ResponseBuilder
    implements Builder<GetRoles200Response, GetRoles200ResponseBuilder> {
  _$GetRoles200Response? _$v;

  ListBuilder<Roles>? _data;
  ListBuilder<Roles> get data => _$this._data ??= ListBuilder<Roles>();
  set data(ListBuilder<Roles>? data) => _$this._data = data;

  XMetadataBuilder? _meta;
  XMetadataBuilder get meta => _$this._meta ??= XMetadataBuilder();
  set meta(XMetadataBuilder? meta) => _$this._meta = meta;

  GetRoles200ResponseBuilder() {
    GetRoles200Response._defaults(this);
  }

  GetRoles200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data?.toBuilder();
      _meta = $v.meta?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetRoles200Response other) {
    _$v = other as _$GetRoles200Response;
  }

  @override
  void update(void Function(GetRoles200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetRoles200Response build() => _build();

  _$GetRoles200Response _build() {
    _$GetRoles200Response _$result;
    try {
      _$result = _$v ??
          _$GetRoles200Response._(
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
            r'GetRoles200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
