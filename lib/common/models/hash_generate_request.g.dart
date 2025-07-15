// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hash_generate_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HashGenerateRequest extends HashGenerateRequest {
  @override
  final String string;

  factory _$HashGenerateRequest(
          [void Function(HashGenerateRequestBuilder)? updates]) =>
      (HashGenerateRequestBuilder()..update(updates))._build();

  _$HashGenerateRequest._({required this.string}) : super._();
  @override
  HashGenerateRequest rebuild(
          void Function(HashGenerateRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HashGenerateRequestBuilder toBuilder() =>
      HashGenerateRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HashGenerateRequest && string == other.string;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, string.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HashGenerateRequest')
          ..add('string', string))
        .toString();
  }
}

class HashGenerateRequestBuilder
    implements Builder<HashGenerateRequest, HashGenerateRequestBuilder> {
  _$HashGenerateRequest? _$v;

  String? _string;
  String? get string => _$this._string;
  set string(String? string) => _$this._string = string;

  HashGenerateRequestBuilder() {
    HashGenerateRequest._defaults(this);
  }

  HashGenerateRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _string = $v.string;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HashGenerateRequest other) {
    _$v = other as _$HashGenerateRequest;
  }

  @override
  void update(void Function(HashGenerateRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HashGenerateRequest build() => _build();

  _$HashGenerateRequest _build() {
    final _$result = _$v ??
        _$HashGenerateRequest._(
          string: BuiltValueNullFieldError.checkNotNull(
              string, r'HashGenerateRequest', 'string'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
