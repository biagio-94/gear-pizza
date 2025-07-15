// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comune.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Comune extends Comune {
  @override
  final String? codice;
  @override
  final String? descrizione;

  factory _$Comune([void Function(ComuneBuilder)? updates]) =>
      (new ComuneBuilder()..update(updates))._build();

  _$Comune._({this.codice, this.descrizione}) : super._();

  @override
  Comune rebuild(void Function(ComuneBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ComuneBuilder toBuilder() => new ComuneBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Comune &&
        codice == other.codice &&
        descrizione == other.descrizione;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, codice.hashCode);
    _$hash = $jc(_$hash, descrizione.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Comune')
          ..add('codice', codice)
          ..add('descrizione', descrizione))
        .toString();
  }
}

class ComuneBuilder implements Builder<Comune, ComuneBuilder> {
  _$Comune? _$v;

  String? _codice;
  String? get codice => _$this._codice;
  set codice(String? codice) => _$this._codice = codice;

  String? _descrizione;
  String? get descrizione => _$this._descrizione;
  set descrizione(String? descrizione) => _$this._descrizione = descrizione;

  ComuneBuilder() {
    Comune._defaults(this);
  }

  ComuneBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _codice = $v.codice;
      _descrizione = $v.descrizione;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Comune other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Comune;
  }

  @override
  void update(void Function(ComuneBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Comune build() => _build();

  _$Comune _build() {
    final _$result = _$v ??
        new _$Comune._(
          codice: codice,
          descrizione: descrizione,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
