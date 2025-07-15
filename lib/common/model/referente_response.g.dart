// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'referente_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReferenteResponse extends ReferenteResponse {
  @override
  final String? id;
  @override
  final String? nome;
  @override
  final String? cognome;
  @override
  final String? mail;
  @override
  final String? cellulare;
  @override
  final String? dataNascita;
  @override
  final bool? flagCacellato;
  @override
  final bool? flagConfigurato;
  @override
  final String? idDispositivo;

  factory _$ReferenteResponse(
          [void Function(ReferenteResponseBuilder)? updates]) =>
      (new ReferenteResponseBuilder()..update(updates))._build();

  _$ReferenteResponse._(
      {this.id,
      this.nome,
      this.cognome,
      this.mail,
      this.cellulare,
      this.dataNascita,
      this.flagCacellato,
      this.flagConfigurato,
      this.idDispositivo})
      : super._();

  @override
  ReferenteResponse rebuild(void Function(ReferenteResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReferenteResponseBuilder toBuilder() =>
      new ReferenteResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReferenteResponse &&
        id == other.id &&
        nome == other.nome &&
        cognome == other.cognome &&
        mail == other.mail &&
        cellulare == other.cellulare &&
        dataNascita == other.dataNascita &&
        flagCacellato == other.flagCacellato &&
        flagConfigurato == other.flagConfigurato &&
        idDispositivo == other.idDispositivo;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, nome.hashCode);
    _$hash = $jc(_$hash, cognome.hashCode);
    _$hash = $jc(_$hash, mail.hashCode);
    _$hash = $jc(_$hash, cellulare.hashCode);
    _$hash = $jc(_$hash, dataNascita.hashCode);
    _$hash = $jc(_$hash, flagCacellato.hashCode);
    _$hash = $jc(_$hash, flagConfigurato.hashCode);
    _$hash = $jc(_$hash, idDispositivo.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReferenteResponse')
          ..add('id', id)
          ..add('nome', nome)
          ..add('cognome', cognome)
          ..add('mail', mail)
          ..add('cellulare', cellulare)
          ..add('dataNascita', dataNascita)
          ..add('flagCacellato', flagCacellato)
          ..add('flagConfigurato', flagConfigurato)
          ..add('idDispositivo', idDispositivo))
        .toString();
  }
}

class ReferenteResponseBuilder
    implements Builder<ReferenteResponse, ReferenteResponseBuilder> {
  _$ReferenteResponse? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _nome;
  String? get nome => _$this._nome;
  set nome(String? nome) => _$this._nome = nome;

  String? _cognome;
  String? get cognome => _$this._cognome;
  set cognome(String? cognome) => _$this._cognome = cognome;

  String? _mail;
  String? get mail => _$this._mail;
  set mail(String? mail) => _$this._mail = mail;

  String? _cellulare;
  String? get cellulare => _$this._cellulare;
  set cellulare(String? cellulare) => _$this._cellulare = cellulare;

  String? _dataNascita;
  String? get dataNascita => _$this._dataNascita;
  set dataNascita(String? dataNascita) => _$this._dataNascita = dataNascita;

  bool? _flagCacellato;
  bool? get flagCacellato => _$this._flagCacellato;
  set flagCacellato(bool? flagCacellato) =>
      _$this._flagCacellato = flagCacellato;

  bool? _flagConfigurato;
  bool? get flagConfigurato => _$this._flagConfigurato;
  set flagConfigurato(bool? flagConfigurato) =>
      _$this._flagConfigurato = flagConfigurato;

  String? _idDispositivo;
  String? get idDispositivo => _$this._idDispositivo;
  set idDispositivo(String? idDispositivo) =>
      _$this._idDispositivo = idDispositivo;

  ReferenteResponseBuilder() {
    ReferenteResponse._defaults(this);
  }

  ReferenteResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _nome = $v.nome;
      _cognome = $v.cognome;
      _mail = $v.mail;
      _cellulare = $v.cellulare;
      _dataNascita = $v.dataNascita;
      _flagCacellato = $v.flagCacellato;
      _flagConfigurato = $v.flagConfigurato;
      _idDispositivo = $v.idDispositivo;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReferenteResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReferenteResponse;
  }

  @override
  void update(void Function(ReferenteResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReferenteResponse build() => _build();

  _$ReferenteResponse _build() {
    final _$result = _$v ??
        new _$ReferenteResponse._(
          id: id,
          nome: nome,
          cognome: cognome,
          mail: mail,
          cellulare: cellulare,
          dataNascita: dataNascita,
          flagCacellato: flagCacellato,
          flagConfigurato: flagConfigurato,
          idDispositivo: idDispositivo,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
