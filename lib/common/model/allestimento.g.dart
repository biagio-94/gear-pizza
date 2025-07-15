// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'allestimento.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Allestimento extends Allestimento {
  @override
  final String? alimentazione;
  @override
  final String? anno;
  @override
  final String? categoria;
  @override
  final String? cilindrata;
  @override
  final String? codiceInfocar;
  @override
  final num? codiceInfocarAM;
  @override
  final String? codiceMarca;
  @override
  final num? codiceModello;
  @override
  final num? dataAgg;
  @override
  final String? descrizione;
  @override
  final String? descrizioneCompleta;
  @override
  final String? fineImmatricolazione;
  @override
  final String? fineVendita;
  @override
  final String? inizioImmatricolazione;
  @override
  final String? inizioVendita;
  @override
  final String? mese;

  factory _$Allestimento([void Function(AllestimentoBuilder)? updates]) =>
      (new AllestimentoBuilder()..update(updates))._build();

  _$Allestimento._(
      {this.alimentazione,
      this.anno,
      this.categoria,
      this.cilindrata,
      this.codiceInfocar,
      this.codiceInfocarAM,
      this.codiceMarca,
      this.codiceModello,
      this.dataAgg,
      this.descrizione,
      this.descrizioneCompleta,
      this.fineImmatricolazione,
      this.fineVendita,
      this.inizioImmatricolazione,
      this.inizioVendita,
      this.mese})
      : super._();

  @override
  Allestimento rebuild(void Function(AllestimentoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AllestimentoBuilder toBuilder() => new AllestimentoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Allestimento &&
        alimentazione == other.alimentazione &&
        anno == other.anno &&
        categoria == other.categoria &&
        cilindrata == other.cilindrata &&
        codiceInfocar == other.codiceInfocar &&
        codiceInfocarAM == other.codiceInfocarAM &&
        codiceMarca == other.codiceMarca &&
        codiceModello == other.codiceModello &&
        dataAgg == other.dataAgg &&
        descrizione == other.descrizione &&
        descrizioneCompleta == other.descrizioneCompleta &&
        fineImmatricolazione == other.fineImmatricolazione &&
        fineVendita == other.fineVendita &&
        inizioImmatricolazione == other.inizioImmatricolazione &&
        inizioVendita == other.inizioVendita &&
        mese == other.mese;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, alimentazione.hashCode);
    _$hash = $jc(_$hash, anno.hashCode);
    _$hash = $jc(_$hash, categoria.hashCode);
    _$hash = $jc(_$hash, cilindrata.hashCode);
    _$hash = $jc(_$hash, codiceInfocar.hashCode);
    _$hash = $jc(_$hash, codiceInfocarAM.hashCode);
    _$hash = $jc(_$hash, codiceMarca.hashCode);
    _$hash = $jc(_$hash, codiceModello.hashCode);
    _$hash = $jc(_$hash, dataAgg.hashCode);
    _$hash = $jc(_$hash, descrizione.hashCode);
    _$hash = $jc(_$hash, descrizioneCompleta.hashCode);
    _$hash = $jc(_$hash, fineImmatricolazione.hashCode);
    _$hash = $jc(_$hash, fineVendita.hashCode);
    _$hash = $jc(_$hash, inizioImmatricolazione.hashCode);
    _$hash = $jc(_$hash, inizioVendita.hashCode);
    _$hash = $jc(_$hash, mese.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Allestimento')
          ..add('alimentazione', alimentazione)
          ..add('anno', anno)
          ..add('categoria', categoria)
          ..add('cilindrata', cilindrata)
          ..add('codiceInfocar', codiceInfocar)
          ..add('codiceInfocarAM', codiceInfocarAM)
          ..add('codiceMarca', codiceMarca)
          ..add('codiceModello', codiceModello)
          ..add('dataAgg', dataAgg)
          ..add('descrizione', descrizione)
          ..add('descrizioneCompleta', descrizioneCompleta)
          ..add('fineImmatricolazione', fineImmatricolazione)
          ..add('fineVendita', fineVendita)
          ..add('inizioImmatricolazione', inizioImmatricolazione)
          ..add('inizioVendita', inizioVendita)
          ..add('mese', mese))
        .toString();
  }
}

