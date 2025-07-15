// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modello.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Modello extends Modello {
  @override
  final String? marca;
  @override
  final String? name;
  @override
  final String? descrizione;
  @override
  final String? tipo;
  @override
  final String? livelloRischio;
  @override
  final String? descrizioneAgg;
  @override
  final String? flagAutoMoto;
  @override
  final int? infocarModello;
  @override
  final String? modello;

  factory _$Modello([void Function(ModelloBuilder)? updates]) =>
      (new ModelloBuilder()..update(updates))._build();

  _$Modello._(
      {this.marca,
      this.name,
      this.descrizione,
      this.tipo,
      this.livelloRischio,
      this.descrizioneAgg,
      this.flagAutoMoto,
      this.infocarModello,
      this.modello})
      : super._();

  @override
  Modello rebuild(void Function(ModelloBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModelloBuilder toBuilder() => new ModelloBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Modello &&
        marca == other.marca &&
        name == other.name &&
        descrizione == other.descrizione &&
        tipo == other.tipo &&
        livelloRischio == other.livelloRischio &&
        descrizioneAgg == other.descrizioneAgg &&
        flagAutoMoto == other.flagAutoMoto &&
        infocarModello == other.infocarModello &&
        modello == other.modello;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, marca.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, descrizione.hashCode);
    _$hash = $jc(_$hash, tipo.hashCode);
    _$hash = $jc(_$hash, livelloRischio.hashCode);
    _$hash = $jc(_$hash, descrizioneAgg.hashCode);
    _$hash = $jc(_$hash, flagAutoMoto.hashCode);
    _$hash = $jc(_$hash, infocarModello.hashCode);
    _$hash = $jc(_$hash, modello.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Modello')
          ..add('marca', marca)
          ..add('name', name)
          ..add('descrizione', descrizione)
          ..add('tipo', tipo)
          ..add('livelloRischio', livelloRischio)
          ..add('descrizioneAgg', descrizioneAgg)
          ..add('flagAutoMoto', flagAutoMoto)
          ..add('infocarModello', infocarModello)
          ..add('modello', modello))
        .toString();
  }
}

class ModelloBuilder implements Builder<Modello, ModelloBuilder> {
  _$Modello? _$v;

  String? _marca;
  String? get marca => _$this._marca;
  set marca(String? marca) => _$this._marca = marca;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _descrizione;
  String? get descrizione => _$this._descrizione;
  set descrizione(String? descrizione) => _$this._descrizione = descrizione;

  String? _tipo;
  String? get tipo => _$this._tipo;
  set tipo(String? tipo) => _$this._tipo = tipo;

  String? _livelloRischio;
  String? get livelloRischio => _$this._livelloRischio;
  set livelloRischio(String? livelloRischio) =>
      _$this._livelloRischio = livelloRischio;

  String? _descrizioneAgg;
  String? get descrizioneAgg => _$this._descrizioneAgg;
  set descrizioneAgg(String? descrizioneAgg) =>
      _$this._descrizioneAgg = descrizioneAgg;

  String? _flagAutoMoto;
  String? get flagAutoMoto => _$this._flagAutoMoto;
  set flagAutoMoto(String? flagAutoMoto) => _$this._flagAutoMoto = flagAutoMoto;

  int? _infocarModello;
  int? get infocarModello => _$this._infocarModello;
  set infocarModello(int? infocarModello) =>
      _$this._infocarModello = infocarModello;

  String? _modello;
  String? get modello => _$this._modello;
  set modello(String? modello) => _$this._modello = modello;

  ModelloBuilder() {
    Modello._defaults(this);
  }

  ModelloBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _marca = $v.marca;
      _name = $v.name;
      _descrizione = $v.descrizione;
      _tipo = $v.tipo;
      _livelloRischio = $v.livelloRischio;
      _descrizioneAgg = $v.descrizioneAgg;
      _flagAutoMoto = $v.flagAutoMoto;
      _infocarModello = $v.infocarModello;
      _modello = $v.modello;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Modello other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Modello;
  }

  @override
  void update(void Function(ModelloBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Modello build() => _build();

  _$Modello _build() {
    final _$result = _$v ??
        new _$Modello._(
          marca: marca,
          name: name,
          descrizione: descrizione,
          tipo: tipo,
          livelloRischio: livelloRischio,
          descrizioneAgg: descrizioneAgg,
          flagAutoMoto: flagAutoMoto,
          infocarModello: infocarModello,
          modello: modello,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
