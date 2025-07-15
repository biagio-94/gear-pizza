// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_asset404_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetAsset404Response extends GetAsset404Response {
  @override
  final GetAsset404ResponseError? error;

  factory _$GetAsset404Response(
          [void Function(GetAsset404ResponseBuilder)? updates]) =>
      (GetAsset404ResponseBuilder()..update(updates))._build();

  _$GetAsset404Response._({this.error}) : super._();
  @override
  GetAsset404Response rebuild(
          void Function(GetAsset404ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetAsset404ResponseBuilder toBuilder() =>
      GetAsset404ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetAsset404Response && error == other.error;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetAsset404Response')
          ..add('error', error))
        .toString();
  }
}

class GetAsset404ResponseBuilder
    implements Builder<GetAsset404Response, GetAsset404ResponseBuilder> {
  _$GetAsset404Response? _$v;

  GetAsset404ResponseErrorBuilder? _error;
  GetAsset404ResponseErrorBuilder get error =>
      _$this._error ??= GetAsset404ResponseErrorBuilder();
  set error(GetAsset404ResponseErrorBuilder? error) => _$this._error = error;

  GetAsset404ResponseBuilder() {
    GetAsset404Response._defaults(this);
  }

  GetAsset404ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetAsset404Response other) {
    _$v = other as _$GetAsset404Response;
  }

  @override
  void update(void Function(GetAsset404ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetAsset404Response build() => _build();

  _$GetAsset404Response _build() {
    _$GetAsset404Response _$result;
    try {
      _$result = _$v ??
          _$GetAsset404Response._(
            error: _error?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'error';
        _error?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GetAsset404Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
