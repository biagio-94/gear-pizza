// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preventivo_calc_rata_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PreventivoCalcRataRequest extends PreventivoCalcRataRequest {
  @override
  final int id;

  factory _$PreventivoCalcRataRequest(
          [void Function(PreventivoCalcRataRequestBuilder)? updates]) =>
      (new PreventivoCalcRataRequestBuilder()..update(updates))._build();

  _$PreventivoCalcRataRequest._({required this.id}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        id, r'PreventivoCalcRataRequest', 'id');
  }

  @override
  PreventivoCalcRataRequest rebuild(
          void Function(PreventivoCalcRataRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PreventivoCalcRataRequestBuilder toBuilder() =>
      new PreventivoCalcRataRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PreventivoCalcRataRequest && id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PreventivoCalcRataRequest')
          ..add('id', id))
        .toString();
  }
}

class PreventivoCalcRataRequestBuilder
    implements
        Builder<PreventivoCalcRataRequest, PreventivoCalcRataRequestBuilder> {
  _$PreventivoCalcRataRequest? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  PreventivoCalcRataRequestBuilder() {
    PreventivoCalcRataRequest._defaults(this);
  }

  PreventivoCalcRataRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PreventivoCalcRataRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PreventivoCalcRataRequest;
  }

  @override
  void update(void Function(PreventivoCalcRataRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PreventivoCalcRataRequest build() => _build();

  _$PreventivoCalcRataRequest _build() {
    final _$result = _$v ??
        new _$PreventivoCalcRataRequest._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'PreventivoCalcRataRequest', 'id'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
