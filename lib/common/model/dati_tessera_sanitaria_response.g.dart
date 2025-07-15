// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dati_tessera_sanitaria_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DatiTesseraSanitariaResponse extends DatiTesseraSanitariaResponse {
  @override
  final DatiTesseraSanitaria? payload;
  @override
  final BuiltList<ApiError>? errors;

  factory _$DatiTesseraSanitariaResponse(
          [void Function(DatiTesseraSanitariaResponseBuilder)? updates]) =>
      (new DatiTesseraSanitariaResponseBuilder()..update(updates))._build();

  _$DatiTesseraSanitariaResponse._({this.payload, this.errors}) : super._();

  @override
  DatiTesseraSanitariaResponse rebuild(
          void Function(DatiTesseraSanitariaResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DatiTesseraSanitariaResponseBuilder toBuilder() =>
      new DatiTesseraSanitariaResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DatiTesseraSanitariaResponse &&
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
    return (newBuiltValueToStringHelper(r'DatiTesseraSanitariaResponse')
          ..add('payload', payload)
          ..add('errors', errors))
        .toString();
  }
}

class DatiTesseraSanitariaResponseBuilder
    implements
        Builder<DatiTesseraSanitariaResponse,
            DatiTesseraSanitariaResponseBuilder> {
  _$DatiTesseraSanitariaResponse? _$v;

  DatiTesseraSanitariaBuilder? _payload;
  DatiTesseraSanitariaBuilder get payload =>
      _$this._payload ??= new DatiTesseraSanitariaBuilder();
  set payload(DatiTesseraSanitariaBuilder? payload) =>
      _$this._payload = payload;

  ListBuilder<ApiError>? _errors;
  ListBuilder<ApiError> get errors =>
      _$this._errors ??= new ListBuilder<ApiError>();
  set errors(ListBuilder<ApiError>? errors) => _$this._errors = errors;

  DatiTesseraSanitariaResponseBuilder() {
    DatiTesseraSanitariaResponse._defaults(this);
  }

  DatiTesseraSanitariaResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _payload = $v.payload?.toBuilder();
      _errors = $v.errors?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DatiTesseraSanitariaResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DatiTesseraSanitariaResponse;
  }

  @override
  void update(void Function(DatiTesseraSanitariaResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DatiTesseraSanitariaResponse build() => _build();

  _$DatiTesseraSanitariaResponse _build() {
    _$DatiTesseraSanitariaResponse _$result;
    try {
      _$result = _$v ??
          new _$DatiTesseraSanitariaResponse._(
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
            r'DatiTesseraSanitariaResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
