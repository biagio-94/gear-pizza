// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dati_contatto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DatiContatto extends DatiContatto {
  @override
  final int? id;
  @override
  final String? emailCliente;
  @override
  final String? telCliente;
  @override
  final String? emailCoobbligato;
  @override
  final String? telCoobbligato;

  factory _$DatiContatto([void Function(DatiContattoBuilder)? updates]) =>
      (new DatiContattoBuilder()..update(updates))._build();

  _$DatiContatto._(
      {this.id,
      this.emailCliente,
      this.telCliente,
      this.emailCoobbligato,
      this.telCoobbligato})
      : super._();

  @override
  DatiContatto rebuild(void Function(DatiContattoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DatiContattoBuilder toBuilder() => new DatiContattoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DatiContatto &&
        id == other.id &&
        emailCliente == other.emailCliente &&
        telCliente == other.telCliente &&
        emailCoobbligato == other.emailCoobbligato &&
        telCoobbligato == other.telCoobbligato;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, emailCliente.hashCode);
    _$hash = $jc(_$hash, telCliente.hashCode);
    _$hash = $jc(_$hash, emailCoobbligato.hashCode);
    _$hash = $jc(_$hash, telCoobbligato.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DatiContatto')
          ..add('id', id)
          ..add('emailCliente', emailCliente)
          ..add('telCliente', telCliente)
          ..add('emailCoobbligato', emailCoobbligato)
          ..add('telCoobbligato', telCoobbligato))
        .toString();
  }
}

class DatiContattoBuilder
    implements Builder<DatiContatto, DatiContattoBuilder> {
  _$DatiContatto? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _emailCliente;
  String? get emailCliente => _$this._emailCliente;
  set emailCliente(String? emailCliente) => _$this._emailCliente = emailCliente;

  String? _telCliente;
  String? get telCliente => _$this._telCliente;
  set telCliente(String? telCliente) => _$this._telCliente = telCliente;

  String? _emailCoobbligato;
  String? get emailCoobbligato => _$this._emailCoobbligato;
  set emailCoobbligato(String? emailCoobbligato) =>
      _$this._emailCoobbligato = emailCoobbligato;

  String? _telCoobbligato;
  String? get telCoobbligato => _$this._telCoobbligato;
  set telCoobbligato(String? telCoobbligato) =>
      _$this._telCoobbligato = telCoobbligato;

  DatiContattoBuilder() {
    DatiContatto._defaults(this);
  }

  DatiContattoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _emailCliente = $v.emailCliente;
      _telCliente = $v.telCliente;
      _emailCoobbligato = $v.emailCoobbligato;
      _telCoobbligato = $v.telCoobbligato;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DatiContatto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DatiContatto;
  }

  @override
  void update(void Function(DatiContattoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DatiContatto build() => _build();

  _$DatiContatto _build() {
    final _$result = _$v ??
        new _$DatiContatto._(
          id: id,
          emailCliente: emailCliente,
          telCliente: telCliente,
          emailCoobbligato: emailCoobbligato,
          telCoobbligato: telCoobbligato,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
