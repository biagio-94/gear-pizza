// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preventivo_elenco_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PreventivoElencoItem extends PreventivoElencoItem {
  @override
  final int? id;
  @override
  final num? valoreBene;
  @override
  final num? finanziato;
  @override
  final num? rata;
  @override
  final num? tan;
  @override
  final num? taeg;
  @override
  final String? prodotto;
  @override
  final BuiltList<ServizioAssicurativo>? listaServizi;
  @override
  final String? modelloAuto;
  @override
  final num? dataInserimento;
  @override
  final bool? flagConsenso;
  @override
  final bool? flagInvioDol;
  @override
  final bool? flagCoobbligato;
  @override
  final int? step;
  @override
  final bool? stepCoobbligato;
  @override
  final String? nome;
  @override
  final String? congnome;

  factory _$PreventivoElencoItem(
          [void Function(PreventivoElencoItemBuilder)? updates]) =>
      (new PreventivoElencoItemBuilder()..update(updates))._build();

  _$PreventivoElencoItem._(
      {this.id,
      this.valoreBene,
      this.finanziato,
      this.rata,
      this.tan,
      this.taeg,
      this.prodotto,
      this.listaServizi,
      this.modelloAuto,
      this.dataInserimento,
      this.flagConsenso,
      this.flagInvioDol,
      this.flagCoobbligato,
      this.step,
      this.stepCoobbligato,
      this.nome,
      this.congnome})
      : super._();

  @override
  PreventivoElencoItem rebuild(
          void Function(PreventivoElencoItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PreventivoElencoItemBuilder toBuilder() =>
      new PreventivoElencoItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PreventivoElencoItem &&
        id == other.id &&
        valoreBene == other.valoreBene &&
        finanziato == other.finanziato &&
        rata == other.rata &&
        tan == other.tan &&
        taeg == other.taeg &&
        prodotto == other.prodotto &&
        listaServizi == other.listaServizi &&
        modelloAuto == other.modelloAuto &&
        dataInserimento == other.dataInserimento &&
        flagConsenso == other.flagConsenso &&
        flagInvioDol == other.flagInvioDol &&
        flagCoobbligato == other.flagCoobbligato &&
        step == other.step &&
        stepCoobbligato == other.stepCoobbligato &&
        nome == other.nome &&
        congnome == other.congnome;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, valoreBene.hashCode);
    _$hash = $jc(_$hash, finanziato.hashCode);
    _$hash = $jc(_$hash, rata.hashCode);
    _$hash = $jc(_$hash, tan.hashCode);
    _$hash = $jc(_$hash, taeg.hashCode);
    _$hash = $jc(_$hash, prodotto.hashCode);
    _$hash = $jc(_$hash, listaServizi.hashCode);
    _$hash = $jc(_$hash, modelloAuto.hashCode);
    _$hash = $jc(_$hash, dataInserimento.hashCode);
    _$hash = $jc(_$hash, flagConsenso.hashCode);
    _$hash = $jc(_$hash, flagInvioDol.hashCode);
    _$hash = $jc(_$hash, flagCoobbligato.hashCode);
    _$hash = $jc(_$hash, step.hashCode);
    _$hash = $jc(_$hash, stepCoobbligato.hashCode);
    _$hash = $jc(_$hash, nome.hashCode);
    _$hash = $jc(_$hash, congnome.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PreventivoElencoItem')
          ..add('id', id)
          ..add('valoreBene', valoreBene)
          ..add('finanziato', finanziato)
          ..add('rata', rata)
          ..add('tan', tan)
          ..add('taeg', taeg)
          ..add('prodotto', prodotto)
          ..add('listaServizi', listaServizi)
          ..add('modelloAuto', modelloAuto)
          ..add('dataInserimento', dataInserimento)
          ..add('flagConsenso', flagConsenso)
          ..add('flagInvioDol', flagInvioDol)
          ..add('flagCoobbligato', flagCoobbligato)
          ..add('step', step)
          ..add('stepCoobbligato', stepCoobbligato)
          ..add('nome', nome)
          ..add('congnome', congnome))
        .toString();
  }
}

