// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'servizio_preventivo.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ServizioPreventivo extends ServizioPreventivo {
  @override
  final String? codicePacchetto;
  @override
  final String? codiceServizio;
  @override
  final num? durata;
  @override
  final String? provincia;

  factory _$ServizioPreventivo(
          [void Function(ServizioPreventivoBuilder)? updates]) =>
      (new ServizioPreventivoBuilder()..update(updates))._build();

  _$ServizioPreventivo._(
      {this.codicePacchetto, this.codiceServizio, this.durata, this.provincia})
      : super._();

  @override
  ServizioPreventivo rebuild(
          void Function(ServizioPreventivoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ServizioPreventivoBuilder toBuilder() =>
      new ServizioPreventivoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ServizioPreventivo &&
        codicePacchetto == other.codicePacchetto &&
        codiceServizio == other.codiceServizio &&
        durata == other.durata &&
        provincia == other.provincia;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, codicePacchetto.hashCode);
    _$hash = $jc(_$hash, codiceServizio.hashCode);
    _$hash = $jc(_$hash, durata.hashCode);
    _$hash = $jc(_$hash, provincia.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ServizioPreventivo')
          ..add('codicePacchetto', codicePacchetto)
          ..add('codiceServizio', codiceServizio)
          ..add('durata', durata)
          ..add('provincia', provincia))
        .toString();
  }
}

class ServizioPreventivoBuilder
    implements Builder<ServizioPreventivo, ServizioPreventivoBuilder> {
  _$ServizioPreventivo? _$v;

  String? _codicePacchetto;
  String? get codicePacchetto => _$this._codicePacchetto;
  set codicePacchetto(String? codicePacchetto) =>
      _$this._codicePacchetto = codicePacchetto;

  String? _codiceServizio;
  String? get codiceServizio => _$this._codiceServizio;
  set codiceServizio(String? codiceServizio) =>
      _$this._codiceServizio = codiceServizio;

  num? _durata;
  num? get durata => _$this._durata;
  set durata(num? durata) => _$this._durata = durata;

  String? _provincia;
  String? get provincia => _$this._provincia;
  set provincia(String? provincia) => _$this._provincia = provincia;

  ServizioPreventivoBuilder() {
    ServizioPreventivo._defaults(this);
  }

  ServizioPreventivoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _codicePacchetto = $v.codicePacchetto;
      _codiceServizio = $v.codiceServizio;
      _durata = $v.durata;
      _provincia = $v.provincia;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ServizioPreventivo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ServizioPreventivo;
  }

  @override
  void update(void Function(ServizioPreventivoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ServizioPreventivo build() => _build();

  _$ServizioPreventivo _build() {
    final _$result = _$v ??
        new _$ServizioPreventivo._(
          codicePacchetto: codicePacchetto,
          codiceServizio: codiceServizio,
          durata: durata,
          provincia: provincia,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
