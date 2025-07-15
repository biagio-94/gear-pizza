// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preventivo_salva_calc_rata_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PreventivoSalvaCalcRataRequest extends PreventivoSalvaCalcRataRequest {
  @override
  final int id;
  @override
  final num rataMensile;
  @override
  final num tan;
  @override
  final num taeg;
  @override
  final int numRate;

  factory _$PreventivoSalvaCalcRataRequest(
          [void Function(PreventivoSalvaCalcRataRequestBuilder)? updates]) =>
      (new PreventivoSalvaCalcRataRequestBuilder()..update(updates))._build();

  _$PreventivoSalvaCalcRataRequest._(
      {required this.id,
      required this.rataMensile,
      required this.tan,
      required this.taeg,
      required this.numRate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        id, r'PreventivoSalvaCalcRataRequest', 'id');
    BuiltValueNullFieldError.checkNotNull(
        rataMensile, r'PreventivoSalvaCalcRataRequest', 'rataMensile');
    BuiltValueNullFieldError.checkNotNull(
        tan, r'PreventivoSalvaCalcRataRequest', 'tan');
    BuiltValueNullFieldError.checkNotNull(
        taeg, r'PreventivoSalvaCalcRataRequest', 'taeg');
    BuiltValueNullFieldError.checkNotNull(
        numRate, r'PreventivoSalvaCalcRataRequest', 'numRate');
  }

  @override
  PreventivoSalvaCalcRataRequest rebuild(
          void Function(PreventivoSalvaCalcRataRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PreventivoSalvaCalcRataRequestBuilder toBuilder() =>
      new PreventivoSalvaCalcRataRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PreventivoSalvaCalcRataRequest &&
        id == other.id &&
        rataMensile == other.rataMensile &&
        tan == other.tan &&
        taeg == other.taeg &&
        numRate == other.numRate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, rataMensile.hashCode);
    _$hash = $jc(_$hash, tan.hashCode);
    _$hash = $jc(_$hash, taeg.hashCode);
    _$hash = $jc(_$hash, numRate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PreventivoSalvaCalcRataRequest')
          ..add('id', id)
          ..add('rataMensile', rataMensile)
          ..add('tan', tan)
          ..add('taeg', taeg)
          ..add('numRate', numRate))
        .toString();
  }
}

class PreventivoSalvaCalcRataRequestBuilder
    implements
        Builder<PreventivoSalvaCalcRataRequest,
            PreventivoSalvaCalcRataRequestBuilder> {
  _$PreventivoSalvaCalcRataRequest? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  num? _rataMensile;
  num? get rataMensile => _$this._rataMensile;
  set rataMensile(num? rataMensile) => _$this._rataMensile = rataMensile;

  num? _tan;
  num? get tan => _$this._tan;
  set tan(num? tan) => _$this._tan = tan;

  num? _taeg;
  num? get taeg => _$this._taeg;
  set taeg(num? taeg) => _$this._taeg = taeg;

  int? _numRate;
  int? get numRate => _$this._numRate;
  set numRate(int? numRate) => _$this._numRate = numRate;

  PreventivoSalvaCalcRataRequestBuilder() {
    PreventivoSalvaCalcRataRequest._defaults(this);
  }

  PreventivoSalvaCalcRataRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _rataMensile = $v.rataMensile;
      _tan = $v.tan;
      _taeg = $v.taeg;
      _numRate = $v.numRate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PreventivoSalvaCalcRataRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PreventivoSalvaCalcRataRequest;
  }

  @override
  void update(void Function(PreventivoSalvaCalcRataRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PreventivoSalvaCalcRataRequest build() => _build();

  _$PreventivoSalvaCalcRataRequest _build() {
    final _$result = _$v ??
        new _$PreventivoSalvaCalcRataRequest._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'PreventivoSalvaCalcRataRequest', 'id'),
          rataMensile: BuiltValueNullFieldError.checkNotNull(
              rataMensile, r'PreventivoSalvaCalcRataRequest', 'rataMensile'),
          tan: BuiltValueNullFieldError.checkNotNull(
              tan, r'PreventivoSalvaCalcRataRequest', 'tan'),
          taeg: BuiltValueNullFieldError.checkNotNull(
              taeg, r'PreventivoSalvaCalcRataRequest', 'taeg'),
          numRate: BuiltValueNullFieldError.checkNotNull(
              numRate, r'PreventivoSalvaCalcRataRequest', 'numRate'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
