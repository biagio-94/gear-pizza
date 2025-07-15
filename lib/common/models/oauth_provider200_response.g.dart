// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'oauth_provider200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OauthProvider200Response extends OauthProvider200Response {
  @override
  final bool? public;
  @override
  final OauthProvider200ResponseData? data;

  factory _$OauthProvider200Response(
          [void Function(OauthProvider200ResponseBuilder)? updates]) =>
      (OauthProvider200ResponseBuilder()..update(updates))._build();

  _$OauthProvider200Response._({this.public, this.data}) : super._();
  @override
  OauthProvider200Response rebuild(
          void Function(OauthProvider200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OauthProvider200ResponseBuilder toBuilder() =>
      OauthProvider200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OauthProvider200Response &&
        public == other.public &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, public.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OauthProvider200Response')
          ..add('public', public)
          ..add('data', data))
        .toString();
  }
}

class OauthProvider200ResponseBuilder
    implements
        Builder<OauthProvider200Response, OauthProvider200ResponseBuilder> {
  _$OauthProvider200Response? _$v;

  bool? _public;
  bool? get public => _$this._public;
  set public(bool? public) => _$this._public = public;

  OauthProvider200ResponseDataBuilder? _data;
  OauthProvider200ResponseDataBuilder get data =>
      _$this._data ??= OauthProvider200ResponseDataBuilder();
  set data(OauthProvider200ResponseDataBuilder? data) => _$this._data = data;

  OauthProvider200ResponseBuilder() {
    OauthProvider200Response._defaults(this);
  }

  OauthProvider200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _public = $v.public;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OauthProvider200Response other) {
    _$v = other as _$OauthProvider200Response;
  }

  @override
  void update(void Function(OauthProvider200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OauthProvider200Response build() => _build();

  _$OauthProvider200Response _build() {
    _$OauthProvider200Response _$result;
    try {
      _$result = _$v ??
          _$OauthProvider200Response._(
            public: public,
            data: _data?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'OauthProvider200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
