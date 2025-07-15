// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'marca.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Marca extends Marca {
  @override
  final String? codiceMarca;
  @override
  final String? descrizioneMarca;
  @override
  final String? infocarMarca;

  factory _$Marca([void Function(MarcaBuilder)? updates]) =>
      (new MarcaBuilder()..update(updates))._build();

  _$Marca._({this.codiceMarca, this.descrizioneMarca, this.infocarMarca})
      : super._();

  @override
  Marca rebuild(void Function(MarcaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MarcaBuilder toBuilder() => new MarcaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Marca &&
        codiceMarca == other.codiceMarca &&
        descrizioneMarca == other.descrizioneMarca &&
        infocarMarca == other.infocarMarca;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, codiceMarca.hashCode);
    _$hash = $jc(_$hash, descrizioneMarca.hashCode);
    _$hash = $jc(_$hash, infocarMarca.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Marca')
          ..add('codiceMarca', codiceMarca)
          ..add('descrizioneMarca', descrizioneMarca)
          ..add('infocarMarca', infocarMarca))
        .toString();
  }
}

class MarcaBuilder implements Builder<Marca, MarcaBuilder> {
  _$Marca? _$v;

  String? _codiceMarca;
  String? get codiceMarca => _$this._codiceMarca;
  set codiceMarca(String? codiceMarca) => _$this._codiceMarca = codiceMarca;

  String? _descrizioneMarca;
  String? get descrizioneMarca => _$this._descrizioneMarca;
  set descrizioneMarca(String? descrizioneMarca) =>
      _$this._descrizioneMarca = descrizioneMarca;

  String? _infocarMarca;
  String? get infocarMarca => _$this._infocarMarca;
  set infocarMarca(String? infocarMarca) => _$this._infocarMarca = infocarMarca;

  MarcaBuilder() {
    Marca._defaults(this);
  }

  MarcaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _codiceMarca = $v.codiceMarca;
      _descrizioneMarca = $v.descrizioneMarca;
      _infocarMarca = $v.infocarMarca;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Marca other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Marca;
  }

  @override
  void update(void Function(MarcaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Marca build() => _build();

  _$Marca _build() {
    final _$result = _$v ??
        new _$Marca._(
          codiceMarca: codiceMarca,
          descrizioneMarca: descrizioneMarca,
          infocarMarca: infocarMarca,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
