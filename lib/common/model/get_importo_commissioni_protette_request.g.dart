// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_importo_commissioni_protette_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetImportoCommissioniProtetteRequest
    extends GetImportoCommissioniProtetteRequest {
  @override
  final String tabellaFinanziaria;
  @override
  final num importoFinanziato;
  @override
  final String numeroRate;

  factory _$GetImportoCommissioniProtetteRequest(
          [void Function(GetImportoCommissioniProtetteRequestBuilder)?
              updates]) =>
      (new GetImportoCommissioniProtetteRequestBuilder()..update(updates))
          ._build();

  _$GetImportoCommissioniProtetteRequest._(
      {required this.tabellaFinanziaria,
      required this.importoFinanziato,
      required this.numeroRate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(tabellaFinanziaria,
        r'GetImportoCommissioniProtetteRequest', 'tabellaFinanziaria');
    BuiltValueNullFieldError.checkNotNull(importoFinanziato,
        r'GetImportoCommissioniProtetteRequest', 'importoFinanziato');
    BuiltValueNullFieldError.checkNotNull(
        numeroRate, r'GetImportoCommissioniProtetteRequest', 'numeroRate');
  }

  @override
  GetImportoCommissioniProtetteRequest rebuild(
          void Function(GetImportoCommissioniProtetteRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetImportoCommissioniProtetteRequestBuilder toBuilder() =>
      new GetImportoCommissioniProtetteRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetImportoCommissioniProtetteRequest &&
        tabellaFinanziaria == other.tabellaFinanziaria &&
        importoFinanziato == other.importoFinanziato &&
        numeroRate == other.numeroRate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tabellaFinanziaria.hashCode);
    _$hash = $jc(_$hash, importoFinanziato.hashCode);
    _$hash = $jc(_$hash, numeroRate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetImportoCommissioniProtetteRequest')
          ..add('tabellaFinanziaria', tabellaFinanziaria)
          ..add('importoFinanziato', importoFinanziato)
          ..add('numeroRate', numeroRate))
        .toString();
  }
}

class GetImportoCommissioniProtetteRequestBuilder
    implements
        Builder<GetImportoCommissioniProtetteRequest,
            GetImportoCommissioniProtetteRequestBuilder> {
  _$GetImportoCommissioniProtetteRequest? _$v;

  String? _tabellaFinanziaria;
  String? get tabellaFinanziaria => _$this._tabellaFinanziaria;
  set tabellaFinanziaria(String? tabellaFinanziaria) =>
      _$this._tabellaFinanziaria = tabellaFinanziaria;

  num? _importoFinanziato;
  num? get importoFinanziato => _$this._importoFinanziato;
  set importoFinanziato(num? importoFinanziato) =>
      _$this._importoFinanziato = importoFinanziato;

  String? _numeroRate;
  String? get numeroRate => _$this._numeroRate;
  set numeroRate(String? numeroRate) => _$this._numeroRate = numeroRate;

  GetImportoCommissioniProtetteRequestBuilder() {
    GetImportoCommissioniProtetteRequest._defaults(this);
  }

  GetImportoCommissioniProtetteRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tabellaFinanziaria = $v.tabellaFinanziaria;
      _importoFinanziato = $v.importoFinanziato;
      _numeroRate = $v.numeroRate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetImportoCommissioniProtetteRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetImportoCommissioniProtetteRequest;
  }

  @override
  void update(
      void Function(GetImportoCommissioniProtetteRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetImportoCommissioniProtetteRequest build() => _build();

  _$GetImportoCommissioniProtetteRequest _build() {
    final _$result = _$v ??
        new _$GetImportoCommissioniProtetteRequest._(
          tabellaFinanziaria: BuiltValueNullFieldError.checkNotNull(
              tabellaFinanziaria,
              r'GetImportoCommissioniProtetteRequest',
              'tabellaFinanziaria'),
          importoFinanziato: BuiltValueNullFieldError.checkNotNull(
              importoFinanziato,
              r'GetImportoCommissioniProtetteRequest',
              'importoFinanziato'),
          numeroRate: BuiltValueNullFieldError.checkNotNull(numeroRate,
              r'GetImportoCommissioniProtetteRequest', 'numeroRate'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
