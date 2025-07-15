// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invia_dol_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InviaDolResponse extends InviaDolResponse {
  @override
  final InviaDolResponsePayload? payload;
  @override
  final BuiltList<ApiError>? errors;

  factory _$InviaDolResponse(
          [void Function(InviaDolResponseBuilder)? updates]) =>
      (new InviaDolResponseBuilder()..update(updates))._build();

  _$InviaDolResponse._({this.payload, this.errors}) : super._();

  @override
  InviaDolResponse rebuild(void Function(InviaDolResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InviaDolResponseBuilder toBuilder() =>
      new InviaDolResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InviaDolResponse &&
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
    return (newBuiltValueToStringHelper(r'InviaDolResponse')
          ..add('payload', payload)
          ..add('errors', errors))
        .toString();
  }
}

class InviaDolResponseBuilder
    implements Builder<InviaDolResponse, InviaDolResponseBuilder> {
  _$InviaDolResponse? _$v;

  InviaDolResponsePayloadBuilder? _payload;
  InviaDolResponsePayloadBuilder get payload =>
      _$this._payload ??= new InviaDolResponsePayloadBuilder();
  set payload(InviaDolResponsePayloadBuilder? payload) =>
      _$this._payload = payload;

  ListBuilder<ApiError>? _errors;
  ListBuilder<ApiError> get errors =>
      _$this._errors ??= new ListBuilder<ApiError>();
  set errors(ListBuilder<ApiError>? errors) => _$this._errors = errors;

  InviaDolResponseBuilder() {
    InviaDolResponse._defaults(this);
  }

  InviaDolResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _payload = $v.payload?.toBuilder();
      _errors = $v.errors?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InviaDolResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InviaDolResponse;
  }

  @override
  void update(void Function(InviaDolResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InviaDolResponse build() => _build();

  _$InviaDolResponse _build() {
    _$InviaDolResponse _$result;
    try {
      _$result = _$v ??
          new _$InviaDolResponse._(
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
            r'InviaDolResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
