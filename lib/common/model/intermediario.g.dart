// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'intermediario.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Intermediario extends Intermediario {
  @override
  final int? codice;
  @override
  final String? collegato;
  @override
  final String? ragioneSociale;
  @override
  final String? responsabile;
  @override
  final String? tipoIntermediario;
  @override
  final String? utenteCapoCatena;
  @override
  final BuiltList<String>? ruoli;
  @override
  final BuiltList<String>? tabelleSpecimen;
  @override
  final bool? notifiche;

  factory _$Intermediario([void Function(IntermediarioBuilder)? updates]) =>
      (new IntermediarioBuilder()..update(updates))._build();

  _$Intermediario._(
      {this.codice,
      this.collegato,
      this.ragioneSociale,
      this.responsabile,
      this.tipoIntermediario,
      this.utenteCapoCatena,
      this.ruoli,
      this.tabelleSpecimen,
      this.notifiche})
      : super._();

  @override
  Intermediario rebuild(void Function(IntermediarioBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IntermediarioBuilder toBuilder() => new IntermediarioBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Intermediario &&
        codice == other.codice &&
        collegato == other.collegato &&
        ragioneSociale == other.ragioneSociale &&
        responsabile == other.responsabile &&
        tipoIntermediario == other.tipoIntermediario &&
        utenteCapoCatena == other.utenteCapoCatena &&
        ruoli == other.ruoli &&
        tabelleSpecimen == other.tabelleSpecimen &&
        notifiche == other.notifiche;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, codice.hashCode);
    _$hash = $jc(_$hash, collegato.hashCode);
    _$hash = $jc(_$hash, ragioneSociale.hashCode);
    _$hash = $jc(_$hash, responsabile.hashCode);
    _$hash = $jc(_$hash, tipoIntermediario.hashCode);
    _$hash = $jc(_$hash, utenteCapoCatena.hashCode);
    _$hash = $jc(_$hash, ruoli.hashCode);
    _$hash = $jc(_$hash, tabelleSpecimen.hashCode);
    _$hash = $jc(_$hash, notifiche.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Intermediario')
          ..add('codice', codice)
          ..add('collegato', collegato)
          ..add('ragioneSociale', ragioneSociale)
          ..add('responsabile', responsabile)
          ..add('tipoIntermediario', tipoIntermediario)
          ..add('utenteCapoCatena', utenteCapoCatena)
          ..add('ruoli', ruoli)
          ..add('tabelleSpecimen', tabelleSpecimen)
          ..add('notifiche', notifiche))
        .toString();
  }
}

class IntermediarioBuilder
    implements Builder<Intermediario, IntermediarioBuilder> {
  _$Intermediario? _$v;

  int? _codice;
  int? get codice => _$this._codice;
  set codice(int? codice) => _$this._codice = codice;

  String? _collegato;
  String? get collegato => _$this._collegato;
  set collegato(String? collegato) => _$this._collegato = collegato;

  String? _ragioneSociale;
  String? get ragioneSociale => _$this._ragioneSociale;
  set ragioneSociale(String? ragioneSociale) =>
      _$this._ragioneSociale = ragioneSociale;

  String? _responsabile;
  String? get responsabile => _$this._responsabile;
  set responsabile(String? responsabile) => _$this._responsabile = responsabile;

  String? _tipoIntermediario;
  String? get tipoIntermediario => _$this._tipoIntermediario;
  set tipoIntermediario(String? tipoIntermediario) =>
      _$this._tipoIntermediario = tipoIntermediario;

  String? _utenteCapoCatena;
  String? get utenteCapoCatena => _$this._utenteCapoCatena;
  set utenteCapoCatena(String? utenteCapoCatena) =>
      _$this._utenteCapoCatena = utenteCapoCatena;

  ListBuilder<String>? _ruoli;
  ListBuilder<String> get ruoli => _$this._ruoli ??= new ListBuilder<String>();
  set ruoli(ListBuilder<String>? ruoli) => _$this._ruoli = ruoli;

  ListBuilder<String>? _tabelleSpecimen;
  ListBuilder<String> get tabelleSpecimen =>
      _$this._tabelleSpecimen ??= new ListBuilder<String>();
  set tabelleSpecimen(ListBuilder<String>? tabelleSpecimen) =>
      _$this._tabelleSpecimen = tabelleSpecimen;

  bool? _notifiche;
  bool? get notifiche => _$this._notifiche;
  set notifiche(bool? notifiche) => _$this._notifiche = notifiche;

  IntermediarioBuilder() {
    Intermediario._defaults(this);
  }

  IntermediarioBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _codice = $v.codice;
      _collegato = $v.collegato;
      _ragioneSociale = $v.ragioneSociale;
      _responsabile = $v.responsabile;
      _tipoIntermediario = $v.tipoIntermediario;
      _utenteCapoCatena = $v.utenteCapoCatena;
      _ruoli = $v.ruoli?.toBuilder();
      _tabelleSpecimen = $v.tabelleSpecimen?.toBuilder();
      _notifiche = $v.notifiche;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Intermediario other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Intermediario;
  }

  @override
  void update(void Function(IntermediarioBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Intermediario build() => _build();

  _$Intermediario _build() {
    _$Intermediario _$result;
    try {
      _$result = _$v ??
          new _$Intermediario._(
            codice: codice,
            collegato: collegato,
            ragioneSociale: ragioneSociale,
            responsabile: responsabile,
            tipoIntermediario: tipoIntermediario,
            utenteCapoCatena: utenteCapoCatena,
            ruoli: _ruoli?.build(),
            tabelleSpecimen: _tabelleSpecimen?.build(),
            notifiche: notifiche,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ruoli';
        _ruoli?.build();
        _$failedField = 'tabelleSpecimen';
        _tabelleSpecimen?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Intermediario', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
