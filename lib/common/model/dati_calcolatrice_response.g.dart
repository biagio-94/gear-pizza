// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dati_calcolatrice_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DatiCalcolatriceResponse extends DatiCalcolatriceResponse {
  @override
  final BuiltList<DatiCalcolatriceResponseItem>? senzaAssic;
  @override
  final BuiltList<DatiCalcolatriceResponseItem>? conAssic;

  factory _$DatiCalcolatriceResponse(
          [void Function(DatiCalcolatriceResponseBuilder)? updates]) =>
      (new DatiCalcolatriceResponseBuilder()..update(updates))._build();

  _$DatiCalcolatriceResponse._({this.senzaAssic, this.conAssic}) : super._();

  @override
  DatiCalcolatriceResponse rebuild(
          void Function(DatiCalcolatriceResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DatiCalcolatriceResponseBuilder toBuilder() =>
      new DatiCalcolatriceResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DatiCalcolatriceResponse &&
        senzaAssic == other.senzaAssic &&
        conAssic == other.conAssic;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, senzaAssic.hashCode);
    _$hash = $jc(_$hash, conAssic.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DatiCalcolatriceResponse')
          ..add('senzaAssic', senzaAssic)
          ..add('conAssic', conAssic))
        .toString();
  }
}

class DatiCalcolatriceResponseBuilder
    implements
        Builder<DatiCalcolatriceResponse, DatiCalcolatriceResponseBuilder> {
  _$DatiCalcolatriceResponse? _$v;

  ListBuilder<DatiCalcolatriceResponseItem>? _senzaAssic;
  ListBuilder<DatiCalcolatriceResponseItem> get senzaAssic =>
      _$this._senzaAssic ??= new ListBuilder<DatiCalcolatriceResponseItem>();
  set senzaAssic(ListBuilder<DatiCalcolatriceResponseItem>? senzaAssic) =>
      _$this._senzaAssic = senzaAssic;

  ListBuilder<DatiCalcolatriceResponseItem>? _conAssic;
  ListBuilder<DatiCalcolatriceResponseItem> get conAssic =>
      _$this._conAssic ??= new ListBuilder<DatiCalcolatriceResponseItem>();
  set conAssic(ListBuilder<DatiCalcolatriceResponseItem>? conAssic) =>
      _$this._conAssic = conAssic;

  DatiCalcolatriceResponseBuilder() {
    DatiCalcolatriceResponse._defaults(this);
  }

  DatiCalcolatriceResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _senzaAssic = $v.senzaAssic?.toBuilder();
      _conAssic = $v.conAssic?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DatiCalcolatriceResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DatiCalcolatriceResponse;
  }

  @override
  void update(void Function(DatiCalcolatriceResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DatiCalcolatriceResponse build() => _build();

  _$DatiCalcolatriceResponse _build() {
    _$DatiCalcolatriceResponse _$result;
    try {
      _$result = _$v ??
          new _$DatiCalcolatriceResponse._(
            senzaAssic: _senzaAssic?.build(),
            conAssic: _conAssic?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'senzaAssic';
        _senzaAssic?.build();
        _$failedField = 'conAssic';
        _conAssic?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DatiCalcolatriceResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
