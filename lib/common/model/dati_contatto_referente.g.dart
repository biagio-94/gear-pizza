// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dati_contatto_referente.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DatiContattoReferente extends DatiContattoReferente {
  @override
  final String? idDispositivo;
  @override
  final String? mail;
  @override
  final String? cellulare;
  @override
  final String? nome;
  @override
  final String? cognome;

  factory _$DatiContattoReferente(
          [void Function(DatiContattoReferenteBuilder)? updates]) =>
      (new DatiContattoReferenteBuilder()..update(updates))._build();

  _$DatiContattoReferente._(
      {this.idDispositivo, this.mail, this.cellulare, this.nome, this.cognome})
      : super._();

  @override
  DatiContattoReferente rebuild(
          void Function(DatiContattoReferenteBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DatiContattoReferenteBuilder toBuilder() =>
      new DatiContattoReferenteBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DatiContattoReferente &&
        idDispositivo == other.idDispositivo &&
        mail == other.mail &&
        cellulare == other.cellulare &&
        nome == other.nome &&
        cognome == other.cognome;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, idDispositivo.hashCode);
    _$hash = $jc(_$hash, mail.hashCode);
    _$hash = $jc(_$hash, cellulare.hashCode);
    _$hash = $jc(_$hash, nome.hashCode);
    _$hash = $jc(_$hash, cognome.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DatiContattoReferente')
          ..add('idDispositivo', idDispositivo)
          ..add('mail', mail)
          ..add('cellulare', cellulare)
          ..add('nome', nome)
          ..add('cognome', cognome))
        .toString();
  }
}

class DatiContattoReferenteBuilder
    implements Builder<DatiContattoReferente, DatiContattoReferenteBuilder> {
  _$DatiContattoReferente? _$v;

  String? _idDispositivo;
  String? get idDispositivo => _$this._idDispositivo;
  set idDispositivo(String? idDispositivo) =>
      _$this._idDispositivo = idDispositivo;

  String? _mail;
  String? get mail => _$this._mail;
  set mail(String? mail) => _$this._mail = mail;

  String? _cellulare;
  String? get cellulare => _$this._cellulare;
  set cellulare(String? cellulare) => _$this._cellulare = cellulare;

  String? _nome;
  String? get nome => _$this._nome;
  set nome(String? nome) => _$this._nome = nome;

  String? _cognome;
  String? get cognome => _$this._cognome;
  set cognome(String? cognome) => _$this._cognome = cognome;

  DatiContattoReferenteBuilder() {
    DatiContattoReferente._defaults(this);
  }

  DatiContattoReferenteBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _idDispositivo = $v.idDispositivo;
      _mail = $v.mail;
      _cellulare = $v.cellulare;
      _nome = $v.nome;
      _cognome = $v.cognome;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DatiContattoReferente other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DatiContattoReferente;
  }

  @override
  void update(void Function(DatiContattoReferenteBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DatiContattoReferente build() => _build();

  _$DatiContattoReferente _build() {
    final _$result = _$v ??
        new _$DatiContattoReferente._(
          idDispositivo: idDispositivo,
          mail: mail,
          cellulare: cellulare,
          nome: nome,
          cognome: cognome,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
