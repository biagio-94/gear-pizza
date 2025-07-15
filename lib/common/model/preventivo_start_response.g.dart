// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preventivo_start_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PreventivoStartResponse extends PreventivoStartResponse {
  @override
  final PreventivoStartResponsePayload? payload;
  @override
  final BuiltList<ApiError>? errors;

  factory _$PreventivoStartResponse(
          [void Function(PreventivoStartResponseBuilder)? updates]) =>
      (new PreventivoStartResponseBuilder()..update(updates))._build();

  _$PreventivoStartResponse._({this.payload, this.errors}) : super._();

  @override
  PreventivoStartResponse rebuild(
          void Function(PreventivoStartResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PreventivoStartResponseBuilder toBuilder() =>
      new PreventivoStartResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PreventivoStartResponse &&
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
    return (newBuiltValueToStringHelper(r'PreventivoStartResponse')
          ..add('payload', payload)
          ..add('errors', errors))
        .toString();
  }
}

class PreventivoStartResponseBuilder
    implements
        Builder<PreventivoStartResponse, PreventivoStartResponseBuilder> {
  _$PreventivoStartResponse? _$v;

  PreventivoStartResponsePayloadBuilder? _payload;
  PreventivoStartResponsePayloadBuilder get payload =>
      _$this._payload ??= new PreventivoStartResponsePayloadBuilder();
  set payload(PreventivoStartResponsePayloadBuilder? payload) =>
      _$this._payload = payload;

  ListBuilder<ApiError>? _errors;
  ListBuilder<ApiError> get errors =>
      _$this._errors ??= new ListBuilder<ApiError>();
  set errors(ListBuilder<ApiError>? errors) => _$this._errors = errors;

  PreventivoStartResponseBuilder() {
    PreventivoStartResponse._defaults(this);
  }

  PreventivoStartResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _payload = $v.payload?.toBuilder();
      _errors = $v.errors?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PreventivoStartResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PreventivoStartResponse;
  }

  @override
  void update(void Function(PreventivoStartResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PreventivoStartResponse build() => _build();

  _$PreventivoStartResponse _build() {
    _$PreventivoStartResponse _$result;
    try {
      _$result = _$v ??
          new _$PreventivoStartResponse._(
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
            r'PreventivoStartResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
