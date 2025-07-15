// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'server_info200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ServerInfo200Response extends ServerInfo200Response {
  @override
  final JsonObject? data;

  factory _$ServerInfo200Response(
          [void Function(ServerInfo200ResponseBuilder)? updates]) =>
      (ServerInfo200ResponseBuilder()..update(updates))._build();

  _$ServerInfo200Response._({this.data}) : super._();
  @override
  ServerInfo200Response rebuild(
          void Function(ServerInfo200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ServerInfo200ResponseBuilder toBuilder() =>
      ServerInfo200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ServerInfo200Response && data == other.data;
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
    return (newBuiltValueToStringHelper(r'ServerInfo200Response')
          ..add('data', data))
        .toString();
  }
}

class ServerInfo200ResponseBuilder
    implements Builder<ServerInfo200Response, ServerInfo200ResponseBuilder> {
  _$ServerInfo200Response? _$v;

  JsonObject? _data;
  JsonObject? get data => _$this._data;
  set data(JsonObject? data) => _$this._data = data;

  ServerInfo200ResponseBuilder() {
    ServerInfo200Response._defaults(this);
  }

  ServerInfo200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ServerInfo200Response other) {
    _$v = other as _$ServerInfo200Response;
  }

  @override
  void update(void Function(ServerInfo200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ServerInfo200Response build() => _build();

  _$ServerInfo200Response _build() {
    final _$result = _$v ??
        _$ServerInfo200Response._(
          data: data,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
