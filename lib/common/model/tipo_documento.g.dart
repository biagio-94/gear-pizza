// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tipo_documento.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TipoDocumento extends TipoDocumento {
  @override
  final String? codiceDocumento;
  @override
  final String? descrizione;
  @override
  final String? codiceAntiriciclaggio;

  factory _$TipoDocumento([void Function(TipoDocumentoBuilder)? updates]) =>
      (new TipoDocumentoBuilder()..update(updates))._build();

  _$TipoDocumento._(
      {this.codiceDocumento, this.descrizione, this.codiceAntiriciclaggio})
      : super._();

  @override
  TipoDocumento rebuild(void Function(TipoDocumentoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TipoDocumentoBuilder toBuilder() => new TipoDocumentoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TipoDocumento &&
        codiceDocumento == other.codiceDocumento &&
        descrizione == other.descrizione &&
        codiceAntiriciclaggio == other.codiceAntiriciclaggio;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, codiceDocumento.hashCode);
    _$hash = $jc(_$hash, descrizione.hashCode);
    _$hash = $jc(_$hash, codiceAntiriciclaggio.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TipoDocumento')
          ..add('codiceDocumento', codiceDocumento)
          ..add('descrizione', descrizione)
          ..add('codiceAntiriciclaggio', codiceAntiriciclaggio))
        .toString();
  }
}

class TipoDocumentoBuilder
    implements Builder<TipoDocumento, TipoDocumentoBuilder> {
  _$TipoDocumento? _$v;

  String? _codiceDocumento;
  String? get codiceDocumento => _$this._codiceDocumento;
  set codiceDocumento(String? codiceDocumento) =>
      _$this._codiceDocumento = codiceDocumento;

  String? _descrizione;
  String? get descrizione => _$this._descrizione;
  set descrizione(String? descrizione) => _$this._descrizione = descrizione;

  String? _codiceAntiriciclaggio;
  String? get codiceAntiriciclaggio => _$this._codiceAntiriciclaggio;
  set codiceAntiriciclaggio(String? codiceAntiriciclaggio) =>
      _$this._codiceAntiriciclaggio = codiceAntiriciclaggio;

  TipoDocumentoBuilder() {
    TipoDocumento._defaults(this);
  }

  TipoDocumentoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _codiceDocumento = $v.codiceDocumento;
      _descrizione = $v.descrizione;
      _codiceAntiriciclaggio = $v.codiceAntiriciclaggio;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TipoDocumento other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TipoDocumento;
  }

  @override
  void update(void Function(TipoDocumentoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TipoDocumento build() => _build();

  _$TipoDocumento _build() {
    final _$result = _$v ??
        new _$TipoDocumento._(
          codiceDocumento: codiceDocumento,
          descrizione: descrizione,
          codiceAntiriciclaggio: codiceAntiriciclaggio,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
