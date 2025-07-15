// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preventivo_dati_reddito_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PreventivoDatiRedditoResponse extends PreventivoDatiRedditoResponse {
  @override
  final DatiReddito? payload;
  @override
  final BuiltList<ApiError>? errors;

  factory _$PreventivoDatiRedditoResponse(
          [void Function(PreventivoDatiRedditoResponseBuilder)? updates]) =>
      (new PreventivoDatiRedditoResponseBuilder()..update(updates))._build();

  _$PreventivoDatiRedditoResponse._({this.payload, this.errors}) : super._();

  @override
  PreventivoDatiRedditoResponse rebuild(
          void Function(PreventivoDatiRedditoResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PreventivoDatiRedditoResponseBuilder toBuilder() =>
      new PreventivoDatiRedditoResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PreventivoDatiRedditoResponse &&
        payload == other.payload &&
        errors == other.errors;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, payload.hashCode);
    _$hash = $jc(_$hash, errors.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PreventivoDatiRedditoResponse')
          ..add('payload', payload)
          ..add('errors', errors))
        .toString();
  }
}

class PreventivoDatiRedditoResponseBuilder
    implements
        Builder<PreventivoDatiRedditoResponse,
            PreventivoDatiRedditoResponseBuilder> {
  _$PreventivoDatiRedditoResponse? _$v;

  DatiRedditoBuilder? _payload;
  DatiRedditoBuilder get payload =>
      _$this._payload ??= new DatiRedditoBuilder();
  set payload(DatiRedditoBuilder? payload) => _$this._payload = payload;

  ListBuilder<ApiError>? _errors;
  ListBuilder<ApiError> get errors =>
      _$this._errors ??= new ListBuilder<ApiError>();
  set errors(ListBuilder<ApiError>? errors) => _$this._errors = errors;

  PreventivoDatiRedditoResponseBuilder() {
    PreventivoDatiRedditoResponse._defaults(this);
  }

  PreventivoDatiRedditoResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _payload = $v.payload?.toBuilder();
      _errors = $v.errors?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PreventivoDatiRedditoResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PreventivoDatiRedditoResponse;
  }

  @override
  void update(void Function(PreventivoDatiRedditoResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PreventivoDatiRedditoResponse build() => _build();

  _$PreventivoDatiRedditoResponse _build() {
    _$PreventivoDatiRedditoResponse _$result;
    try {
      _$result = _$v ??
          new _$PreventivoDatiRedditoResponse._(
            payload: _payload?.build(),
            errors: _errors?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'payload';
        _payload?.build();
        _$failedField = 'errors';
        _errors?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PreventivoDatiRedditoResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
