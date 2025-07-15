// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preventivo_start_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PreventivoStartRequest extends PreventivoStartRequest {
  @override
  final int codiceConvenzionato;

  factory _$PreventivoStartRequest(
          [void Function(PreventivoStartRequestBuilder)? updates]) =>
      (new PreventivoStartRequestBuilder()..update(updates))._build();

  _$PreventivoStartRequest._({required this.codiceConvenzionato}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        codiceConvenzionato, r'PreventivoStartRequest', 'codiceConvenzionato');
  }

  @override
  PreventivoStartRequest rebuild(
          void Function(PreventivoStartRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PreventivoStartRequestBuilder toBuilder() =>
      new PreventivoStartRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PreventivoStartRequest &&
        codiceConvenzionato == other.codiceConvenzionato;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, codiceConvenzionato.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PreventivoStartRequest')
          ..add('codiceConvenzionato', codiceConvenzionato))
        .toString();
  }
}

class PreventivoStartRequestBuilder
    implements Builder<PreventivoStartRequest, PreventivoStartRequestBuilder> {
  _$PreventivoStartRequest? _$v;

  int? _codiceConvenzionato;
  int? get codiceConvenzionato => _$this._codiceConvenzionato;
  set codiceConvenzionato(int? codiceConvenzionato) =>
      _$this._codiceConvenzionato = codiceConvenzionato;

  PreventivoStartRequestBuilder() {
    PreventivoStartRequest._defaults(this);
  }

  PreventivoStartRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _codiceConvenzionato = $v.codiceConvenzionato;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PreventivoStartRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PreventivoStartRequest;
  }

  @override
  void update(void Function(PreventivoStartRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PreventivoStartRequest build() => _build();

  _$PreventivoStartRequest _build() {
    final _$result = _$v ??
        new _$PreventivoStartRequest._(
          codiceConvenzionato: BuiltValueNullFieldError.checkNotNull(
              codiceConvenzionato,
              r'PreventivoStartRequest',
              'codiceConvenzionato'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
