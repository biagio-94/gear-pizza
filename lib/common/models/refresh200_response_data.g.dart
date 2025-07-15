// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refresh200_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Refresh200ResponseData extends Refresh200ResponseData {
  @override
  final String? accessToken;
  @override
  final int? expires;
  @override
  final String? refreshToken;

  factory _$Refresh200ResponseData(
          [void Function(Refresh200ResponseDataBuilder)? updates]) =>
      (Refresh200ResponseDataBuilder()..update(updates))._build();

  _$Refresh200ResponseData._(
      {this.accessToken, this.expires, this.refreshToken})
      : super._();
  @override
  Refresh200ResponseData rebuild(
          void Function(Refresh200ResponseDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Refresh200ResponseDataBuilder toBuilder() =>
      Refresh200ResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Refresh200ResponseData &&
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
    return (newBuiltValueToStringHelper(r'Refresh200ResponseData')
          ..add('accessToken', accessToken)
          ..add('expires', expires)
          ..add('refreshToken', refreshToken))
        .toString();
  }
}

class Refresh200ResponseDataBuilder
    implements Builder<Refresh200ResponseData, Refresh200ResponseDataBuilder> {
  _$Refresh200ResponseData? _$v;

  String? _accessToken;
  String? get accessToken => _$this._accessToken;
  set accessToken(String? accessToken) => _$this._accessToken = accessToken;

  int? _expires;
  int? get expires => _$this._expires;
  set expires(int? expires) => _$this._expires = expires;

  String? _refreshToken;
  String? get refreshToken => _$this._refreshToken;
  set refreshToken(String? refreshToken) => _$this._refreshToken = refreshToken;

  Refresh200ResponseDataBuilder() {
    Refresh200ResponseData._defaults(this);
  }

  Refresh200ResponseDataBuilder get _$this {
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
  void replace(Refresh200ResponseData other) {
    _$v = other as _$Refresh200ResponseData;
  }

  @override
  void update(void Function(Refresh200ResponseDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Refresh200ResponseData build() => _build();

  _$Refresh200ResponseData _build() {
    final _$result = _$v ??
        _$Refresh200ResponseData._(
          accessToken: accessToken,
          expires: expires,
          refreshToken: refreshToken,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
