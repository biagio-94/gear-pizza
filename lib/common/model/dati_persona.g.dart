// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dati_persona.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DatiPersona extends DatiPersona {
  @override
  final String? nome;
  @override
  final String? cognome;
  @override
  final String? nazionalita;
  @override
  final String? provinciaNascita;
  @override
  final String? comuneNascita;
  @override
  final String? comuneRilascioDocumento;
  @override
  final int? dataNascita;
  @override
  final int? dataRilascioDocumento;
  @override
  final int? dataScadenzaDocumento;
  @override
  final String? comuneResidenza;
  @override
  final String? tipoDocumento;
  @override
  final String? provinciaDiResidenza;
  @override
  final String? indirizzoResidenza;
  @override
  final int? capResidenza;
  @override
  final String? comuneDomicilio;
  @override
  final String? provinciaDomicilio;
  @override
  final String? indirizzoDomicilio;
  @override
  final int? capDomicilio;
  @override
  final String? numeroDocumento;

  factory _$DatiPersona([void Function(DatiPersonaBuilder)? updates]) =>
      (new DatiPersonaBuilder()..update(updates))._build();

  _$DatiPersona._(
      {this.nome,
      this.cognome,
      this.nazionalita,
      this.provinciaNascita,
      this.comuneNascita,
      this.comuneRilascioDocumento,
      this.dataNascita,
      this.dataRilascioDocumento,
      this.dataScadenzaDocumento,
      this.comuneResidenza,
      this.tipoDocumento,
      this.provinciaDiResidenza,
      this.indirizzoResidenza,
      this.capResidenza,
      this.comuneDomicilio,
      this.provinciaDomicilio,
      this.indirizzoDomicilio,
      this.capDomicilio,
      this.numeroDocumento})
      : super._();

  @override
  DatiPersona rebuild(void Function(DatiPersonaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DatiPersonaBuilder toBuilder() => new DatiPersonaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DatiPersona &&
        nome == other.nome &&
        cognome == other.cognome &&
        nazionalita == other.nazionalita &&
        provinciaNascita == other.provinciaNascita &&
        comuneNascita == other.comuneNascita &&
        comuneRilascioDocumento == other.comuneRilascioDocumento &&
        dataNascita == other.dataNascita &&
        dataRilascioDocumento == other.dataRilascioDocumento &&
        dataScadenzaDocumento == other.dataScadenzaDocumento &&
        comuneResidenza == other.comuneResidenza &&
        tipoDocumento == other.tipoDocumento &&
        provinciaDiResidenza == other.provinciaDiResidenza &&
        indirizzoResidenza == other.indirizzoResidenza &&
        capResidenza == other.capResidenza &&
        comuneDomicilio == other.comuneDomicilio &&
        provinciaDomicilio == other.provinciaDomicilio &&
        indirizzoDomicilio == other.indirizzoDomicilio &&
        capDomicilio == other.capDomicilio &&
        numeroDocumento == other.numeroDocumento;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nome.hashCode);
    _$hash = $jc(_$hash, cognome.hashCode);
    _$hash = $jc(_$hash, nazionalita.hashCode);
    _$hash = $jc(_$hash, provinciaNascita.hashCode);
    _$hash = $jc(_$hash, comuneNascita.hashCode);
    _$hash = $jc(_$hash, comuneRilascioDocumento.hashCode);
    _$hash = $jc(_$hash, dataNascita.hashCode);
    _$hash = $jc(_$hash, dataRilascioDocumento.hashCode);
    _$hash = $jc(_$hash, dataScadenzaDocumento.hashCode);
    _$hash = $jc(_$hash, comuneResidenza.hashCode);
    _$hash = $jc(_$hash, tipoDocumento.hashCode);
    _$hash = $jc(_$hash, provinciaDiResidenza.hashCode);
    _$hash = $jc(_$hash, indirizzoResidenza.hashCode);
    _$hash = $jc(_$hash, capResidenza.hashCode);
    _$hash = $jc(_$hash, comuneDomicilio.hashCode);
    _$hash = $jc(_$hash, provinciaDomicilio.hashCode);
    _$hash = $jc(_$hash, indirizzoDomicilio.hashCode);
    _$hash = $jc(_$hash, capDomicilio.hashCode);
    _$hash = $jc(_$hash, numeroDocumento.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DatiPersona')
          ..add('nome', nome)
          ..add('cognome', cognome)
          ..add('nazionalita', nazionalita)
          ..add('provinciaNascita', provinciaNascita)
          ..add('comuneNascita', comuneNascita)
          ..add('comuneRilascioDocumento', comuneRilascioDocumento)
          ..add('dataNascita', dataNascita)
          ..add('dataRilascioDocumento', dataRilascioDocumento)
          ..add('dataScadenzaDocumento', dataScadenzaDocumento)
          ..add('comuneResidenza', comuneResidenza)
          ..add('tipoDocumento', tipoDocumento)
          ..add('provinciaDiResidenza', provinciaDiResidenza)
          ..add('indirizzoResidenza', indirizzoResidenza)
          ..add('capResidenza', capResidenza)
          ..add('comuneDomicilio', comuneDomicilio)
          ..add('provinciaDomicilio', provinciaDomicilio)
          ..add('indirizzoDomicilio', indirizzoDomicilio)
          ..add('capDomicilio', capDomicilio)
          ..add('numeroDocumento', numeroDocumento))
        .toString();
  }
}

