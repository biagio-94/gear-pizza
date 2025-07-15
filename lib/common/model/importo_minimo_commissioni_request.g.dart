// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'importo_minimo_commissioni_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ImportoMinimoCommissioniRequest
    extends ImportoMinimoCommissioniRequest {
  @override
  final String codiceProdotto;
  @override
  final int convenzionato;
  @override
  final String? dataImmatricolazione;
  @override
  final num importoFinanziato;
  @override
  final String numeroRate;
  @override
  final String tabellaFinanziaria;
  @override
  final String tipoPersona;
  @override
  final String tipoProdotto;
  @override
  final num valoreBene;

  factory _$ImportoMinimoCommissioniRequest(
          [void Function(ImportoMinimoCommissioniRequestBuilder)? updates]) =>
      (new ImportoMinimoCommissioniRequestBuilder()..update(updates))._build();

  _$ImportoMinimoCommissioniRequest._(
      {required this.codiceProdotto,
      required this.convenzionato,
      this.dataImmatricolazione,
      required this.importoFinanziato,
      required this.numeroRate,
      required this.tabellaFinanziaria,
      required this.tipoPersona,
      required this.tipoProdotto,
      required this.valoreBene})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        codiceProdotto, r'ImportoMinimoCommissioniRequest', 'codiceProdotto');
    BuiltValueNullFieldError.checkNotNull(
        convenzionato, r'ImportoMinimoCommissioniRequest', 'convenzionato');
    BuiltValueNullFieldError.checkNotNull(importoFinanziato,
        r'ImportoMinimoCommissioniRequest', 'importoFinanziato');
    BuiltValueNullFieldError.checkNotNull(
        numeroRate, r'ImportoMinimoCommissioniRequest', 'numeroRate');
    BuiltValueNullFieldError.checkNotNull(tabellaFinanziaria,
        r'ImportoMinimoCommissioniRequest', 'tabellaFinanziaria');
    BuiltValueNullFieldError.checkNotNull(
        tipoPersona, r'ImportoMinimoCommissioniRequest', 'tipoPersona');
    BuiltValueNullFieldError.checkNotNull(
        tipoProdotto, r'ImportoMinimoCommissioniRequest', 'tipoProdotto');
    BuiltValueNullFieldError.checkNotNull(
        valoreBene, r'ImportoMinimoCommissioniRequest', 'valoreBene');
  }

  @override
  ImportoMinimoCommissioniRequest rebuild(
          void Function(ImportoMinimoCommissioniRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImportoMinimoCommissioniRequestBuilder toBuilder() =>
      new ImportoMinimoCommissioniRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImportoMinimoCommissioniRequest &&
        codiceProdotto == other.codiceProdotto &&
        convenzionato == other.convenzionato &&
        dataImmatricolazione == other.dataImmatricolazione &&
        importoFinanziato == other.importoFinanziato &&
        numeroRate == other.numeroRate &&
        tabellaFinanziaria == other.tabellaFinanziaria &&
        tipoPersona == other.tipoPersona &&
        tipoProdotto == other.tipoProdotto &&
        valoreBene == other.valoreBene;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, codiceProdotto.hashCode);
    _$hash = $jc(_$hash, convenzionato.hashCode);
    _$hash = $jc(_$hash, dataImmatricolazione.hashCode);
    _$hash = $jc(_$hash, importoFinanziato.hashCode);
    _$hash = $jc(_$hash, numeroRate.hashCode);
    _$hash = $jc(_$hash, tabellaFinanziaria.hashCode);
    _$hash = $jc(_$hash, tipoPersona.hashCode);
    _$hash = $jc(_$hash, tipoProdotto.hashCode);
    _$hash = $jc(_$hash, valoreBene.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ImportoMinimoCommissioniRequest')
          ..add('codiceProdotto', codiceProdotto)
          ..add('convenzionato', convenzionato)
          ..add('dataImmatricolazione', dataImmatricolazione)
          ..add('importoFinanziato', importoFinanziato)
          ..add('numeroRate', numeroRate)
          ..add('tabellaFinanziaria', tabellaFinanziaria)
          ..add('tipoPersona', tipoPersona)
          ..add('tipoProdotto', tipoProdotto)
          ..add('valoreBene', valoreBene))
        .toString();
  }
}

