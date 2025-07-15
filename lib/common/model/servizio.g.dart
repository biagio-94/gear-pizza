// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'servizio.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Servizio extends Servizio {
  @override
  final String? codicePacchetto;
  @override
  final String? codiceServizio;
  @override
  final String? descrizioneServizio;
  @override
  final num? durata;

  factory _$Servizio([void Function(ServizioBuilder)? updates]) =>
      (new ServizioBuilder()..update(updates))._build();

  _$Servizio._(
      {this.codicePacchetto,
      this.codiceServizio,
      this.descrizioneServizio,
      this.durata})
      : super._();

  @override
  Servizio rebuild(void Function(ServizioBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ServizioBuilder toBuilder() => new ServizioBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Servizio &&
        codicePacchetto == other.codicePacchetto &&
        codiceServizio == other.codiceServizio &&
        descrizioneServizio == other.descrizioneServizio &&
        durata == other.durata;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, codicePacchetto.hashCode);
    _$hash = $jc(_$hash, codiceServizio.hashCode);
    _$hash = $jc(_$hash, descrizioneServizio.hashCode);
    _$hash = $jc(_$hash, durata.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Servizio')
          ..add('codicePacchetto', codicePacchetto)
          ..add('codiceServizio', codiceServizio)
          ..add('descrizioneServizio', descrizioneServizio)
          ..add('durata', durata))
        .toString();
  }
}

class ServizioBuilder implements Builder<Servizio, ServizioBuilder> {
  _$Servizio? _$v;

  String? _codicePacchetto;
  String? get codicePacchetto => _$this._codicePacchetto;
  set codicePacchetto(String? codicePacchetto) =>
      _$this._codicePacchetto = codicePacchetto;

  String? _codiceServizio;
  String? get codiceServizio => _$this._codiceServizio;
  set codiceServizio(String? codiceServizio) =>
      _$this._codiceServizio = codiceServizio;

  String? _descrizioneServizio;
  String? get descrizioneServizio => _$this._descrizioneServizio;
  set descrizioneServizio(String? descrizioneServizio) =>
      _$this._descrizioneServizio = descrizioneServizio;

  num? _durata;
  num? get durata => _$this._durata;
  set durata(num? durata) => _$this._durata = durata;

  ServizioBuilder() {
    Servizio._defaults(this);
  }

  ServizioBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _codicePacchetto = $v.codicePacchetto;
      _codiceServizio = $v.codiceServizio;
      _descrizioneServizio = $v.descrizioneServizio;
      _durata = $v.durata;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Servizio other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Servizio;
  }

  @override
  void update(void Function(ServizioBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Servizio build() => _build();

  _$Servizio _build() {
    final _$result = _$v ??
        new _$Servizio._(
          codicePacchetto: codicePacchetto,
          codiceServizio: codiceServizio,
          descrizioneServizio: descrizioneServizio,
          durata: durata,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
