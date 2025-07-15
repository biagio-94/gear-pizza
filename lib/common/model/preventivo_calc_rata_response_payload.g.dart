// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preventivo_calc_rata_response_payload.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PreventivoCalcRataResponsePayload
    extends PreventivoCalcRataResponsePayload {
  @override
  final String? numeroRate;
  @override
  final num? importoRata;
  @override
  final num? tan;
  @override
  final num? taeg;
  @override
  final num? speseIncassoRata;
  @override
  final num? importoTotaleSalvarata;
  @override
  final num? importoTotaleAltraAssicurazione;

  factory _$PreventivoCalcRataResponsePayload(
          [void Function(PreventivoCalcRataResponsePayloadBuilder)? updates]) =>
      (new PreventivoCalcRataResponsePayloadBuilder()..update(updates))
          ._build();

  _$PreventivoCalcRataResponsePayload._(
      {this.numeroRate,
      this.importoRata,
      this.tan,
      this.taeg,
      this.speseIncassoRata,
      this.importoTotaleSalvarata,
      this.importoTotaleAltraAssicurazione})
      : super._();

  @override
  PreventivoCalcRataResponsePayload rebuild(
          void Function(PreventivoCalcRataResponsePayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PreventivoCalcRataResponsePayloadBuilder toBuilder() =>
      new PreventivoCalcRataResponsePayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PreventivoCalcRataResponsePayload &&
        numeroRate == other.numeroRate &&
        importoRata == other.importoRata &&
        tan == other.tan &&
        taeg == other.taeg &&
        speseIncassoRata == other.speseIncassoRata &&
        importoTotaleSalvarata == other.importoTotaleSalvarata &&
        importoTotaleAltraAssicurazione ==
            other.importoTotaleAltraAssicurazione;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, numeroRate.hashCode);
    _$hash = $jc(_$hash, importoRata.hashCode);
    _$hash = $jc(_$hash, tan.hashCode);
    _$hash = $jc(_$hash, taeg.hashCode);
    _$hash = $jc(_$hash, speseIncassoRata.hashCode);
    _$hash = $jc(_$hash, importoTotaleSalvarata.hashCode);
    _$hash = $jc(_$hash, importoTotaleAltraAssicurazione.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PreventivoCalcRataResponsePayload')
          ..add('numeroRate', numeroRate)
          ..add('importoRata', importoRata)
          ..add('tan', tan)
          ..add('taeg', taeg)
          ..add('speseIncassoRata', speseIncassoRata)
          ..add('importoTotaleSalvarata', importoTotaleSalvarata)
          ..add('importoTotaleAltraAssicurazione',
              importoTotaleAltraAssicurazione))
        .toString();
  }
}

class PreventivoCalcRataResponsePayloadBuilder
    implements
        Builder<PreventivoCalcRataResponsePayload,
            PreventivoCalcRataResponsePayloadBuilder> {
  _$PreventivoCalcRataResponsePayload? _$v;

  String? _numeroRate;
  String? get numeroRate => _$this._numeroRate;
  set numeroRate(String? numeroRate) => _$this._numeroRate = numeroRate;

  num? _importoRata;
  num? get importoRata => _$this._importoRata;
  set importoRata(num? importoRata) => _$this._importoRata = importoRata;

  num? _tan;
  num? get tan => _$this._tan;
  set tan(num? tan) => _$this._tan = tan;

  num? _taeg;
  num? get taeg => _$this._taeg;
  set taeg(num? taeg) => _$this._taeg = taeg;

  num? _speseIncassoRata;
  num? get speseIncassoRata => _$this._speseIncassoRata;
  set speseIncassoRata(num? speseIncassoRata) =>
      _$this._speseIncassoRata = speseIncassoRata;

  num? _importoTotaleSalvarata;
  num? get importoTotaleSalvarata => _$this._importoTotaleSalvarata;
  set importoTotaleSalvarata(num? importoTotaleSalvarata) =>
      _$this._importoTotaleSalvarata = importoTotaleSalvarata;

  num? _importoTotaleAltraAssicurazione;
  num? get importoTotaleAltraAssicurazione =>
      _$this._importoTotaleAltraAssicurazione;
  set importoTotaleAltraAssicurazione(num? importoTotaleAltraAssicurazione) =>
      _$this._importoTotaleAltraAssicurazione = importoTotaleAltraAssicurazione;

  PreventivoCalcRataResponsePayloadBuilder() {
    PreventivoCalcRataResponsePayload._defaults(this);
  }

  PreventivoCalcRataResponsePayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _numeroRate = $v.numeroRate;
      _importoRata = $v.importoRata;
      _tan = $v.tan;
      _taeg = $v.taeg;
      _speseIncassoRata = $v.speseIncassoRata;
      _importoTotaleSalvarata = $v.importoTotaleSalvarata;
      _importoTotaleAltraAssicurazione = $v.importoTotaleAltraAssicurazione;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PreventivoCalcRataResponsePayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PreventivoCalcRataResponsePayload;
  }

  @override
  void update(
      void Function(PreventivoCalcRataResponsePayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PreventivoCalcRataResponsePayload build() => _build();

  _$PreventivoCalcRataResponsePayload _build() {
    final _$result = _$v ??
        new _$PreventivoCalcRataResponsePayload._(
          numeroRate: numeroRate,
          importoRata: importoRata,
          tan: tan,
          taeg: taeg,
          speseIncassoRata: speseIncassoRata,
          importoTotaleSalvarata: importoTotaleSalvarata,
          importoTotaleAltraAssicurazione: importoTotaleAltraAssicurazione,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
