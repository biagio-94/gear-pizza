// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logout_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const LogoutRequestModeEnum _$logoutRequestModeEnum_json =
    const LogoutRequestModeEnum._('json');
const LogoutRequestModeEnum _$logoutRequestModeEnum_cookie =
    const LogoutRequestModeEnum._('cookie');
const LogoutRequestModeEnum _$logoutRequestModeEnum_session =
    const LogoutRequestModeEnum._('session');

LogoutRequestModeEnum _$logoutRequestModeEnumValueOf(String name) {
  switch (name) {
    case 'json':
      return _$logoutRequestModeEnum_json;
    case 'cookie':
      return _$logoutRequestModeEnum_cookie;
    case 'session':
      return _$logoutRequestModeEnum_session;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<LogoutRequestModeEnum> _$logoutRequestModeEnumValues =
    BuiltSet<LogoutRequestModeEnum>(const <LogoutRequestModeEnum>[
  _$logoutRequestModeEnum_json,
  _$logoutRequestModeEnum_cookie,
  _$logoutRequestModeEnum_session,
]);

Serializer<LogoutRequestModeEnum> _$logoutRequestModeEnumSerializer =
    _$LogoutRequestModeEnumSerializer();

class _$LogoutRequestModeEnumSerializer
    implements PrimitiveSerializer<LogoutRequestModeEnum> {
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
  final Iterable<Type> types = const <Type>[LogoutRequestModeEnum];
  @override
  final String wireName = 'LogoutRequestModeEnum';

  @override
  Object serialize(Serializers serializers, LogoutRequestModeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  LogoutRequestModeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      LogoutRequestModeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$LogoutRequest extends LogoutRequest {
  @override
  final String? refreshToken;
  @override
  final LogoutRequestModeEnum? mode;

  factory _$LogoutRequest([void Function(LogoutRequestBuilder)? updates]) =>
      (LogoutRequestBuilder()..update(updates))._build();

  _$LogoutRequest._({this.refreshToken, this.mode}) : super._();
  @override
  LogoutRequest rebuild(void Function(LogoutRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LogoutRequestBuilder toBuilder() => LogoutRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LogoutRequest &&
        refreshToken == other.refreshToken &&
        mode == other.mode;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, refreshToken.hashCode);
    _$hash = $jc(_$hash, mode.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LogoutRequest')
          ..add('refreshToken', refreshToken)
          ..add('mode', mode))
        .toString();
  }
}

class LogoutRequestBuilder
    implements Builder<LogoutRequest, LogoutRequestBuilder> {
  _$LogoutRequest? _$v;

  String? _refreshToken;
  String? get refreshToken => _$this._refreshToken;
  set refreshToken(String? refreshToken) => _$this._refreshToken = refreshToken;

  LogoutRequestModeEnum? _mode;
  LogoutRequestModeEnum? get mode => _$this._mode;
  set mode(LogoutRequestModeEnum? mode) => _$this._mode = mode;

  LogoutRequestBuilder() {
    LogoutRequest._defaults(this);
  }

  LogoutRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _refreshToken = $v.refreshToken;
      _mode = $v.mode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LogoutRequest other) {
    _$v = other as _$LogoutRequest;
  }

  @override
  void update(void Function(LogoutRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LogoutRequest build() => _build();

  _$LogoutRequest _build() {
    final _$result = _$v ??
        _$LogoutRequest._(
          refreshToken: refreshToken,
          mode: mode,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
