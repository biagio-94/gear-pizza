// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preventivo_dati_persona_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PreventivoDatiPersonaResponse extends PreventivoDatiPersonaResponse {
  @override
  final DatiPersona? payload;
  @override
  final BuiltList<ApiError>? errors;

  factory _$PreventivoDatiPersonaResponse(
          [void Function(PreventivoDatiPersonaResponseBuilder)? updates]) =>
      (new PreventivoDatiPersonaResponseBuilder()..update(updates))._build();

  _$PreventivoDatiPersonaResponse._({this.payload, this.errors}) : super._();

  @override
  PreventivoDatiPersonaResponse rebuild(
          void Function(PreventivoDatiPersonaResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PreventivoDatiPersonaResponseBuilder toBuilder() =>
      new PreventivoDatiPersonaResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PreventivoDatiPersonaResponse &&
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
    return (newBuiltValueToStringHelper(r'PreventivoDatiPersonaResponse')
          ..add('payload', payload)
          ..add('errors', errors))
        .toString();
  }
}

class PreventivoDatiPersonaResponseBuilder
    implements
        Builder<PreventivoDatiPersonaResponse,
            PreventivoDatiPersonaResponseBuilder> {
  _$PreventivoDatiPersonaResponse? _$v;

  DatiPersonaBuilder? _payload;
  DatiPersonaBuilder get payload =>
      _$this._payload ??= new DatiPersonaBuilder();
  set payload(DatiPersonaBuilder? payload) => _$this._payload = payload;

  ListBuilder<ApiError>? _errors;
  ListBuilder<ApiError> get errors =>
      _$this._errors ??= new ListBuilder<ApiError>();
  set errors(ListBuilder<ApiError>? errors) => _$this._errors = errors;

  PreventivoDatiPersonaResponseBuilder() {
    PreventivoDatiPersonaResponse._defaults(this);
  }

  PreventivoDatiPersonaResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _payload = $v.payload?.toBuilder();
      _errors = $v.errors?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PreventivoDatiPersonaResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PreventivoDatiPersonaResponse;
  }

  @override
  void update(void Function(PreventivoDatiPersonaResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PreventivoDatiPersonaResponse build() => _build();

  _$PreventivoDatiPersonaResponse _build() {
    _$PreventivoDatiPersonaResponse _$result;
    try {
      _$result = _$v ??
          new _$PreventivoDatiPersonaResponse._(
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
            r'PreventivoDatiPersonaResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
