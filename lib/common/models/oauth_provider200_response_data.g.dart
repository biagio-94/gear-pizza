// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'oauth_provider200_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OauthProvider200ResponseData extends OauthProvider200ResponseData {
  @override
  final String? token;

  factory _$OauthProvider200ResponseData(
          [void Function(OauthProvider200ResponseDataBuilder)? updates]) =>
      (OauthProvider200ResponseDataBuilder()..update(updates))._build();

  _$OauthProvider200ResponseData._({this.token}) : super._();
  @override
  OauthProvider200ResponseData rebuild(
          void Function(OauthProvider200ResponseDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OauthProvider200ResponseDataBuilder toBuilder() =>
      OauthProvider200ResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OauthProvider200ResponseData && token == other.token;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OauthProvider200ResponseData')
          ..add('token', token))
        .toString();
  }
}

class OauthProvider200ResponseDataBuilder
    implements
        Builder<OauthProvider200ResponseData,
            OauthProvider200ResponseDataBuilder> {
  _$OauthProvider200ResponseData? _$v;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  OauthProvider200ResponseDataBuilder() {
    OauthProvider200ResponseData._defaults(this);
  }

  OauthProvider200ResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _token = $v.token;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OauthProvider200ResponseData other) {
    _$v = other as _$OauthProvider200ResponseData;
  }

  @override
  void update(void Function(OauthProvider200ResponseDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OauthProvider200ResponseData build() => _build();

  _$OauthProvider200ResponseData _build() {
    final _$result = _$v ??
        _$OauthProvider200ResponseData._(
          token: token,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
