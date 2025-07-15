// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'referente_create_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReferenteCreateResponse extends ReferenteCreateResponse {
  @override
  final ReferenteCreateResponsePayload? payload;
  @override
  final BuiltList<ApiError>? errors;

  factory _$ReferenteCreateResponse(
          [void Function(ReferenteCreateResponseBuilder)? updates]) =>
      (new ReferenteCreateResponseBuilder()..update(updates))._build();

  _$ReferenteCreateResponse._({this.payload, this.errors}) : super._();

  @override
  ReferenteCreateResponse rebuild(
          void Function(ReferenteCreateResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReferenteCreateResponseBuilder toBuilder() =>
      new ReferenteCreateResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReferenteCreateResponse &&
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
    return (newBuiltValueToStringHelper(r'ReferenteCreateResponse')
          ..add('payload', payload)
          ..add('errors', errors))
        .toString();
  }
}

class ReferenteCreateResponseBuilder
    implements
        Builder<ReferenteCreateResponse, ReferenteCreateResponseBuilder> {
  _$ReferenteCreateResponse? _$v;

  ReferenteCreateResponsePayloadBuilder? _payload;
  ReferenteCreateResponsePayloadBuilder get payload =>
      _$this._payload ??= new ReferenteCreateResponsePayloadBuilder();
  set payload(ReferenteCreateResponsePayloadBuilder? payload) =>
      _$this._payload = payload;

  ListBuilder<ApiError>? _errors;
  ListBuilder<ApiError> get errors =>
      _$this._errors ??= new ListBuilder<ApiError>();
  set errors(ListBuilder<ApiError>? errors) => _$this._errors = errors;

  ReferenteCreateResponseBuilder() {
    ReferenteCreateResponse._defaults(this);
  }

  ReferenteCreateResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _payload = $v.payload?.toBuilder();
      _errors = $v.errors?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReferenteCreateResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReferenteCreateResponse;
  }

  @override
  void update(void Function(ReferenteCreateResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReferenteCreateResponse build() => _build();

  _$ReferenteCreateResponse _build() {
    _$ReferenteCreateResponse _$result;
    try {
      _$result = _$v ??
          new _$ReferenteCreateResponse._(
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
            r'ReferenteCreateResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