class AllestimentoBuilder
    implements Builder<Allestimento, AllestimentoBuilder> {
  _$Allestimento? _$v;

  String? _alimentazione;
  String? get alimentazione => _$this._alimentazione;
  set alimentazione(String? alimentazione) =>
      _$this._alimentazione = alimentazione;

  String? _anno;
  String? get anno => _$this._anno;
  set anno(String? anno) => _$this._anno = anno;

  String? _categoria;
  String? get categoria => _$this._categoria;
  set categoria(String? categoria) => _$this._categoria = categoria;

  String? _cilindrata;
  String? get cilindrata => _$this._cilindrata;
  set cilindrata(String? cilindrata) => _$this._cilindrata = cilindrata;

  String? _codiceInfocar;
  String? get codiceInfocar => _$this._codiceInfocar;
  set codiceInfocar(String? codiceInfocar) =>
      _$this._codiceInfocar = codiceInfocar;

  num? _codiceInfocarAM;
  num? get codiceInfocarAM => _$this._codiceInfocarAM;
  set codiceInfocarAM(num? codiceInfocarAM) =>
      _$this._codiceInfocarAM = codiceInfocarAM;

  String? _codiceMarca;
  String? get codiceMarca => _$this._codiceMarca;
  set codiceMarca(String? codiceMarca) => _$this._codiceMarca = codiceMarca;

  num? _codiceModello;
  num? get codiceModello => _$this._codiceModello;
  set codiceModello(num? codiceModello) =>
      _$this._codiceModello = codiceModello;

  num? _dataAgg;
  num? get dataAgg => _$this._dataAgg;
  set dataAgg(num? dataAgg) => _$this._dataAgg = dataAgg;

  String? _descrizione;
  String? get descrizione => _$this._descrizione;
  set descrizione(String? descrizione) => _$this._descrizione = descrizione;

  String? _descrizioneCompleta;
  String? get descrizioneCompleta => _$this._descrizioneCompleta;
  set descrizioneCompleta(String? descrizioneCompleta) =>
      _$this._descrizioneCompleta = descrizioneCompleta;

  String? _fineImmatricolazione;
  String? get fineImmatricolazione => _$this._fineImmatricolazione;
  set fineImmatricolazione(String? fineImmatricolazione) =>
      _$this._fineImmatricolazione = fineImmatricolazione;

  String? _fineVendita;
  String? get fineVendita => _$this._fineVendita;
  set fineVendita(String? fineVendita) => _$this._fineVendita = fineVendita;

  String? _inizioImmatricolazione;
  String? get inizioImmatricolazione => _$this._inizioImmatricolazione;
  set inizioImmatricolazione(String? inizioImmatricolazione) =>
      _$this._inizioImmatricolazione = inizioImmatricolazione;

  String? _inizioVendita;
  String? get inizioVendita => _$this._inizioVendita;
  set inizioVendita(String? inizioVendita) =>
      _$this._inizioVendita = inizioVendita;

  String? _mese;
  String? get mese => _$this._mese;
  set mese(String? mese) => _$this._mese = mese;

  AllestimentoBuilder() {
    Allestimento._defaults(this);
  }

  AllestimentoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _alimentazione = $v.alimentazione;
      _anno = $v.anno;
      _categoria = $v.categoria;
      _cilindrata = $v.cilindrata;
      _codiceInfocar = $v.codiceInfocar;
      _codiceInfocarAM = $v.codiceInfocarAM;
      _codiceMarca = $v.codiceMarca;
      _codiceModello = $v.codiceModello;
      _dataAgg = $v.dataAgg;
      _descrizione = $v.descrizione;
      _descrizioneCompleta = $v.descrizioneCompleta;
      _fineImmatricolazione = $v.fineImmatricolazione;
      _fineVendita = $v.fineVendita;
      _inizioImmatricolazione = $v.inizioImmatricolazione;
      _inizioVendita = $v.inizioVendita;
      _mese = $v.mese;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Allestimento other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Allestimento;
  }

  @override
  void update(void Function(AllestimentoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Allestimento build() => _build();

  _$Allestimento _build() {
    final _$result = _$v ??
        new _$Allestimento._(
          alimentazione: alimentazione,
          anno: anno,
          categoria: categoria,
          cilindrata: cilindrata,
          codiceInfocar: codiceInfocar,
          codiceInfocarAM: codiceInfocarAM,
          codiceMarca: codiceMarca,
          codiceModello: codiceModello,
          dataAgg: dataAgg,
          descrizione: descrizione,
          descrizioneCompleta: descrizioneCompleta,
          fineImmatricolazione: fineImmatricolazione,
          fineVendita: fineVendita,
          inizioImmatricolazione: inizioImmatricolazione,
          inizioVendita: inizioVendita,
          mese: mese,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
