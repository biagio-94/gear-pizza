// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hash_verify200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HashVerify200Response extends HashVerify200Response {
  @override
  final bool? data;

  factory _$HashVerify200Response(
          [void Function(HashVerify200ResponseBuilder)? updates]) =>
      (HashVerify200ResponseBuilder()..update(updates))._build();

  _$HashVerify200Response._({this.data}) : super._();
  @override
  HashVerify200Response rebuild(
          void Function(HashVerify200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HashVerify200ResponseBuilder toBuilder() =>
      HashVerify200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HashVerify200Response && data == other.data;
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
    return (newBuiltValueToStringHelper(r'HashVerify200Response')
          ..add('data', data))
        .toString();
  }
}

class HashVerify200ResponseBuilder
    implements Builder<HashVerify200Response, HashVerify200ResponseBuilder> {
  _$HashVerify200Response? _$v;

  bool? _data;
  bool? get data => _$this._data;
  set data(bool? data) => _$this._data = data;

  HashVerify200ResponseBuilder() {
    HashVerify200Response._defaults(this);
  }

  HashVerify200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HashVerify200Response other) {
    _$v = other as _$HashVerify200Response;
  }

  @override
  void update(void Function(HashVerify200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HashVerify200Response build() => _build();

  _$HashVerify200Response _build() {
    final _$result = _$v ??
        _$HashVerify200Response._(
          data: data,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
