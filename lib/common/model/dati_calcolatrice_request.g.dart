// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dati_calcolatrice_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DatiCalcolatriceRequest extends DatiCalcolatriceRequest {
  @override
  final num? importo;
  @override
  final String? prodotto;
  @override
  final num? valoreBene;
  @override
  final String? tabellaFinanziaria;
  @override
  final num? commissioni;
  @override
  final int? collegatoCorto;
  @override
  final String? servizioCpi;

  factory _$DatiCalcolatriceRequest(
          [void Function(DatiCalcolatriceRequestBuilder)? updates]) =>
      (new DatiCalcolatriceRequestBuilder()..update(updates))._build();

  _$DatiCalcolatriceRequest._(
      {this.importo,
      this.prodotto,
      this.valoreBene,
      this.tabellaFinanziaria,
      this.commissioni,
      this.collegatoCorto,
      this.servizioCpi})
      : super._();

  @override
  DatiCalcolatriceRequest rebuild(
          void Function(DatiCalcolatriceRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DatiCalcolatriceRequestBuilder toBuilder() =>
      new DatiCalcolatriceRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DatiCalcolatriceRequest &&
        importo == other.importo &&
        prodotto == other.prodotto &&
        valoreBene == other.valoreBene &&
        tabellaFinanziaria == other.tabellaFinanziaria &&
        commissioni == other.commissioni &&
        collegatoCorto == other.collegatoCorto &&
        servizioCpi == other.servizioCpi;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, importo.hashCode);
    _$hash = $jc(_$hash, prodotto.hashCode);
    _$hash = $jc(_$hash, valoreBene.hashCode);
    _$hash = $jc(_$hash, tabellaFinanziaria.hashCode);
    _$hash = $jc(_$hash, commissioni.hashCode);
    _$hash = $jc(_$hash, collegatoCorto.hashCode);
    _$hash = $jc(_$hash, servizioCpi.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DatiCalcolatriceRequest')
          ..add('importo', importo)
          ..add('prodotto', prodotto)
          ..add('valoreBene', valoreBene)
          ..add('tabellaFinanziaria', tabellaFinanziaria)
          ..add('commissioni', commissioni)
          ..add('collegatoCorto', collegatoCorto)
          ..add('servizioCpi', servizioCpi))
        .toString();
  }
}

class DatiCalcolatriceRequestBuilder
    implements
        Builder<DatiCalcolatriceRequest, DatiCalcolatriceRequestBuilder> {
  _$DatiCalcolatriceRequest? _$v;

  num? _importo;
  num? get importo => _$this._importo;
  set importo(num? importo) => _$this._importo = importo;

  String? _prodotto;
  String? get prodotto => _$this._prodotto;
  set prodotto(String? prodotto) => _$this._prodotto = prodotto;

  num? _valoreBene;
  num? get valoreBene => _$this._valoreBene;
  set valoreBene(num? valoreBene) => _$this._valoreBene = valoreBene;

  String? _tabellaFinanziaria;
  String? get tabellaFinanziaria => _$this._tabellaFinanziaria;
  set tabellaFinanziaria(String? tabellaFinanziaria) =>
      _$this._tabellaFinanziaria = tabellaFinanziaria;

  num? _commissioni;
  num? get commissioni => _$this._commissioni;
  set commissioni(num? commissioni) => _$this._commissioni = commissioni;

  int? _collegatoCorto;
  int? get collegatoCorto => _$this._collegatoCorto;
  set collegatoCorto(int? collegatoCorto) =>
      _$this._collegatoCorto = collegatoCorto;

  String? _servizioCpi;
  String? get servizioCpi => _$this._servizioCpi;
  set servizioCpi(String? servizioCpi) => _$this._servizioCpi = servizioCpi;

  DatiCalcolatriceRequestBuilder() {
    DatiCalcolatriceRequest._defaults(this);
  }

  DatiCalcolatriceRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _importo = $v.importo;
      _prodotto = $v.prodotto;
      _valoreBene = $v.valoreBene;
      _tabellaFinanziaria = $v.tabellaFinanziaria;
      _commissioni = $v.commissioni;
      _collegatoCorto = $v.collegatoCorto;
      _servizioCpi = $v.servizioCpi;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DatiCalcolatriceRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DatiCalcolatriceRequest;
  }

  @override
  void update(void Function(DatiCalcolatriceRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DatiCalcolatriceRequest build() => _build();

  _$DatiCalcolatriceRequest _build() {
    final _$result = _$v ??
        new _$DatiCalcolatriceRequest._(
          importo: importo,
          prodotto: prodotto,
          valoreBene: valoreBene,
          tabellaFinanziaria: tabellaFinanziaria,
          commissioni: commissioni,
          collegatoCorto: collegatoCorto,
          servizioCpi: servizioCpi,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