class ImportoMinimoCommissioniRequestBuilder
    implements
        Builder<ImportoMinimoCommissioniRequest,
            ImportoMinimoCommissioniRequestBuilder> {
  _$ImportoMinimoCommissioniRequest? _$v;

  String? _codiceProdotto;
  String? get codiceProdotto => _$this._codiceProdotto;
  set codiceProdotto(String? codiceProdotto) =>
      _$this._codiceProdotto = codiceProdotto;

  int? _convenzionato;
  int? get convenzionato => _$this._convenzionato;
  set convenzionato(int? convenzionato) =>
      _$this._convenzionato = convenzionato;

  String? _dataImmatricolazione;
  String? get dataImmatricolazione => _$this._dataImmatricolazione;
  set dataImmatricolazione(String? dataImmatricolazione) =>
      _$this._dataImmatricolazione = dataImmatricolazione;

  num? _importoFinanziato;
  num? get importoFinanziato => _$this._importoFinanziato;
  set importoFinanziato(num? importoFinanziato) =>
      _$this._importoFinanziato = importoFinanziato;

  String? _numeroRate;
  String? get numeroRate => _$this._numeroRate;
  set numeroRate(String? numeroRate) => _$this._numeroRate = numeroRate;

  String? _tabellaFinanziaria;
  String? get tabellaFinanziaria => _$this._tabellaFinanziaria;
  set tabellaFinanziaria(String? tabellaFinanziaria) =>
      _$this._tabellaFinanziaria = tabellaFinanziaria;

  String? _tipoPersona;
  String? get tipoPersona => _$this._tipoPersona;
  set tipoPersona(String? tipoPersona) => _$this._tipoPersona = tipoPersona;

  String? _tipoProdotto;
  String? get tipoProdotto => _$this._tipoProdotto;
  set tipoProdotto(String? tipoProdotto) => _$this._tipoProdotto = tipoProdotto;

  num? _valoreBene;
  num? get valoreBene => _$this._valoreBene;
  set valoreBene(num? valoreBene) => _$this._valoreBene = valoreBene;

  ImportoMinimoCommissioniRequestBuilder() {
    ImportoMinimoCommissioniRequest._defaults(this);
  }

  ImportoMinimoCommissioniRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _codiceProdotto = $v.codiceProdotto;
      _convenzionato = $v.convenzionato;
      _dataImmatricolazione = $v.dataImmatricolazione;
      _importoFinanziato = $v.importoFinanziato;
      _numeroRate = $v.numeroRate;
      _tabellaFinanziaria = $v.tabellaFinanziaria;
      _tipoPersona = $v.tipoPersona;
      _tipoProdotto = $v.tipoProdotto;
      _valoreBene = $v.valoreBene;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImportoMinimoCommissioniRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ImportoMinimoCommissioniRequest;
  }

  @override
  void update(void Function(ImportoMinimoCommissioniRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ImportoMinimoCommissioniRequest build() => _build();

  _$ImportoMinimoCommissioniRequest _build() {
    final _$result = _$v ??
        new _$ImportoMinimoCommissioniRequest._(
          codiceProdotto: BuiltValueNullFieldError.checkNotNull(codiceProdotto,
              r'ImportoMinimoCommissioniRequest', 'codiceProdotto'),
          convenzionato: BuiltValueNullFieldError.checkNotNull(convenzionato,
              r'ImportoMinimoCommissioniRequest', 'convenzionato'),
          dataImmatricolazione: dataImmatricolazione,
          importoFinanziato: BuiltValueNullFieldError.checkNotNull(
              importoFinanziato,
              r'ImportoMinimoCommissioniRequest',
              'importoFinanziato'),
          numeroRate: BuiltValueNullFieldError.checkNotNull(
              numeroRate, r'ImportoMinimoCommissioniRequest', 'numeroRate'),
          tabellaFinanziaria: BuiltValueNullFieldError.checkNotNull(
              tabellaFinanziaria,
              r'ImportoMinimoCommissioniRequest',
              'tabellaFinanziaria'),
          tipoPersona: BuiltValueNullFieldError.checkNotNull(
              tipoPersona, r'ImportoMinimoCommissioniRequest', 'tipoPersona'),
          tipoProdotto: BuiltValueNullFieldError.checkNotNull(
              tipoProdotto, r'ImportoMinimoCommissioniRequest', 'tipoProdotto'),
          valoreBene: BuiltValueNullFieldError.checkNotNull(
              valoreBene, r'ImportoMinimoCommissioniRequest', 'valoreBene'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
