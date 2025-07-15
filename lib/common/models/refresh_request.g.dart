// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refresh_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RefreshRequestModeEnum _$refreshRequestModeEnum_json =
    const RefreshRequestModeEnum._('json');
const RefreshRequestModeEnum _$refreshRequestModeEnum_cookie =
    const RefreshRequestModeEnum._('cookie');
const RefreshRequestModeEnum _$refreshRequestModeEnum_session =
    const RefreshRequestModeEnum._('session');

RefreshRequestModeEnum _$refreshRequestModeEnumValueOf(String name) {
  switch (name) {
    case 'json':
      return _$refreshRequestModeEnum_json;
    case 'cookie':
      return _$refreshRequestModeEnum_cookie;
    case 'session':
      return _$refreshRequestModeEnum_session;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<RefreshRequestModeEnum> _$refreshRequestModeEnumValues =
    BuiltSet<RefreshRequestModeEnum>(const <RefreshRequestModeEnum>[
  _$refreshRequestModeEnum_json,
  _$refreshRequestModeEnum_cookie,
  _$refreshRequestModeEnum_session,
]);

Serializer<RefreshRequestModeEnum> _$refreshRequestModeEnumSerializer =
    _$RefreshRequestModeEnumSerializer();

class _$RefreshRequestModeEnumSerializer
    implements PrimitiveSerializer<RefreshRequestModeEnum> {
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
  final Iterable<Type> types = const <Type>[RefreshRequestModeEnum];
  @override
  final String wireName = 'RefreshRequestModeEnum';

  @override
  Object serialize(Serializers serializers, RefreshRequestModeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  RefreshRequestModeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      RefreshRequestModeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$RefreshRequest extends RefreshRequest {
  @override
  final String? refreshToken;
  @override
  final RefreshRequestModeEnum? mode;

  factory _$RefreshRequest([void Function(RefreshRequestBuilder)? updates]) =>
      (RefreshRequestBuilder()..update(updates))._build();

  _$RefreshRequest._({this.refreshToken, this.mode}) : super._();
  @override
  RefreshRequest rebuild(void Function(RefreshRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RefreshRequestBuilder toBuilder() => RefreshRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RefreshRequest &&
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
    return (newBuiltValueToStringHelper(r'RefreshRequest')
          ..add('refreshToken', refreshToken)
          ..add('mode', mode))
        .toString();
  }
}

class RefreshRequestBuilder
    implements Builder<RefreshRequest, RefreshRequestBuilder> {
  _$RefreshRequest? _$v;

  String? _refreshToken;
  String? get refreshToken => _$this._refreshToken;
  set refreshToken(String? refreshToken) => _$this._refreshToken = refreshToken;

  RefreshRequestModeEnum? _mode;
  RefreshRequestModeEnum? get mode => _$this._mode;
  set mode(RefreshRequestModeEnum? mode) => _$this._mode = mode;

  RefreshRequestBuilder() {
    RefreshRequest._defaults(this);
  }

  RefreshRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _refreshToken = $v.refreshToken;
      _mode = $v.mode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RefreshRequest other) {
    _$v = other as _$RefreshRequest;
  }

  @override
  void update(void Function(RefreshRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RefreshRequest build() => _build();

  _$RefreshRequest _build() {
    final _$result = _$v ??
        _$RefreshRequest._(
          refreshToken: refreshToken,
          mode: mode,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