class DatiPersonaBuilder implements Builder<DatiPersona, DatiPersonaBuilder> {
  _$DatiPersona? _$v;

  String? _nome;
  String? get nome => _$this._nome;
  set nome(String? nome) => _$this._nome = nome;

  String? _cognome;
  String? get cognome => _$this._cognome;
  set cognome(String? cognome) => _$this._cognome = cognome;

  String? _nazionalita;
  String? get nazionalita => _$this._nazionalita;
  set nazionalita(String? nazionalita) => _$this._nazionalita = nazionalita;

  String? _provinciaNascita;
  String? get provinciaNascita => _$this._provinciaNascita;
  set provinciaNascita(String? provinciaNascita) =>
      _$this._provinciaNascita = provinciaNascita;

  String? _comuneNascita;
  String? get comuneNascita => _$this._comuneNascita;
  set comuneNascita(String? comuneNascita) =>
      _$this._comuneNascita = comuneNascita;

  String? _comuneRilascioDocumento;
  String? get comuneRilascioDocumento => _$this._comuneRilascioDocumento;
  set comuneRilascioDocumento(String? comuneRilascioDocumento) =>
      _$this._comuneRilascioDocumento = comuneRilascioDocumento;

  int? _dataNascita;
  int? get dataNascita => _$this._dataNascita;
  set dataNascita(int? dataNascita) => _$this._dataNascita = dataNascita;

  int? _dataRilascioDocumento;
  int? get dataRilascioDocumento => _$this._dataRilascioDocumento;
  set dataRilascioDocumento(int? dataRilascioDocumento) =>
      _$this._dataRilascioDocumento = dataRilascioDocumento;

  int? _dataScadenzaDocumento;
  int? get dataScadenzaDocumento => _$this._dataScadenzaDocumento;
  set dataScadenzaDocumento(int? dataScadenzaDocumento) =>
      _$this._dataScadenzaDocumento = dataScadenzaDocumento;

  String? _comuneResidenza;
  String? get comuneResidenza => _$this._comuneResidenza;
  set comuneResidenza(String? comuneResidenza) =>
      _$this._comuneResidenza = comuneResidenza;

  String? _tipoDocumento;
  String? get tipoDocumento => _$this._tipoDocumento;
  set tipoDocumento(String? tipoDocumento) =>
      _$this._tipoDocumento = tipoDocumento;

  String? _provinciaDiResidenza;
  String? get provinciaDiResidenza => _$this._provinciaDiResidenza;
  set provinciaDiResidenza(String? provinciaDiResidenza) =>
      _$this._provinciaDiResidenza = provinciaDiResidenza;

