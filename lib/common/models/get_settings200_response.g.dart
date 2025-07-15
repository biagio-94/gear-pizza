// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_settings200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetSettings200Response extends GetSettings200Response {
  @override
  final Settings? data;

  factory _$GetSettings200Response(
          [void Function(GetSettings200ResponseBuilder)? updates]) =>
      (GetSettings200ResponseBuilder()..update(updates))._build();

  _$GetSettings200Response._({this.data}) : super._();
  @override
  GetSettings200Response rebuild(
          void Function(GetSettings200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetSettings200ResponseBuilder toBuilder() =>
      GetSettings200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetSettings200Response && data == other.data;
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
    return (newBuiltValueToStringHelper(r'GetSettings200Response')
          ..add('data', data))
        .toString();
  }
}

class GetSettings200ResponseBuilder
    implements Builder<GetSettings200Response, GetSettings200ResponseBuilder> {
  _$GetSettings200Response? _$v;

  SettingsBuilder? _data;
  SettingsBuilder get data => _$this._data ??= SettingsBuilder();
  set data(SettingsBuilder? data) => _$this._data = data;

  GetSettings200ResponseBuilder() {
    GetSettings200Response._defaults(this);
  }

  GetSettings200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetSettings200Response other) {
    _$v = other as _$GetSettings200Response;
  }

  @override
  void update(void Function(GetSettings200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetSettings200Response build() => _build();

  _$GetSettings200Response _build() {
    _$GetSettings200Response _$result;
    try {
      _$result = _$v ??
          _$GetSettings200Response._(
            data: _data?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GetSettings200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
