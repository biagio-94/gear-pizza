// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_refresh_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LoginRefreshRequest extends LoginRefreshRequest {
  @override
  final String? refresh;

  factory _$LoginRefreshRequest(
          [void Function(LoginRefreshRequestBuilder)? updates]) =>
      (LoginRefreshRequestBuilder()..update(updates))._build();

  _$LoginRefreshRequest._({this.refresh}) : super._();
  @override
  LoginRefreshRequest rebuild(
          void Function(LoginRefreshRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginRefreshRequestBuilder toBuilder() =>
      LoginRefreshRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginRefreshRequest && refresh == other.refresh;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, refresh.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LoginRefreshRequest')
          ..add('refresh', refresh))
        .toString();
  }
}

class LoginRefreshRequestBuilder
    implements Builder<LoginRefreshRequest, LoginRefreshRequestBuilder> {
  _$LoginRefreshRequest? _$v;

  String? _refresh;
  String? get refresh => _$this._refresh;
  set refresh(String? refresh) => _$this._refresh = refresh;

  LoginRefreshRequestBuilder() {
    LoginRefreshRequest._defaults(this);
  }

  LoginRefreshRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _refresh = $v.refresh;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoginRefreshRequest other) {
    _$v = other as _$LoginRefreshRequest;
  }

  @override
  void update(void Function(LoginRefreshRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LoginRefreshRequest build() => _build();

  _$LoginRefreshRequest _build() {
    final _$result = _$v ??
        _$LoginRefreshRequest._(
          refresh: refresh,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