class PreventivoElencoItemBuilder
    implements Builder<PreventivoElencoItem, PreventivoElencoItemBuilder> {
  _$PreventivoElencoItem? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  num? _valoreBene;
  num? get valoreBene => _$this._valoreBene;
  set valoreBene(num? valoreBene) => _$this._valoreBene = valoreBene;

  num? _finanziato;
  num? get finanziato => _$this._finanziato;
  set finanziato(num? finanziato) => _$this._finanziato = finanziato;

  num? _rata;
  num? get rata => _$this._rata;
  set rata(num? rata) => _$this._rata = rata;

  num? _tan;
  num? get tan => _$this._tan;
  set tan(num? tan) => _$this._tan = tan;

  num? _taeg;
  num? get taeg => _$this._taeg;
  set taeg(num? taeg) => _$this._taeg = taeg;

  String? _prodotto;
  String? get prodotto => _$this._prodotto;
  set prodotto(String? prodotto) => _$this._prodotto = prodotto;

  ListBuilder<ServizioAssicurativo>? _listaServizi;
  ListBuilder<ServizioAssicurativo> get listaServizi =>
      _$this._listaServizi ??= new ListBuilder<ServizioAssicurativo>();
  set listaServizi(ListBuilder<ServizioAssicurativo>? listaServizi) =>
      _$this._listaServizi = listaServizi;

  String? _modelloAuto;
  String? get modelloAuto => _$this._modelloAuto;
  set modelloAuto(String? modelloAuto) => _$this._modelloAuto = modelloAuto;

  num? _dataInserimento;
  num? get dataInserimento => _$this._dataInserimento;
  set dataInserimento(num? dataInserimento) =>
      _$this._dataInserimento = dataInserimento;

  bool? _flagConsenso;
  bool? get flagConsenso => _$this._flagConsenso;
  set flagConsenso(bool? flagConsenso) => _$this._flagConsenso = flagConsenso;

  bool? _flagInvioDol;
  bool? get flagInvioDol => _$this._flagInvioDol;
  set flagInvioDol(bool? flagInvioDol) => _$this._flagInvioDol = flagInvioDol;

  bool? _flagCoobbligato;
  bool? get flagCoobbligato => _$this._flagCoobbligato;
  set flagCoobbligato(bool? flagCoobbligato) =>
      _$this._flagCoobbligato = flagCoobbligato;

  int? _step;
  int? get step => _$this._step;
  set step(int? step) => _$this._step = step;

  bool? _stepCoobbligato;
  bool? get stepCoobbligato => _$this._stepCoobbligato;
  set stepCoobbligato(bool? stepCoobbligato) =>
      _$this._stepCoobbligato = stepCoobbligato;

  String? _nome;
  String? get nome => _$this._nome;
  set nome(String? nome) => _$this._nome = nome;

  String? _congnome;
  String? get congnome => _$this._congnome;
  set congnome(String? congnome) => _$this._congnome = congnome;

  PreventivoElencoItemBuilder() {
    PreventivoElencoItem._defaults(this);
  }

  PreventivoElencoItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _valoreBene = $v.valoreBene;
      _finanziato = $v.finanziato;
      _rata = $v.rata;
      _tan = $v.tan;
      _taeg = $v.taeg;
      _prodotto = $v.prodotto;
      _listaServizi = $v.listaServizi?.toBuilder();
      _modelloAuto = $v.modelloAuto;
      _dataInserimento = $v.dataInserimento;
      _flagConsenso = $v.flagConsenso;
      _flagInvioDol = $v.flagInvioDol;
      _flagCoobbligato = $v.flagCoobbligato;
      _step = $v.step;
      _stepCoobbligato = $v.stepCoobbligato;
      _nome = $v.nome;
      _congnome = $v.congnome;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PreventivoElencoItem other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PreventivoElencoItem;
  }

  @override
  void update(void Function(PreventivoElencoItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PreventivoElencoItem build() => _build();

  _$PreventivoElencoItem _build() {
    _$PreventivoElencoItem _$result;
    try {
      _$result = _$v ??
          new _$PreventivoElencoItem._(
            id: id,
            valoreBene: valoreBene,
            finanziato: finanziato,
            rata: rata,
            tan: tan,
            taeg: taeg,
            prodotto: prodotto,
            listaServizi: _listaServizi?.build(),
            modelloAuto: modelloAuto,
            dataInserimento: dataInserimento,
            flagConsenso: flagConsenso,
            flagInvioDol: flagInvioDol,
            flagCoobbligato: flagCoobbligato,
            step: step,
            stepCoobbligato: stepCoobbligato,
            nome: nome,
            congnome: congnome,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'listaServizi';
        _listaServizi?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PreventivoElencoItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
