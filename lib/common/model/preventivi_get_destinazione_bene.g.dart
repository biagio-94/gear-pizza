// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preventivi_get_destinazione_bene.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PreventiviGetDestinazioneBene extends PreventiviGetDestinazioneBene {
  @override
  final String? bene;
  @override
  final String? codiceProdotto;
  @override
  final String? descrizioneBene;

  factory _$PreventiviGetDestinazioneBene(
          [void Function(PreventiviGetDestinazioneBeneBuilder)? updates]) =>
      (new PreventiviGetDestinazioneBeneBuilder()..update(updates))._build();

  _$PreventiviGetDestinazioneBene._(
      {this.bene, this.codiceProdotto, this.descrizioneBene})
      : super._();

  @override
  PreventiviGetDestinazioneBene rebuild(
          void Function(PreventiviGetDestinazioneBeneBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PreventiviGetDestinazioneBeneBuilder toBuilder() =>
      new PreventiviGetDestinazioneBeneBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PreventiviGetDestinazioneBene &&
        bene == other.bene &&
        codiceProdotto == other.codiceProdotto &&
        descrizioneBene == other.descrizioneBene;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bene.hashCode);
    _$hash = $jc(_$hash, codiceProdotto.hashCode);
    _$hash = $jc(_$hash, descrizioneBene.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PreventiviGetDestinazioneBene')
          ..add('bene', bene)
          ..add('codiceProdotto', codiceProdotto)
          ..add('descrizioneBene', descrizioneBene))
        .toString();
  }
}

class PreventiviGetDestinazioneBeneBuilder
    implements
        Builder<PreventiviGetDestinazioneBene,
            PreventiviGetDestinazioneBeneBuilder> {
  _$PreventiviGetDestinazioneBene? _$v;

  String? _bene;
  String? get bene => _$this._bene;
  set bene(String? bene) => _$this._bene = bene;

  String? _codiceProdotto;
  String? get codiceProdotto => _$this._codiceProdotto;
  set codiceProdotto(String? codiceProdotto) =>
      _$this._codiceProdotto = codiceProdotto;

  String? _descrizioneBene;
  String? get descrizioneBene => _$this._descrizioneBene;
  set descrizioneBene(String? descrizioneBene) =>
      _$this._descrizioneBene = descrizioneBene;

  PreventiviGetDestinazioneBeneBuilder() {
    PreventiviGetDestinazioneBene._defaults(this);
  }

  PreventiviGetDestinazioneBeneBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bene = $v.bene;
      _codiceProdotto = $v.codiceProdotto;
      _descrizioneBene = $v.descrizioneBene;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PreventiviGetDestinazioneBene other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PreventiviGetDestinazioneBene;
  }

  @override
  void update(void Function(PreventiviGetDestinazioneBeneBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PreventiviGetDestinazioneBene build() => _build();

  _$PreventiviGetDestinazioneBene _build() {
    final _$result = _$v ??
        new _$PreventiviGetDestinazioneBene._(
          bene: bene,
          codiceProdotto: codiceProdotto,
          descrizioneBene: descrizioneBene,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
