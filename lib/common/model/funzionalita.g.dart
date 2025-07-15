// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'funzionalita.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Funzionalita extends Funzionalita {
  @override
  final String? funzionalita;
  @override
  final String? titolo;

  factory _$Funzionalita([void Function(FunzionalitaBuilder)? updates]) =>
      (new FunzionalitaBuilder()..update(updates))._build();

  _$Funzionalita._({this.funzionalita, this.titolo}) : super._();

  @override
  Funzionalita rebuild(void Function(FunzionalitaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FunzionalitaBuilder toBuilder() => new FunzionalitaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Funzionalita &&
        funzionalita == other.funzionalita &&
        titolo == other.titolo;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, funzionalita.hashCode);
    _$hash = $jc(_$hash, titolo.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Funzionalita')
          ..add('funzionalita', funzionalita)
          ..add('titolo', titolo))
        .toString();
  }
}

class FunzionalitaBuilder
    implements Builder<Funzionalita, FunzionalitaBuilder> {
  _$Funzionalita? _$v;

  String? _funzionalita;
  String? get funzionalita => _$this._funzionalita;
  set funzionalita(String? funzionalita) => _$this._funzionalita = funzionalita;

  String? _titolo;
  String? get titolo => _$this._titolo;
  set titolo(String? titolo) => _$this._titolo = titolo;

  FunzionalitaBuilder() {
    Funzionalita._defaults(this);
  }

  FunzionalitaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _funzionalita = $v.funzionalita;
      _titolo = $v.titolo;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Funzionalita other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Funzionalita;
  }

  @override
  void update(void Function(FunzionalitaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Funzionalita build() => _build();

  _$Funzionalita _build() {
    final _$result = _$v ??
        new _$Funzionalita._(
          funzionalita: funzionalita,
          titolo: titolo,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
