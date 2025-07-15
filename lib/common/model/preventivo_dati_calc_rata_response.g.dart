// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preventivo_dati_calc_rata_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PreventivoDatiCalcRataResponse extends PreventivoDatiCalcRataResponse {
  @override
  final DatiCalcRata? payload;
  @override
  final BuiltList<ApiError>? errors;

  factory _$PreventivoDatiCalcRataResponse(
          [void Function(PreventivoDatiCalcRataResponseBuilder)? updates]) =>
      (new PreventivoDatiCalcRataResponseBuilder()..update(updates))._build();

  _$PreventivoDatiCalcRataResponse._({this.payload, this.errors}) : super._();

  @override
  PreventivoDatiCalcRataResponse rebuild(
          void Function(PreventivoDatiCalcRataResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PreventivoDatiCalcRataResponseBuilder toBuilder() =>
      new PreventivoDatiCalcRataResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PreventivoDatiCalcRataResponse &&
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
    return (newBuiltValueToStringHelper(r'PreventivoDatiCalcRataResponse')
          ..add('payload', payload)
          ..add('errors', errors))
        .toString();
  }
}

class PreventivoDatiCalcRataResponseBuilder
    implements
        Builder<PreventivoDatiCalcRataResponse,
            PreventivoDatiCalcRataResponseBuilder> {
  _$PreventivoDatiCalcRataResponse? _$v;

  DatiCalcRataBuilder? _payload;
  DatiCalcRataBuilder get payload =>
      _$this._payload ??= new DatiCalcRataBuilder();
  set payload(DatiCalcRataBuilder? payload) => _$this._payload = payload;

  ListBuilder<ApiError>? _errors;
  ListBuilder<ApiError> get errors =>
      _$this._errors ??= new ListBuilder<ApiError>();
  set errors(ListBuilder<ApiError>? errors) => _$this._errors = errors;

  PreventivoDatiCalcRataResponseBuilder() {
    PreventivoDatiCalcRataResponse._defaults(this);
  }

  PreventivoDatiCalcRataResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _payload = $v.payload?.toBuilder();
      _errors = $v.errors?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PreventivoDatiCalcRataResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PreventivoDatiCalcRataResponse;
  }

  @override
  void update(void Function(PreventivoDatiCalcRataResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PreventivoDatiCalcRataResponse build() => _build();

  _$PreventivoDatiCalcRataResponse _build() {
    _$PreventivoDatiCalcRataResponse _$result;
    try {
      _$result = _$v ??
          new _$PreventivoDatiCalcRataResponse._(
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
            r'PreventivoDatiCalcRataResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
