// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'password_request_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PasswordRequestRequest extends PasswordRequestRequest {
  @override
  final String email;

  factory _$PasswordRequestRequest(
          [void Function(PasswordRequestRequestBuilder)? updates]) =>
      (PasswordRequestRequestBuilder()..update(updates))._build();

  _$PasswordRequestRequest._({required this.email}) : super._();
  @override
  PasswordRequestRequest rebuild(
          void Function(PasswordRequestRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PasswordRequestRequestBuilder toBuilder() =>
      PasswordRequestRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PasswordRequestRequest && email == other.email;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PasswordRequestRequest')
          ..add('email', email))
        .toString();
  }
}

class PasswordRequestRequestBuilder
    implements Builder<PasswordRequestRequest, PasswordRequestRequestBuilder> {
  _$PasswordRequestRequest? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  PasswordRequestRequestBuilder() {
    PasswordRequestRequest._defaults(this);
  }

  PasswordRequestRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PasswordRequestRequest other) {
    _$v = other as _$PasswordRequestRequest;
  }

  @override
  void update(void Function(PasswordRequestRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PasswordRequestRequest build() => _build();

  _$PasswordRequestRequest _build() {
    final _$result = _$v ??
        _$PasswordRequestRequest._(
          email: BuiltValueNullFieldError.checkNotNull(
              email, r'PasswordRequestRequest', 'email'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
