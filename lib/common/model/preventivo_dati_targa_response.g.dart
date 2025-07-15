// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preventivo_dati_targa_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PreventivoDatiTargaResponse extends PreventivoDatiTargaResponse {
  @override
  final PreventivoDatiTargaResponsePayload? payload;
  @override
  final BuiltList<ApiError>? errors;

  factory _$PreventivoDatiTargaResponse(
          [void Function(PreventivoDatiTargaResponseBuilder)? updates]) =>
      (new PreventivoDatiTargaResponseBuilder()..update(updates))._build();

  _$PreventivoDatiTargaResponse._({this.payload, this.errors}) : super._();

  @override
  PreventivoDatiTargaResponse rebuild(
          void Function(PreventivoDatiTargaResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PreventivoDatiTargaResponseBuilder toBuilder() =>
      new PreventivoDatiTargaResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PreventivoDatiTargaResponse &&
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
    return (newBuiltValueToStringHelper(r'PreventivoDatiTargaResponse')
          ..add('payload', payload)
          ..add('errors', errors))
        .toString();
  }
}

class PreventivoDatiTargaResponseBuilder
    implements
        Builder<PreventivoDatiTargaResponse,
            PreventivoDatiTargaResponseBuilder> {
  _$PreventivoDatiTargaResponse? _$v;

  PreventivoDatiTargaResponsePayloadBuilder? _payload;
  PreventivoDatiTargaResponsePayloadBuilder get payload =>
      _$this._payload ??= new PreventivoDatiTargaResponsePayloadBuilder();
  set payload(PreventivoDatiTargaResponsePayloadBuilder? payload) =>
      _$this._payload = payload;

  ListBuilder<ApiError>? _errors;
  ListBuilder<ApiError> get errors =>
      _$this._errors ??= new ListBuilder<ApiError>();
  set errors(ListBuilder<ApiError>? errors) => _$this._errors = errors;

  PreventivoDatiTargaResponseBuilder() {
    PreventivoDatiTargaResponse._defaults(this);
  }

  PreventivoDatiTargaResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _payload = $v.payload?.toBuilder();
      _errors = $v.errors?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PreventivoDatiTargaResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PreventivoDatiTargaResponse;
  }

  @override
  void update(void Function(PreventivoDatiTargaResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PreventivoDatiTargaResponse build() => _build();

  _$PreventivoDatiTargaResponse _build() {
    _$PreventivoDatiTargaResponse _$result;
    try {
      _$result = _$v ??
          new _$PreventivoDatiTargaResponse._(
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
            r'PreventivoDatiTargaResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
