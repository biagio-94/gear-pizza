// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notifiche_elenco_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NotificheElencoItem extends NotificheElencoItem {
  @override
  final String? pushId;
  @override
  final int? keyId;
  @override
  final String? titolo;
  @override
  final String? testo;
  @override
  final int? dataInvio;
  @override
  final int? oraInvio;
  @override
  final String? dati;

  factory _$NotificheElencoItem(
          [void Function(NotificheElencoItemBuilder)? updates]) =>
      (new NotificheElencoItemBuilder()..update(updates))._build();

  _$NotificheElencoItem._(
      {this.pushId,
      this.keyId,
      this.titolo,
      this.testo,
      this.dataInvio,
      this.oraInvio,
      this.dati})
      : super._();

  @override
  NotificheElencoItem rebuild(
          void Function(NotificheElencoItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotificheElencoItemBuilder toBuilder() =>
      new NotificheElencoItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificheElencoItem &&
        pushId == other.pushId &&
        keyId == other.keyId &&
        titolo == other.titolo &&
        testo == other.testo &&
        dataInvio == other.dataInvio &&
        oraInvio == other.oraInvio &&
        dati == other.dati;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, pushId.hashCode);
    _$hash = $jc(_$hash, keyId.hashCode);
    _$hash = $jc(_$hash, titolo.hashCode);
    _$hash = $jc(_$hash, testo.hashCode);
    _$hash = $jc(_$hash, dataInvio.hashCode);
    _$hash = $jc(_$hash, oraInvio.hashCode);
    _$hash = $jc(_$hash, dati.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NotificheElencoItem')
          ..add('pushId', pushId)
          ..add('keyId', keyId)
          ..add('titolo', titolo)
          ..add('testo', testo)
          ..add('dataInvio', dataInvio)
          ..add('oraInvio', oraInvio)
          ..add('dati', dati))
        .toString();
  }
}

class NotificheElencoItemBuilder
    implements Builder<NotificheElencoItem, NotificheElencoItemBuilder> {
  _$NotificheElencoItem? _$v;

  String? _pushId;
  String? get pushId => _$this._pushId;
  set pushId(String? pushId) => _$this._pushId = pushId;

  int? _keyId;
  int? get keyId => _$this._keyId;
  set keyId(int? keyId) => _$this._keyId = keyId;

  String? _titolo;
  String? get titolo => _$this._titolo;
  set titolo(String? titolo) => _$this._titolo = titolo;

  String? _testo;
  String? get testo => _$this._testo;
  set testo(String? testo) => _$this._testo = testo;

  int? _dataInvio;
  int? get dataInvio => _$this._dataInvio;
  set dataInvio(int? dataInvio) => _$this._dataInvio = dataInvio;

  int? _oraInvio;
  int? get oraInvio => _$this._oraInvio;
  set oraInvio(int? oraInvio) => _$this._oraInvio = oraInvio;

  String? _dati;
  String? get dati => _$this._dati;
  set dati(String? dati) => _$this._dati = dati;

  NotificheElencoItemBuilder() {
    NotificheElencoItem._defaults(this);
  }

  NotificheElencoItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _pushId = $v.pushId;
      _keyId = $v.keyId;
      _titolo = $v.titolo;
      _testo = $v.testo;
      _dataInvio = $v.dataInvio;
      _oraInvio = $v.oraInvio;
      _dati = $v.dati;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificheElencoItem other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NotificheElencoItem;
  }

  @override
  void update(void Function(NotificheElencoItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NotificheElencoItem build() => _build();

  _$NotificheElencoItem _build() {
    final _$result = _$v ??
        new _$NotificheElencoItem._(
          pushId: pushId,
          keyId: keyId,
          titolo: titolo,
          testo: testo,
          dataInvio: dataInvio,
          oraInvio: oraInvio,
          dati: dati,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
