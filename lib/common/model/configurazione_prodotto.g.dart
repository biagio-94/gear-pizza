// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'configurazione_prodotto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConfigurazioneProdotto extends ConfigurazioneProdotto {
  @override
  final String? codiceProdotto;
  @override
  final String? descrizioneProdotto;
  @override
  final String? funzionalita;
  @override
  final String? tipoProdotto;

  factory _$ConfigurazioneProdotto(
          [void Function(ConfigurazioneProdottoBuilder)? updates]) =>
      (new ConfigurazioneProdottoBuilder()..update(updates))._build();

  _$ConfigurazioneProdotto._(
      {this.codiceProdotto,
      this.descrizioneProdotto,
      this.funzionalita,
      this.tipoProdotto})
      : super._();

  @override
  ConfigurazioneProdotto rebuild(
          void Function(ConfigurazioneProdottoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConfigurazioneProdottoBuilder toBuilder() =>
      new ConfigurazioneProdottoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConfigurazioneProdotto &&
        codiceProdotto == other.codiceProdotto &&
        descrizioneProdotto == other.descrizioneProdotto &&
        funzionalita == other.funzionalita &&
        tipoProdotto == other.tipoProdotto;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, codiceProdotto.hashCode);
    _$hash = $jc(_$hash, descrizioneProdotto.hashCode);
    _$hash = $jc(_$hash, funzionalita.hashCode);
    _$hash = $jc(_$hash, tipoProdotto.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ConfigurazioneProdotto')
          ..add('codiceProdotto', codiceProdotto)
          ..add('descrizioneProdotto', descrizioneProdotto)
          ..add('funzionalita', funzionalita)
          ..add('tipoProdotto', tipoProdotto))
        .toString();
  }
}

class ConfigurazioneProdottoBuilder
    implements Builder<ConfigurazioneProdotto, ConfigurazioneProdottoBuilder> {
  _$ConfigurazioneProdotto? _$v;

  String? _codiceProdotto;
  String? get codiceProdotto => _$this._codiceProdotto;
  set codiceProdotto(String? codiceProdotto) =>
      _$this._codiceProdotto = codiceProdotto;

  String? _descrizioneProdotto;
  String? get descrizioneProdotto => _$this._descrizioneProdotto;
  set descrizioneProdotto(String? descrizioneProdotto) =>
      _$this._descrizioneProdotto = descrizioneProdotto;

  String? _funzionalita;
  String? get funzionalita => _$this._funzionalita;
  set funzionalita(String? funzionalita) => _$this._funzionalita = funzionalita;

  String? _tipoProdotto;
  String? get tipoProdotto => _$this._tipoProdotto;
  set tipoProdotto(String? tipoProdotto) => _$this._tipoProdotto = tipoProdotto;

  ConfigurazioneProdottoBuilder() {
    ConfigurazioneProdotto._defaults(this);
  }

  ConfigurazioneProdottoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _codiceProdotto = $v.codiceProdotto;
      _descrizioneProdotto = $v.descrizioneProdotto;
      _funzionalita = $v.funzionalita;
      _tipoProdotto = $v.tipoProdotto;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConfigurazioneProdotto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ConfigurazioneProdotto;
  }

  @override
  void update(void Function(ConfigurazioneProdottoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConfigurazioneProdotto build() => _build();

  _$ConfigurazioneProdotto _build() {
    final _$result = _$v ??
        new _$ConfigurazioneProdotto._(
          codiceProdotto: codiceProdotto,
          descrizioneProdotto: descrizioneProdotto,
          funzionalita: funzionalita,
          tipoProdotto: tipoProdotto,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
