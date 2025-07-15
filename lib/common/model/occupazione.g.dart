// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'occupazione.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Occupazione extends Occupazione {
  @override
  final String? codice;
  @override
  final String? descrizione;
  @override
  final String? gruppo;
  @override
  final String? gruppo400;

  factory _$Occupazione([void Function(OccupazioneBuilder)? updates]) =>
      (new OccupazioneBuilder()..update(updates))._build();

  _$Occupazione._({this.codice, this.descrizione, this.gruppo, this.gruppo400})
      : super._();

  @override
  Occupazione rebuild(void Function(OccupazioneBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OccupazioneBuilder toBuilder() => new OccupazioneBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Occupazione &&
        codice == other.codice &&
        descrizione == other.descrizione &&
        gruppo == other.gruppo &&
        gruppo400 == other.gruppo400;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, codice.hashCode);
    _$hash = $jc(_$hash, descrizione.hashCode);
    _$hash = $jc(_$hash, gruppo.hashCode);
    _$hash = $jc(_$hash, gruppo400.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Occupazione')
          ..add('codice', codice)
          ..add('descrizione', descrizione)
          ..add('gruppo', gruppo)
          ..add('gruppo400', gruppo400))
        .toString();
  }
}

class OccupazioneBuilder implements Builder<Occupazione, OccupazioneBuilder> {
  _$Occupazione? _$v;

  String? _codice;
  String? get codice => _$this._codice;
  set codice(String? codice) => _$this._codice = codice;

  String? _descrizione;
  String? get descrizione => _$this._descrizione;
  set descrizione(String? descrizione) => _$this._descrizione = descrizione;

  String? _gruppo;
  String? get gruppo => _$this._gruppo;
  set gruppo(String? gruppo) => _$this._gruppo = gruppo;

  String? _gruppo400;
  String? get gruppo400 => _$this._gruppo400;
  set gruppo400(String? gruppo400) => _$this._gruppo400 = gruppo400;

  OccupazioneBuilder() {
    Occupazione._defaults(this);
  }

  OccupazioneBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _codice = $v.codice;
      _descrizione = $v.descrizione;
      _gruppo = $v.gruppo;
      _gruppo400 = $v.gruppo400;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Occupazione other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Occupazione;
  }

  @override
  void update(void Function(OccupazioneBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Occupazione build() => _build();

  _$Occupazione _build() {
    final _$result = _$v ??
        new _$Occupazione._(
          codice: codice,
          descrizione: descrizione,
          gruppo: gruppo,
          gruppo400: gruppo400,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
