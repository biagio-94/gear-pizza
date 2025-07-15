// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const LoginRequestModeEnum _$loginRequestModeEnum_json =
    const LoginRequestModeEnum._('json');
const LoginRequestModeEnum _$loginRequestModeEnum_cookie =
    const LoginRequestModeEnum._('cookie');
const LoginRequestModeEnum _$loginRequestModeEnum_session =
    const LoginRequestModeEnum._('session');

LoginRequestModeEnum _$loginRequestModeEnumValueOf(String name) {
  switch (name) {
    case 'json':
      return _$loginRequestModeEnum_json;
    case 'cookie':
      return _$loginRequestModeEnum_cookie;
    case 'session':
      return _$loginRequestModeEnum_session;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<LoginRequestModeEnum> _$loginRequestModeEnumValues =
    BuiltSet<LoginRequestModeEnum>(const <LoginRequestModeEnum>[
  _$loginRequestModeEnum_json,
  _$loginRequestModeEnum_cookie,
  _$loginRequestModeEnum_session,
]);

Serializer<LoginRequestModeEnum> _$loginRequestModeEnumSerializer =
    _$LoginRequestModeEnumSerializer();

class _$LoginRequestModeEnumSerializer
    implements PrimitiveSerializer<LoginRequestModeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'json': 'json',
    'cookie': 'cookie',
    'session': 'session',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'json': 'json',
    'cookie': 'cookie',
    'session': 'session',
  };

  @override
  final Iterable<Type> types = const <Type>[LoginRequestModeEnum];
  @override
  final String wireName = 'LoginRequestModeEnum';

  @override
  Object serialize(Serializers serializers, LoginRequestModeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  LoginRequestModeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      LoginRequestModeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$LoginRequest extends LoginRequest {
  @override
  final String email;
  @override
  final String password;
  @override
  final LoginRequestModeEnum? mode;
  @override
  final String? otp;

  factory _$LoginRequest([void Function(LoginRequestBuilder)? updates]) =>
      (LoginRequestBuilder()..update(updates))._build();

  _$LoginRequest._(
      {required this.email, required this.password, this.mode, this.otp})
      : super._();
  @override
  LoginRequest rebuild(void Function(LoginRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginRequestBuilder toBuilder() => LoginRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginRequest &&
        email == other.email &&
        password == other.password &&
        mode == other.mode &&
        otp == other.otp;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, mode.hashCode);
    _$hash = $jc(_$hash, otp.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LoginRequest')
          ..add('email', email)
          ..add('password', password)
          ..add('mode', mode)
          ..add('otp', otp))
        .toString();
  }
}

class LoginRequestBuilder
    implements Builder<LoginRequest, LoginRequestBuilder> {
  _$LoginRequest? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  LoginRequestModeEnum? _mode;
  LoginRequestModeEnum? get mode => _$this._mode;
  set mode(LoginRequestModeEnum? mode) => _$this._mode = mode;

  String? _otp;
  String? get otp => _$this._otp;
  set otp(String? otp) => _$this._otp = otp;

  LoginRequestBuilder() {
    LoginRequest._defaults(this);
  }

  LoginRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _password = $v.password;
      _mode = $v.mode;
      _otp = $v.otp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoginRequest other) {
    _$v = other as _$LoginRequest;
  }

  @override
  void update(void Function(LoginRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LoginRequest build() => _build();

  _$LoginRequest _build() {
    final _$result = _$v ??
        _$LoginRequest._(
          email: BuiltValueNullFieldError.checkNotNull(
              email, r'LoginRequest', 'email'),
          password: BuiltValueNullFieldError.checkNotNull(
              password, r'LoginRequest', 'password'),
          mode: mode,
          otp: otp,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
