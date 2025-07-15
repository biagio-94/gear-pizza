// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_asset404_response_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetAsset404ResponseError extends GetAsset404ResponseError {
  @override
  final int? code;
  @override
  final String? message;

  factory _$GetAsset404ResponseError(
          [void Function(GetAsset404ResponseErrorBuilder)? updates]) =>
      (GetAsset404ResponseErrorBuilder()..update(updates))._build();

  _$GetAsset404ResponseError._({this.code, this.message}) : super._();
  @override
  GetAsset404ResponseError rebuild(
          void Function(GetAsset404ResponseErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetAsset404ResponseErrorBuilder toBuilder() =>
      GetAsset404ResponseErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetAsset404ResponseError &&
        code == other.code &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetAsset404ResponseError')
          ..add('code', code)
          ..add('message', message))
        .toString();
  }
}

class GetAsset404ResponseErrorBuilder
    implements
        Builder<GetAsset404ResponseError, GetAsset404ResponseErrorBuilder> {
  _$GetAsset404ResponseError? _$v;

  int? _code;
  int? get code => _$this._code;
  set code(int? code) => _$this._code = code;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  GetAsset404ResponseErrorBuilder() {
    GetAsset404ResponseError._defaults(this);
  }

  GetAsset404ResponseErrorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetAsset404ResponseError other) {
    _$v = other as _$GetAsset404ResponseError;
  }

  @override
  void update(void Function(GetAsset404ResponseErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetAsset404ResponseError build() => _build();

  _$GetAsset404ResponseError _build() {
    final _$result = _$v ??
        _$GetAsset404ResponseError._(
          code: code,
          message: message,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
