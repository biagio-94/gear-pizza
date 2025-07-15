// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pacchetto_assicurativo.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PacchettoAssicurativo extends PacchettoAssicurativo {
  @override
  final String? descrizione;
  @override
  final BuiltList<ServizioAssicurativo>? listaServizi;
  @override
  final String? linkFascicolo;
  @override
  final String? logo;
  @override
  final String? codicePacchetto;

  factory _$PacchettoAssicurativo(
          [void Function(PacchettoAssicurativoBuilder)? updates]) =>
      (new PacchettoAssicurativoBuilder()..update(updates))._build();

  _$PacchettoAssicurativo._(
      {this.descrizione,
      this.listaServizi,
      this.linkFascicolo,
      this.logo,
      this.codicePacchetto})
      : super._();

  @override
  PacchettoAssicurativo rebuild(
          void Function(PacchettoAssicurativoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PacchettoAssicurativoBuilder toBuilder() =>
      new PacchettoAssicurativoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PacchettoAssicurativo &&
        descrizione == other.descrizione &&
        listaServizi == other.listaServizi &&
        linkFascicolo == other.linkFascicolo &&
        logo == other.logo &&
        codicePacchetto == other.codicePacchetto;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, descrizione.hashCode);
    _$hash = $jc(_$hash, listaServizi.hashCode);
    _$hash = $jc(_$hash, linkFascicolo.hashCode);
    _$hash = $jc(_$hash, logo.hashCode);
    _$hash = $jc(_$hash, codicePacchetto.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PacchettoAssicurativo')
          ..add('descrizione', descrizione)
          ..add('listaServizi', listaServizi)
          ..add('linkFascicolo', linkFascicolo)
          ..add('logo', logo)
          ..add('codicePacchetto', codicePacchetto))
        .toString();
  }
}

class PacchettoAssicurativoBuilder
    implements Builder<PacchettoAssicurativo, PacchettoAssicurativoBuilder> {
  _$PacchettoAssicurativo? _$v;

  String? _descrizione;
  String? get descrizione => _$this._descrizione;
  set descrizione(String? descrizione) => _$this._descrizione = descrizione;

  ListBuilder<ServizioAssicurativo>? _listaServizi;
  ListBuilder<ServizioAssicurativo> get listaServizi =>
      _$this._listaServizi ??= new ListBuilder<ServizioAssicurativo>();
  set listaServizi(ListBuilder<ServizioAssicurativo>? listaServizi) =>
      _$this._listaServizi = listaServizi;

  String? _linkFascicolo;
  String? get linkFascicolo => _$this._linkFascicolo;
  set linkFascicolo(String? linkFascicolo) =>
      _$this._linkFascicolo = linkFascicolo;

  String? _logo;
  String? get logo => _$this._logo;
  set logo(String? logo) => _$this._logo = logo;

  String? _codicePacchetto;
  String? get codicePacchetto => _$this._codicePacchetto;
  set codicePacchetto(String? codicePacchetto) =>
      _$this._codicePacchetto = codicePacchetto;

  PacchettoAssicurativoBuilder() {
    PacchettoAssicurativo._defaults(this);
  }

  PacchettoAssicurativoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _descrizione = $v.descrizione;
      _listaServizi = $v.listaServizi?.toBuilder();
      _linkFascicolo = $v.linkFascicolo;
      _logo = $v.logo;
      _codicePacchetto = $v.codicePacchetto;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PacchettoAssicurativo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PacchettoAssicurativo;
  }

  @override
  void update(void Function(PacchettoAssicurativoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PacchettoAssicurativo build() => _build();

  _$PacchettoAssicurativo _build() {
    _$PacchettoAssicurativo _$result;
    try {
      _$result = _$v ??
          new _$PacchettoAssicurativo._(
            descrizione: descrizione,
            listaServizi: _listaServizi?.build(),
            linkFascicolo: linkFascicolo,
            logo: logo,
            codicePacchetto: codicePacchetto,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'listaServizi';
        _listaServizi?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PacchettoAssicurativo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
