// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preventivo_dati_targa_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PreventivoDatiTargaRequest extends PreventivoDatiTargaRequest {
  @override
  final int id;
  @override
  final String targa;
  @override
  final String funzionalita;

  factory _$PreventivoDatiTargaRequest(
          [void Function(PreventivoDatiTargaRequestBuilder)? updates]) =>
      (new PreventivoDatiTargaRequestBuilder()..update(updates))._build();

  _$PreventivoDatiTargaRequest._(
      {required this.id, required this.targa, required this.funzionalita})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        id, r'PreventivoDatiTargaRequest', 'id');
    BuiltValueNullFieldError.checkNotNull(
        targa, r'PreventivoDatiTargaRequest', 'targa');
    BuiltValueNullFieldError.checkNotNull(
        funzionalita, r'PreventivoDatiTargaRequest', 'funzionalita');
  }

  @override
  PreventivoDatiTargaRequest rebuild(
          void Function(PreventivoDatiTargaRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PreventivoDatiTargaRequestBuilder toBuilder() =>
      new PreventivoDatiTargaRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PreventivoDatiTargaRequest &&
        id == other.id &&
        targa == other.targa &&
        funzionalita == other.funzionalita;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, targa.hashCode);
    _$hash = $jc(_$hash, funzionalita.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PreventivoDatiTargaRequest')
          ..add('id', id)
          ..add('targa', targa)
          ..add('funzionalita', funzionalita))
        .toString();
  }
}

class PreventivoDatiTargaRequestBuilder
    implements
        Builder<PreventivoDatiTargaRequest, PreventivoDatiTargaRequestBuilder> {
  _$PreventivoDatiTargaRequest? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _targa;
  String? get targa => _$this._targa;
  set targa(String? targa) => _$this._targa = targa;

  String? _funzionalita;
  String? get funzionalita => _$this._funzionalita;
  set funzionalita(String? funzionalita) => _$this._funzionalita = funzionalita;

  PreventivoDatiTargaRequestBuilder() {
    PreventivoDatiTargaRequest._defaults(this);
  }

  PreventivoDatiTargaRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _targa = $v.targa;
      _funzionalita = $v.funzionalita;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PreventivoDatiTargaRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PreventivoDatiTargaRequest;
  }

  @override
  void update(void Function(PreventivoDatiTargaRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PreventivoDatiTargaRequest build() => _build();

  _$PreventivoDatiTargaRequest _build() {
    final _$result = _$v ??
        new _$PreventivoDatiTargaRequest._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'PreventivoDatiTargaRequest', 'id'),
          targa: BuiltValueNullFieldError.checkNotNull(
              targa, r'PreventivoDatiTargaRequest', 'targa'),
          funzionalita: BuiltValueNullFieldError.checkNotNull(
              funzionalita, r'PreventivoDatiTargaRequest', 'funzionalita'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
