// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_importo_commissioni_protette_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetImportoCommissioniProtetteResponse
    extends GetImportoCommissioniProtetteResponse {
  @override
  final num? importoCommissioniProtette;
  @override
  final BuiltList<ApiError>? errors;

  factory _$GetImportoCommissioniProtetteResponse(
          [void Function(GetImportoCommissioniProtetteResponseBuilder)?
              updates]) =>
      (new GetImportoCommissioniProtetteResponseBuilder()..update(updates))
          ._build();

  _$GetImportoCommissioniProtetteResponse._(
      {this.importoCommissioniProtette, this.errors})
      : super._();

  @override
  GetImportoCommissioniProtetteResponse rebuild(
          void Function(GetImportoCommissioniProtetteResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetImportoCommissioniProtetteResponseBuilder toBuilder() =>
      new GetImportoCommissioniProtetteResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetImportoCommissioniProtetteResponse &&
        importoCommissioniProtette == other.importoCommissioniProtette &&
        errors == other.errors;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, importoCommissioniProtette.hashCode);
    _$hash = $jc(_$hash, errors.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GetImportoCommissioniProtetteResponse')
          ..add('importoCommissioniProtette', importoCommissioniProtette)
          ..add('errors', errors))
        .toString();
  }
}

class GetImportoCommissioniProtetteResponseBuilder
    implements
        Builder<GetImportoCommissioniProtetteResponse,
            GetImportoCommissioniProtetteResponseBuilder> {
  _$GetImportoCommissioniProtetteResponse? _$v;

  num? _importoCommissioniProtette;
  num? get importoCommissioniProtette => _$this._importoCommissioniProtette;
  set importoCommissioniProtette(num? importoCommissioniProtette) =>
      _$this._importoCommissioniProtette = importoCommissioniProtette;

  ListBuilder<ApiError>? _errors;
  ListBuilder<ApiError> get errors =>
      _$this._errors ??= new ListBuilder<ApiError>();
  set errors(ListBuilder<ApiError>? errors) => _$this._errors = errors;

  GetImportoCommissioniProtetteResponseBuilder() {
    GetImportoCommissioniProtetteResponse._defaults(this);
  }

  GetImportoCommissioniProtetteResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _importoCommissioniProtette = $v.importoCommissioniProtette;
      _errors = $v.errors?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetImportoCommissioniProtetteResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetImportoCommissioniProtetteResponse;
  }

  @override
  void update(
      void Function(GetImportoCommissioniProtetteResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetImportoCommissioniProtetteResponse build() => _build();

  _$GetImportoCommissioniProtetteResponse _build() {
    _$GetImportoCommissioniProtetteResponse _$result;
    try {
      _$result = _$v ??
          new _$GetImportoCommissioniProtetteResponse._(
            importoCommissioniProtette: importoCommissioniProtette,
            errors: _errors?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'errors';
        _errors?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetImportoCommissioniProtetteResponse',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
