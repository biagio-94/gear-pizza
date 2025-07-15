// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dati_calcolatrice_response_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DatiCalcolatriceResponseItem extends DatiCalcolatriceResponseItem {
  @override
  final int? numeroRate;
  @override
  final num? importoRata;
  @override
  final num? tan;
  @override
  final num? taeg;
  @override
  final num? speseIcassiRata;

  factory _$DatiCalcolatriceResponseItem(
          [void Function(DatiCalcolatriceResponseItemBuilder)? updates]) =>
      (new DatiCalcolatriceResponseItemBuilder()..update(updates))._build();

  _$DatiCalcolatriceResponseItem._(
      {this.numeroRate,
      this.importoRata,
      this.tan,
      this.taeg,
      this.speseIcassiRata})
      : super._();

  @override
  DatiCalcolatriceResponseItem rebuild(
          void Function(DatiCalcolatriceResponseItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DatiCalcolatriceResponseItemBuilder toBuilder() =>
      new DatiCalcolatriceResponseItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DatiCalcolatriceResponseItem &&
        numeroRate == other.numeroRate &&
        importoRata == other.importoRata &&
        tan == other.tan &&
        taeg == other.taeg &&
        speseIcassiRata == other.speseIcassiRata;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, numeroRate.hashCode);
    _$hash = $jc(_$hash, importoRata.hashCode);
    _$hash = $jc(_$hash, tan.hashCode);
    _$hash = $jc(_$hash, taeg.hashCode);
    _$hash = $jc(_$hash, speseIcassiRata.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DatiCalcolatriceResponseItem')
          ..add('numeroRate', numeroRate)
          ..add('importoRata', importoRata)
          ..add('tan', tan)
          ..add('taeg', taeg)
          ..add('speseIcassiRata', speseIcassiRata))
        .toString();
  }
}

class DatiCalcolatriceResponseItemBuilder
    implements
        Builder<DatiCalcolatriceResponseItem,
            DatiCalcolatriceResponseItemBuilder> {
  _$DatiCalcolatriceResponseItem? _$v;

  int? _numeroRate;
  int? get numeroRate => _$this._numeroRate;
  set numeroRate(int? numeroRate) => _$this._numeroRate = numeroRate;

  num? _importoRata;
  num? get importoRata => _$this._importoRata;
  set importoRata(num? importoRata) => _$this._importoRata = importoRata;

  num? _tan;
  num? get tan => _$this._tan;
  set tan(num? tan) => _$this._tan = tan;

  num? _taeg;
  num? get taeg => _$this._taeg;
  set taeg(num? taeg) => _$this._taeg = taeg;

  num? _speseIcassiRata;
  num? get speseIcassiRata => _$this._speseIcassiRata;
  set speseIcassiRata(num? speseIcassiRata) =>
      _$this._speseIcassiRata = speseIcassiRata;

  DatiCalcolatriceResponseItemBuilder() {
    DatiCalcolatriceResponseItem._defaults(this);
  }

  DatiCalcolatriceResponseItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _numeroRate = $v.numeroRate;
      _importoRata = $v.importoRata;
      _tan = $v.tan;
      _taeg = $v.taeg;
      _speseIcassiRata = $v.speseIcassiRata;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DatiCalcolatriceResponseItem other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DatiCalcolatriceResponseItem;
  }

  @override
  void update(void Function(DatiCalcolatriceResponseItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DatiCalcolatriceResponseItem build() => _build();

  _$DatiCalcolatriceResponseItem _build() {
    final _$result = _$v ??
        new _$DatiCalcolatriceResponseItem._(
          numeroRate: numeroRate,
          importoRata: importoRata,
          tan: tan,
          taeg: taeg,
          speseIcassiRata: speseIcassiRata,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
