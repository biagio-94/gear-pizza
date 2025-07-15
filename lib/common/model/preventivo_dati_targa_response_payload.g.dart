// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preventivo_dati_targa_response_payload.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PreventivoDatiTargaResponsePayload
    extends PreventivoDatiTargaResponsePayload {
  @override
  final String? annoImmatricolazione;
  @override
  final String? meseImmatricolazione;
  @override
  final String? telaio;
  @override
  final String? targaPrecedente;
  @override
  final String? infocarMarca;
  @override
  final String? infocarModello;
  @override
  final String? codiceProdotto;
  @override
  final BuiltList<Allestimento>? allestimenti;

  factory _$PreventivoDatiTargaResponsePayload(
          [void Function(PreventivoDatiTargaResponsePayloadBuilder)?
              updates]) =>
      (new PreventivoDatiTargaResponsePayloadBuilder()..update(updates))
          ._build();

  _$PreventivoDatiTargaResponsePayload._(
      {this.annoImmatricolazione,
      this.meseImmatricolazione,
      this.telaio,
      this.targaPrecedente,
      this.infocarMarca,
      this.infocarModello,
      this.codiceProdotto,
      this.allestimenti})
      : super._();

  @override
  PreventivoDatiTargaResponsePayload rebuild(
          void Function(PreventivoDatiTargaResponsePayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PreventivoDatiTargaResponsePayloadBuilder toBuilder() =>
      new PreventivoDatiTargaResponsePayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PreventivoDatiTargaResponsePayload &&
        annoImmatricolazione == other.annoImmatricolazione &&
        meseImmatricolazione == other.meseImmatricolazione &&
        telaio == other.telaio &&
        targaPrecedente == other.targaPrecedente &&
        infocarMarca == other.infocarMarca &&
        infocarModello == other.infocarModello &&
        codiceProdotto == other.codiceProdotto &&
        allestimenti == other.allestimenti;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, annoImmatricolazione.hashCode);
    _$hash = $jc(_$hash, meseImmatricolazione.hashCode);
    _$hash = $jc(_$hash, telaio.hashCode);
    _$hash = $jc(_$hash, targaPrecedente.hashCode);
    _$hash = $jc(_$hash, infocarMarca.hashCode);
    _$hash = $jc(_$hash, infocarModello.hashCode);
    _$hash = $jc(_$hash, codiceProdotto.hashCode);
    _$hash = $jc(_$hash, allestimenti.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PreventivoDatiTargaResponsePayload')
          ..add('annoImmatricolazione', annoImmatricolazione)
          ..add('meseImmatricolazione', meseImmatricolazione)
          ..add('telaio', telaio)
          ..add('targaPrecedente', targaPrecedente)
          ..add('infocarMarca', infocarMarca)
          ..add('infocarModello', infocarModello)
          ..add('codiceProdotto', codiceProdotto)
          ..add('allestimenti', allestimenti))
        .toString();
  }
}

class PreventivoDatiTargaResponsePayloadBuilder
    implements
        Builder<PreventivoDatiTargaResponsePayload,
            PreventivoDatiTargaResponsePayloadBuilder> {
  _$PreventivoDatiTargaResponsePayload? _$v;

  String? _annoImmatricolazione;
  String? get annoImmatricolazione => _$this._annoImmatricolazione;
  set annoImmatricolazione(String? annoImmatricolazione) =>
      _$this._annoImmatricolazione = annoImmatricolazione;

  String? _meseImmatricolazione;
  String? get meseImmatricolazione => _$this._meseImmatricolazione;
  set meseImmatricolazione(String? meseImmatricolazione) =>
      _$this._meseImmatricolazione = meseImmatricolazione;

  String? _telaio;
  String? get telaio => _$this._telaio;
  set telaio(String? telaio) => _$this._telaio = telaio;

  String? _targaPrecedente;
  String? get targaPrecedente => _$this._targaPrecedente;
  set targaPrecedente(String? targaPrecedente) =>
      _$this._targaPrecedente = targaPrecedente;

  String? _infocarMarca;
  String? get infocarMarca => _$this._infocarMarca;
  set infocarMarca(String? infocarMarca) => _$this._infocarMarca = infocarMarca;

  String? _infocarModello;
  String? get infocarModello => _$this._infocarModello;
  set infocarModello(String? infocarModello) =>
      _$this._infocarModello = infocarModello;

  String? _codiceProdotto;
  String? get codiceProdotto => _$this._codiceProdotto;
  set codiceProdotto(String? codiceProdotto) =>
      _$this._codiceProdotto = codiceProdotto;

  ListBuilder<Allestimento>? _allestimenti;
  ListBuilder<Allestimento> get allestimenti =>
      _$this._allestimenti ??= new ListBuilder<Allestimento>();
  set allestimenti(ListBuilder<Allestimento>? allestimenti) =>
      _$this._allestimenti = allestimenti;

  PreventivoDatiTargaResponsePayloadBuilder() {
    PreventivoDatiTargaResponsePayload._defaults(this);
  }

  PreventivoDatiTargaResponsePayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _annoImmatricolazione = $v.annoImmatricolazione;
      _meseImmatricolazione = $v.meseImmatricolazione;
      _telaio = $v.telaio;
      _targaPrecedente = $v.targaPrecedente;
      _infocarMarca = $v.infocarMarca;
      _infocarModello = $v.infocarModello;
      _codiceProdotto = $v.codiceProdotto;
      _allestimenti = $v.allestimenti?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PreventivoDatiTargaResponsePayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PreventivoDatiTargaResponsePayload;
  }

  @override
  void update(
      void Function(PreventivoDatiTargaResponsePayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PreventivoDatiTargaResponsePayload build() => _build();

  _$PreventivoDatiTargaResponsePayload _build() {
    _$PreventivoDatiTargaResponsePayload _$result;
    try {
      _$result = _$v ??
          new _$PreventivoDatiTargaResponsePayload._(
            annoImmatricolazione: annoImmatricolazione,
            meseImmatricolazione: meseImmatricolazione,
            telaio: telaio,
            targaPrecedente: targaPrecedente,
            infocarMarca: infocarMarca,
            infocarModello: infocarModello,
            codiceProdotto: codiceProdotto,
            allestimenti: _allestimenti?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'allestimenti';
        _allestimenti?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PreventivoDatiTargaResponsePayload', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
