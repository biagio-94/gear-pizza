// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'documenti_ocr_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DocumentiOCRResponse extends DocumentiOCRResponse {
  @override
  final JsonObject? payload;
  @override
  final BuiltList<ApiError>? errors;

  factory _$DocumentiOCRResponse(
          [void Function(DocumentiOCRResponseBuilder)? updates]) =>
      (new DocumentiOCRResponseBuilder()..update(updates))._build();

  _$DocumentiOCRResponse._({this.payload, this.errors}) : super._();

  @override
  DocumentiOCRResponse rebuild(
          void Function(DocumentiOCRResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DocumentiOCRResponseBuilder toBuilder() =>
      new DocumentiOCRResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DocumentiOCRResponse &&
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
    return (newBuiltValueToStringHelper(r'DocumentiOCRResponse')
          ..add('payload', payload)
          ..add('errors', errors))
        .toString();
  }
}

class DocumentiOCRResponseBuilder
    implements Builder<DocumentiOCRResponse, DocumentiOCRResponseBuilder> {
  _$DocumentiOCRResponse? _$v;

  JsonObject? _payload;
  JsonObject? get payload => _$this._payload;
  set payload(JsonObject? payload) => _$this._payload = payload;

  ListBuilder<ApiError>? _errors;
  ListBuilder<ApiError> get errors =>
      _$this._errors ??= new ListBuilder<ApiError>();
  set errors(ListBuilder<ApiError>? errors) => _$this._errors = errors;

  DocumentiOCRResponseBuilder() {
    DocumentiOCRResponse._defaults(this);
  }

  DocumentiOCRResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _payload = $v.payload;
      _errors = $v.errors?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DocumentiOCRResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DocumentiOCRResponse;
  }

  @override
  void update(void Function(DocumentiOCRResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DocumentiOCRResponse build() => _build();

  _$DocumentiOCRResponse _build() {
    _$DocumentiOCRResponse _$result;
    try {
      _$result = _$v ??
          new _$DocumentiOCRResponse._(
            payload: payload,
            errors: _errors?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'errors';
        _errors?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DocumentiOCRResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
