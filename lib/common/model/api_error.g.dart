// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiError extends ApiError {
  @override
  final String? campo;
  @override
  final String? descrizione;

  factory _$ApiError([void Function(ApiErrorBuilder)? updates]) =>
      (new ApiErrorBuilder()..update(updates))._build();

  _$ApiError._({this.campo, this.descrizione}) : super._();

  @override
  ApiError rebuild(void Function(ApiErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApiErrorBuilder toBuilder() => new ApiErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiError &&
        campo == other.campo &&
        descrizione == other.descrizione;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, campo.hashCode);
    _$hash = $jc(_$hash, descrizione.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ApiError')
          ..add('campo', campo)
          ..add('descrizione', descrizione))
        .toString();
  }
}

class ApiErrorBuilder implements Builder<ApiError, ApiErrorBuilder> {
  _$ApiError? _$v;

  String? _campo;
  String? get campo => _$this._campo;
  set campo(String? campo) => _$this._campo = campo;

  String? _descrizione;
  String? get descrizione => _$this._descrizione;
  set descrizione(String? descrizione) => _$this._descrizione = descrizione;

  ApiErrorBuilder() {
    ApiError._defaults(this);
  }

  ApiErrorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _campo = $v.campo;
      _descrizione = $v.descrizione;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiError other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ApiError;
  }

  @override
  void update(void Function(ApiErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApiError build() => _build();

  _$ApiError _build() {
    final _$result = _$v ??
        new _$ApiError._(
          campo: campo,
          descrizione: descrizione,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
