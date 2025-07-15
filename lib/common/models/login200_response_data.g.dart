// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login200_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Login200ResponseData extends Login200ResponseData {
  @override
  final String? accessToken;
  @override
  final int? expires;
  @override
  final String? refreshToken;

  factory _$Login200ResponseData(
          [void Function(Login200ResponseDataBuilder)? updates]) =>
      (Login200ResponseDataBuilder()..update(updates))._build();

  _$Login200ResponseData._({this.accessToken, this.expires, this.refreshToken})
      : super._();
  @override
  Login200ResponseData rebuild(
          void Function(Login200ResponseDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Login200ResponseDataBuilder toBuilder() =>
      Login200ResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Login200ResponseData &&
        accessToken == other.accessToken &&
        expires == other.expires &&
        refreshToken == other.refreshToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accessToken.hashCode);
    _$hash = $jc(_$hash, expires.hashCode);
    _$hash = $jc(_$hash, refreshToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Login200ResponseData')
          ..add('accessToken', accessToken)
          ..add('expires', expires)
          ..add('refreshToken', refreshToken))
        .toString();
  }
}

class Login200ResponseDataBuilder
    implements Builder<Login200ResponseData, Login200ResponseDataBuilder> {
  _$Login200ResponseData? _$v;

  String? _accessToken;
  String? get accessToken => _$this._accessToken;
  set accessToken(String? accessToken) => _$this._accessToken = accessToken;

  int? _expires;
  int? get expires => _$this._expires;
  set expires(int? expires) => _$this._expires = expires;

  String? _refreshToken;
  String? get refreshToken => _$this._refreshToken;
  set refreshToken(String? refreshToken) => _$this._refreshToken = refreshToken;

  Login200ResponseDataBuilder() {
    Login200ResponseData._defaults(this);
  }

  Login200ResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accessToken = $v.accessToken;
      _expires = $v.expires;
      _refreshToken = $v.refreshToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Login200ResponseData other) {
    _$v = other as _$Login200ResponseData;
  }

  @override
  void update(void Function(Login200ResponseDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Login200ResponseData build() => _build();

  _$Login200ResponseData _build() {
    final _$result = _$v ??
        _$Login200ResponseData._(
          accessToken: accessToken,
          expires: expires,
          refreshToken: refreshToken,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