  String? _indirizzoResidenza;
  String? get indirizzoResidenza => _$this._indirizzoResidenza;
  set indirizzoResidenza(String? indirizzoResidenza) =>
      _$this._indirizzoResidenza = indirizzoResidenza;

  int? _capResidenza;
  int? get capResidenza => _$this._capResidenza;
  set capResidenza(int? capResidenza) => _$this._capResidenza = capResidenza;

  String? _comuneDomicilio;
  String? get comuneDomicilio => _$this._comuneDomicilio;
  set comuneDomicilio(String? comuneDomicilio) =>
      _$this._comuneDomicilio = comuneDomicilio;

  String? _provinciaDomicilio;
  String? get provinciaDomicilio => _$this._provinciaDomicilio;
  set provinciaDomicilio(String? provinciaDomicilio) =>
      _$this._provinciaDomicilio = provinciaDomicilio;

  String? _indirizzoDomicilio;
  String? get indirizzoDomicilio => _$this._indirizzoDomicilio;
  set indirizzoDomicilio(String? indirizzoDomicilio) =>
      _$this._indirizzoDomicilio = indirizzoDomicilio;

  int? _capDomicilio;
  int? get capDomicilio => _$this._capDomicilio;
  set capDomicilio(int? capDomicilio) => _$this._capDomicilio = capDomicilio;

  String? _numeroDocumento;
  String? get numeroDocumento => _$this._numeroDocumento;
  set numeroDocumento(String? numeroDocumento) =>
      _$this._numeroDocumento = numeroDocumento;

  DatiPersonaBuilder() {
    DatiPersona._defaults(this);
  }

  DatiPersonaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nome = $v.nome;
      _cognome = $v.cognome;
      _nazionalita = $v.nazionalita;
      _provinciaNascita = $v.provinciaNascita;
      _comuneNascita = $v.comuneNascita;
      _comuneRilascioDocumento = $v.comuneRilascioDocumento;
      _dataNascita = $v.dataNascita;
      _dataRilascioDocumento = $v.dataRilascioDocumento;
      _dataScadenzaDocumento = $v.dataScadenzaDocumento;
      _comuneResidenza = $v.comuneResidenza;
      _tipoDocumento = $v.tipoDocumento;
      _provinciaDiResidenza = $v.provinciaDiResidenza;
      _indirizzoResidenza = $v.indirizzoResidenza;
      _capResidenza = $v.capResidenza;
      _comuneDomicilio = $v.comuneDomicilio;
      _provinciaDomicilio = $v.provinciaDomicilio;
      _indirizzoDomicilio = $v.indirizzoDomicilio;
      _capDomicilio = $v.capDomicilio;
      _numeroDocumento = $v.numeroDocumento;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DatiPersona other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DatiPersona;
  }

  @override
  void update(void Function(DatiPersonaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DatiPersona build() => _build();

  _$DatiPersona _build() {
    final _$result = _$v ??
        new _$DatiPersona._(
          nome: nome,
          cognome: cognome,
          nazionalita: nazionalita,
          provinciaNascita: provinciaNascita,
          comuneNascita: comuneNascita,
          comuneRilascioDocumento: comuneRilascioDocumento,
          dataNascita: dataNascita,
          dataRilascioDocumento: dataRilascioDocumento,
          dataScadenzaDocumento: dataScadenzaDocumento,
          comuneResidenza: comuneResidenza,
          tipoDocumento: tipoDocumento,
          provinciaDiResidenza: provinciaDiResidenza,
          indirizzoResidenza: indirizzoResidenza,
          capResidenza: capResidenza,
          comuneDomicilio: comuneDomicilio,
          provinciaDomicilio: provinciaDomicilio,
          indirizzoDomicilio: indirizzoDomicilio,
          capDomicilio: capDomicilio,
          numeroDocumento: numeroDocumento,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
