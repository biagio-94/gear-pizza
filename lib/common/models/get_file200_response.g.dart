// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_file200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetFile200Response extends GetFile200Response {
  @override
  final Files? data;

  factory _$GetFile200Response(
          [void Function(GetFile200ResponseBuilder)? updates]) =>
      (GetFile200ResponseBuilder()..update(updates))._build();

  _$GetFile200Response._({this.data}) : super._();
  @override
  GetFile200Response rebuild(
          void Function(GetFile200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetFile200ResponseBuilder toBuilder() =>
      GetFile200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetFile200Response && data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetFile200Response')
          ..add('data', data))
        .toString();
  }
}

class GetFile200ResponseBuilder
    implements Builder<GetFile200Response, GetFile200ResponseBuilder> {
  _$GetFile200Response? _$v;

  FilesBuilder? _data;
  FilesBuilder get data => _$this._data ??= FilesBuilder();
  set data(FilesBuilder? data) => _$this._data = data;

  GetFile200ResponseBuilder() {
    GetFile200Response._defaults(this);
  }

  GetFile200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetFile200Response other) {
    _$v = other as _$GetFile200Response;
  }

  @override
  void update(void Function(GetFile200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetFile200Response build() => _build();

  _$GetFile200Response _build() {
    _$GetFile200Response _$result;
    try {
      _$result = _$v ??
          _$GetFile200Response._(
            data: _data?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GetFile200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
