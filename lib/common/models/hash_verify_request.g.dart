// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hash_verify_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HashVerifyRequest extends HashVerifyRequest {
  @override
  final String string;
  @override
  final String hash;

  factory _$HashVerifyRequest(
          [void Function(HashVerifyRequestBuilder)? updates]) =>
      (HashVerifyRequestBuilder()..update(updates))._build();

  _$HashVerifyRequest._({required this.string, required this.hash}) : super._();
  @override
  HashVerifyRequest rebuild(void Function(HashVerifyRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HashVerifyRequestBuilder toBuilder() =>
      HashVerifyRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HashVerifyRequest &&
        string == other.string &&
        hash == other.hash;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, string.hashCode);
    _$hash = $jc(_$hash, hash.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HashVerifyRequest')
          ..add('string', string)
          ..add('hash', hash))
        .toString();
  }
}

class HashVerifyRequestBuilder
    implements Builder<HashVerifyRequest, HashVerifyRequestBuilder> {
  _$HashVerifyRequest? _$v;

  String? _string;
  String? get string => _$this._string;
  set string(String? string) => _$this._string = string;

  String? _hash;
  String? get hash => _$this._hash;
  set hash(String? hash) => _$this._hash = hash;

  HashVerifyRequestBuilder() {
    HashVerifyRequest._defaults(this);
  }

  HashVerifyRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _string = $v.string;
      _hash = $v.hash;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HashVerifyRequest other) {
    _$v = other as _$HashVerifyRequest;
  }

  @override
  void update(void Function(HashVerifyRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HashVerifyRequest build() => _build();

  _$HashVerifyRequest _build() {
    final _$result = _$v ??
        _$HashVerifyRequest._(
          string: BuiltValueNullFieldError.checkNotNull(
              string, r'HashVerifyRequest', 'string'),
          hash: BuiltValueNullFieldError.checkNotNull(
              hash, r'HashVerifyRequest', 'hash'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
