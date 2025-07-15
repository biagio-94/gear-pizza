// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dati_tessera_sanitaria.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DatiTesseraSanitaria extends DatiTesseraSanitaria {
  @override
  final String? nome;
  @override
  final String? cognome;
  @override
  final String? cittaNascita;
  @override
  final int? dataNascita;
  @override
  final String? codiceFiscale;
  @override
  final String? numeroTessera;
  @override
  final String? sesso;
  @override
  final int? dataScadenza;

  factory _$DatiTesseraSanitaria(
          [void Function(DatiTesseraSanitariaBuilder)? updates]) =>
      (new DatiTesseraSanitariaBuilder()..update(updates))._build();

  _$DatiTesseraSanitaria._(
      {this.nome,
      this.cognome,
      this.cittaNascita,
      this.dataNascita,
      this.codiceFiscale,
      this.numeroTessera,
      this.sesso,
      this.dataScadenza})
      : super._();

  @override
  DatiTesseraSanitaria rebuild(
          void Function(DatiTesseraSanitariaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DatiTesseraSanitariaBuilder toBuilder() =>
      new DatiTesseraSanitariaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DatiTesseraSanitaria &&
        nome == other.nome &&
        cognome == other.cognome &&
        cittaNascita == other.cittaNascita &&
        dataNascita == other.dataNascita &&
        codiceFiscale == other.codiceFiscale &&
        numeroTessera == other.numeroTessera &&
        sesso == other.sesso &&
        dataScadenza == other.dataScadenza;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nome.hashCode);
    _$hash = $jc(_$hash, cognome.hashCode);
    _$hash = $jc(_$hash, cittaNascita.hashCode);
    _$hash = $jc(_$hash, dataNascita.hashCode);
    _$hash = $jc(_$hash, codiceFiscale.hashCode);
    _$hash = $jc(_$hash, numeroTessera.hashCode);
    _$hash = $jc(_$hash, sesso.hashCode);
    _$hash = $jc(_$hash, dataScadenza.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DatiTesseraSanitaria')
          ..add('nome', nome)
          ..add('cognome', cognome)
          ..add('cittaNascita', cittaNascita)
          ..add('dataNascita', dataNascita)
          ..add('codiceFiscale', codiceFiscale)
          ..add('numeroTessera', numeroTessera)
          ..add('sesso', sesso)
          ..add('dataScadenza', dataScadenza))
        .toString();
  }
}

class DatiTesseraSanitariaBuilder
    implements Builder<DatiTesseraSanitaria, DatiTesseraSanitariaBuilder> {
  _$DatiTesseraSanitaria? _$v;

  String? _nome;
  String? get nome => _$this._nome;
  set nome(String? nome) => _$this._nome = nome;

  String? _cognome;
  String? get cognome => _$this._cognome;
  set cognome(String? cognome) => _$this._cognome = cognome;

  String? _cittaNascita;
  String? get cittaNascita => _$this._cittaNascita;
  set cittaNascita(String? cittaNascita) => _$this._cittaNascita = cittaNascita;

  int? _dataNascita;
  int? get dataNascita => _$this._dataNascita;
  set dataNascita(int? dataNascita) => _$this._dataNascita = dataNascita;

  String? _codiceFiscale;
  String? get codiceFiscale => _$this._codiceFiscale;
  set codiceFiscale(String? codiceFiscale) =>
      _$this._codiceFiscale = codiceFiscale;

  String? _numeroTessera;
  String? get numeroTessera => _$this._numeroTessera;
  set numeroTessera(String? numeroTessera) =>
      _$this._numeroTessera = numeroTessera;

  String? _sesso;
  String? get sesso => _$this._sesso;
  set sesso(String? sesso) => _$this._sesso = sesso;

  int? _dataScadenza;
  int? get dataScadenza => _$this._dataScadenza;
  set dataScadenza(int? dataScadenza) => _$this._dataScadenza = dataScadenza;

  DatiTesseraSanitariaBuilder() {
    DatiTesseraSanitaria._defaults(this);
  }

  DatiTesseraSanitariaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nome = $v.nome;
      _cognome = $v.cognome;
      _cittaNascita = $v.cittaNascita;
      _dataNascita = $v.dataNascita;
      _codiceFiscale = $v.codiceFiscale;
      _numeroTessera = $v.numeroTessera;
      _sesso = $v.sesso;
      _dataScadenza = $v.dataScadenza;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DatiTesseraSanitaria other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DatiTesseraSanitaria;
  }

  @override
  void update(void Function(DatiTesseraSanitariaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DatiTesseraSanitaria build() => _build();

  _$DatiTesseraSanitaria _build() {
    final _$result = _$v ??
        new _$DatiTesseraSanitaria._(
          nome: nome,
          cognome: cognome,
          cittaNascita: cittaNascita,
          dataNascita: dataNascita,
          codiceFiscale: codiceFiscale,
          numeroTessera: numeroTessera,
          sesso: sesso,
          dataScadenza: dataScadenza,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
