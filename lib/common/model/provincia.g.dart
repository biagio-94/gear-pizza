// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provincia.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Provincia extends Provincia {
  @override
  final String? codice;
  @override
  final String? descrizione;
  @override
  final BuiltList<Comune>? comuni;

  factory _$Provincia([void Function(ProvinciaBuilder)? updates]) =>
      (new ProvinciaBuilder()..update(updates))._build();

  _$Provincia._({this.codice, this.descrizione, this.comuni}) : super._();

  @override
  Provincia rebuild(void Function(ProvinciaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProvinciaBuilder toBuilder() => new ProvinciaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Provincia &&
        codice == other.codice &&
        descrizione == other.descrizione &&
        comuni == other.comuni;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, codice.hashCode);
    _$hash = $jc(_$hash, descrizione.hashCode);
    _$hash = $jc(_$hash, comuni.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Provincia')
          ..add('codice', codice)
          ..add('descrizione', descrizione)
          ..add('comuni', comuni))
        .toString();
  }
}

class ProvinciaBuilder implements Builder<Provincia, ProvinciaBuilder> {
  _$Provincia? _$v;

  String? _codice;
  String? get codice => _$this._codice;
  set codice(String? codice) => _$this._codice = codice;

  String? _descrizione;
  String? get descrizione => _$this._descrizione;
  set descrizione(String? descrizione) => _$this._descrizione = descrizione;

  ListBuilder<Comune>? _comuni;
  ListBuilder<Comune> get comuni =>
      _$this._comuni ??= new ListBuilder<Comune>();
  set comuni(ListBuilder<Comune>? comuni) => _$this._comuni = comuni;

  ProvinciaBuilder() {
    Provincia._defaults(this);
  }

  ProvinciaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _codice = $v.codice;
      _descrizione = $v.descrizione;
      _comuni = $v.comuni?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Provincia other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Provincia;
  }

  @override
  void update(void Function(ProvinciaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Provincia build() => _build();

  _$Provincia _build() {
    _$Provincia _$result;
    try {
      _$result = _$v ??
          new _$Provincia._(
            codice: codice,
            descrizione: descrizione,
            comuni: _comuni?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'comuni';
        _comuni?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Provincia', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
