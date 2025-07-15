// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hash_generate200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HashGenerate200Response extends HashGenerate200Response {
  @override
  final String? data;

  factory _$HashGenerate200Response(
          [void Function(HashGenerate200ResponseBuilder)? updates]) =>
      (HashGenerate200ResponseBuilder()..update(updates))._build();

  _$HashGenerate200Response._({this.data}) : super._();
  @override
  HashGenerate200Response rebuild(
          void Function(HashGenerate200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HashGenerate200ResponseBuilder toBuilder() =>
      HashGenerate200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HashGenerate200Response && data == other.data;
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
    return (newBuiltValueToStringHelper(r'HashGenerate200Response')
          ..add('data', data))
        .toString();
  }
}

class HashGenerate200ResponseBuilder
    implements
        Builder<HashGenerate200Response, HashGenerate200ResponseBuilder> {
  _$HashGenerate200Response? _$v;

  String? _data;
  String? get data => _$this._data;
  set data(String? data) => _$this._data = data;

  HashGenerate200ResponseBuilder() {
    HashGenerate200Response._defaults(this);
  }

  HashGenerate200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HashGenerate200Response other) {
    _$v = other as _$HashGenerate200Response;
  }

  @override
  void update(void Function(HashGenerate200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HashGenerate200Response build() => _build();

  _$HashGenerate200Response _build() {
    final _$result = _$v ??
        _$HashGenerate200Response._(
          data: data,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
