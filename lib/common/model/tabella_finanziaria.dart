//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gearpizza/common/model/pacchetto_assicurativo.dart';

part 'tabella_finanziaria.g.dart';

/// TabellaFinanziaria
///
/// Properties:
/// * [codiceCollegato]
/// * [codiceTabella]
/// * [codiceProdotto]
/// * [codiceBene]
/// * [descrizioneTabella]
/// * [descrizioneProdotto]
/// * [descrizioneBene]
/// * [dataScadenzaDol]
/// * [dataScadenzaOcs]
/// * [annullata]
/// * [tipoInDatiFin]
/// * [commissioniProtette]
/// * [commissioniDaProporre]
/// * [finanziatoMinimo]
/// * [finanziatoMassimo]
/// * [assicurazione]
/// * [codAs1]
/// * [codAs2]
/// * [codAs3]
/// * [codAs4]
/// * [codAs5]
/// * [codAs6]
/// * [codAs7]
/// * [codAs8]
/// * [codAs9]
/// * [codAs0]
/// * [tipoProdottoOcs]
/// * [tipoPagamento1]
/// * [tipoPagamento2]
/// * [tipoCalcolo]
/// * [pianoIndicizzazione]
/// * [pacchettiAssicurativi]
/// * [descrizioneConTasso]
/// * [scaduta]
@BuiltValue()
abstract class TabellaFinanziaria
    implements Built<TabellaFinanziaria, TabellaFinanziariaBuilder> {
  @BuiltValueField(wireName: r'codiceCollegato')
  String? get codiceCollegato;

  @BuiltValueField(wireName: r'codiceTabella')
  String? get codiceTabella;

  @BuiltValueField(wireName: r'codiceProdotto')
  String? get codiceProdotto;

  @BuiltValueField(wireName: r'codiceBene')
  String? get codiceBene;

  @BuiltValueField(wireName: r'descrizioneTabella')
  String? get descrizioneTabella;

  @BuiltValueField(wireName: r'descrizioneProdotto')
  String? get descrizioneProdotto;

  @BuiltValueField(wireName: r'descrizioneBene')
  String? get descrizioneBene;

  @BuiltValueField(wireName: r'dataScadenzaDol')
  int? get dataScadenzaDol;

  @BuiltValueField(wireName: r'dataScadenzaOcs')
  int? get dataScadenzaOcs;

  @BuiltValueField(wireName: r'annullata')
  String? get annullata;

  @BuiltValueField(wireName: r'tipoInDatiFin')
  String? get tipoInDatiFin;

  @BuiltValueField(wireName: r'commissioniProtette')
  bool? get commissioniProtette;

  @BuiltValueField(wireName: r'commissioniDaProporre')
  bool? get commissioniDaProporre;

  @BuiltValueField(wireName: r'finanziatoMinimo')
  double? get finanziatoMinimo;

  @BuiltValueField(wireName: r'finanziatoMassimo')
  double? get finanziatoMassimo;

  @BuiltValueField(wireName: r'assicurazione')
  bool? get assicurazione;

  @BuiltValueField(wireName: r'codAs1')
  String? get codAs1;

  @BuiltValueField(wireName: r'codAs2')
  String? get codAs2;

  @BuiltValueField(wireName: r'codAs3')
  String? get codAs3;

  @BuiltValueField(wireName: r'codAs4')
  String? get codAs4;

  @BuiltValueField(wireName: r'codAs5')
  String? get codAs5;

  @BuiltValueField(wireName: r'codAs6')
  String? get codAs6;

  @BuiltValueField(wireName: r'codAs7')
  String? get codAs7;

  @BuiltValueField(wireName: r'codAs8')
  String? get codAs8;

  @BuiltValueField(wireName: r'codAs9')
  String? get codAs9;

  @BuiltValueField(wireName: r'codAs0')
  String? get codAs0;

  @BuiltValueField(wireName: r'tipoProdottoOcs')
  String? get tipoProdottoOcs;

  @BuiltValueField(wireName: r'tipoPagamento1')
  String? get tipoPagamento1;

  @BuiltValueField(wireName: r'tipoPagamento2')
  String? get tipoPagamento2;

  @BuiltValueField(wireName: r'tipoCalcolo')
  String? get tipoCalcolo;

  @BuiltValueField(wireName: r'pianoIndicizzazione')
  String? get pianoIndicizzazione;

  @BuiltValueField(wireName: r'pacchettiAssicurativi')
  BuiltMap<String, PacchettoAssicurativo>? get pacchettiAssicurativi;

  @BuiltValueField(wireName: r'descrizioneConTasso')
  String? get descrizioneConTasso;

  @BuiltValueField(wireName: r'scaduta')
  bool? get scaduta;

  TabellaFinanziaria._();

  factory TabellaFinanziaria(
          [void Function(TabellaFinanziariaBuilder b) updates]) =
      _$TabellaFinanziaria;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TabellaFinanziariaBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TabellaFinanziaria> get serializer =>
      _$TabellaFinanziariaSerializer();
}

class _$TabellaFinanziariaSerializer
    implements PrimitiveSerializer<TabellaFinanziaria> {
  @override
  final Iterable<Type> types = const [TabellaFinanziaria, _$TabellaFinanziaria];

  @override
  final String wireName = r'TabellaFinanziaria';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TabellaFinanziaria object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.codiceCollegato != null) {
      yield r'codiceCollegato';
      yield serializers.serialize(
        object.codiceCollegato,
        specifiedType: const FullType(String),
      );
    }
    if (object.codiceTabella != null) {
      yield r'codiceTabella';
      yield serializers.serialize(
        object.codiceTabella,
        specifiedType: const FullType(String),
      );
    }
    if (object.codiceProdotto != null) {
      yield r'codiceProdotto';
      yield serializers.serialize(
        object.codiceProdotto,
        specifiedType: const FullType(String),
      );
    }
    if (object.codiceBene != null) {
      yield r'codiceBene';
      yield serializers.serialize(
        object.codiceBene,
        specifiedType: const FullType(String),
      );
    }
    if (object.descrizioneTabella != null) {
      yield r'descrizioneTabella';
      yield serializers.serialize(
        object.descrizioneTabella,
        specifiedType: const FullType(String),
      );
    }
    if (object.descrizioneProdotto != null) {
      yield r'descrizioneProdotto';
      yield serializers.serialize(
        object.descrizioneProdotto,
        specifiedType: const FullType(String),
      );
    }
    if (object.descrizioneBene != null) {
      yield r'descrizioneBene';
      yield serializers.serialize(
        object.descrizioneBene,
        specifiedType: const FullType(String),
      );
    }
    if (object.dataScadenzaDol != null) {
      yield r'dataScadenzaDol';
      yield serializers.serialize(
        object.dataScadenzaDol,
        specifiedType: const FullType(int),
      );
    }
    if (object.dataScadenzaOcs != null) {
      yield r'dataScadenzaOcs';
      yield serializers.serialize(
        object.dataScadenzaOcs,
        specifiedType: const FullType(int),
      );
    }
    if (object.annullata != null) {
      yield r'annullata';
      yield serializers.serialize(
        object.annullata,
        specifiedType: const FullType(String),
      );
    }
    if (object.tipoInDatiFin != null) {
      yield r'tipoInDatiFin';
      yield serializers.serialize(
        object.tipoInDatiFin,
        specifiedType: const FullType(String),
      );
    }
    if (object.commissioniProtette != null) {
      yield r'commissioniProtette';
      yield serializers.serialize(
        object.commissioniProtette,
        specifiedType: const FullType(bool),
      );
    }
    if (object.commissioniDaProporre != null) {
      yield r'commissioniDaProporre';
      yield serializers.serialize(
        object.commissioniDaProporre,
        specifiedType: const FullType(bool),
      );
    }
    if (object.finanziatoMinimo != null) {
      yield r'finanziatoMinimo';
      yield serializers.serialize(
        object.finanziatoMinimo,
        specifiedType: const FullType(double),
      );
    }
    if (object.finanziatoMassimo != null) {
      yield r'finanziatoMassimo';
      yield serializers.serialize(
        object.finanziatoMassimo,
        specifiedType: const FullType(double),
      );
    }
    if (object.assicurazione != null) {
      yield r'assicurazione';
      yield serializers.serialize(
        object.assicurazione,
        specifiedType: const FullType(bool),
      );
    }
    if (object.codAs1 != null) {
      yield r'codAs1';
      yield serializers.serialize(
        object.codAs1,
        specifiedType: const FullType(String),
      );
    }
    if (object.codAs2 != null) {
      yield r'codAs2';
      yield serializers.serialize(
        object.codAs2,
        specifiedType: const FullType(String),
      );
    }
    if (object.codAs3 != null) {
      yield r'codAs3';
      yield serializers.serialize(
        object.codAs3,
        specifiedType: const FullType(String),
      );
    }
    if (object.codAs4 != null) {
      yield r'codAs4';
      yield serializers.serialize(
        object.codAs4,
        specifiedType: const FullType(String),
      );
    }
    if (object.codAs5 != null) {
      yield r'codAs5';
      yield serializers.serialize(
        object.codAs5,
        specifiedType: const FullType(String),
      );
    }
    if (object.codAs6 != null) {
      yield r'codAs6';
      yield serializers.serialize(
        object.codAs6,
        specifiedType: const FullType(String),
      );
    }
    if (object.codAs7 != null) {
      yield r'codAs7';
      yield serializers.serialize(
        object.codAs7,
        specifiedType: const FullType(String),
      );
    }
    if (object.codAs8 != null) {
      yield r'codAs8';
      yield serializers.serialize(
        object.codAs8,
        specifiedType: const FullType(String),
      );
    }
    if (object.codAs9 != null) {
      yield r'codAs9';
      yield serializers.serialize(
        object.codAs9,
        specifiedType: const FullType(String),
      );
    }
    if (object.codAs0 != null) {
      yield r'codAs0';
      yield serializers.serialize(
        object.codAs0,
        specifiedType: const FullType(String),
      );
    }
    if (object.tipoProdottoOcs != null) {
      yield r'tipoProdottoOcs';
      yield serializers.serialize(
        object.tipoProdottoOcs,
        specifiedType: const FullType(String),
      );
    }
    if (object.tipoPagamento1 != null) {
      yield r'tipoPagamento1';
      yield serializers.serialize(
        object.tipoPagamento1,
        specifiedType: const FullType(String),
      );
    }
    if (object.tipoPagamento2 != null) {
      yield r'tipoPagamento2';
      yield serializers.serialize(
        object.tipoPagamento2,
        specifiedType: const FullType(String),
      );
    }
    if (object.tipoCalcolo != null) {
      yield r'tipoCalcolo';
      yield serializers.serialize(
        object.tipoCalcolo,
        specifiedType: const FullType(String),
      );
    }
    if (object.pianoIndicizzazione != null) {
      yield r'pianoIndicizzazione';
      yield serializers.serialize(
        object.pianoIndicizzazione,
        specifiedType: const FullType(String),
      );
    }
    if (object.pacchettiAssicurativi != null) {
      yield r'pacchettiAssicurativi';
      yield serializers.serialize(
        object.pacchettiAssicurativi,
        specifiedType: const FullType(
            BuiltMap, [FullType(String), FullType(PacchettoAssicurativo)]),
      );
    }
    if (object.descrizioneConTasso != null) {
      yield r'descrizioneConTasso';
      yield serializers.serialize(
        object.descrizioneConTasso,
        specifiedType: const FullType(String),
      );
    }
    if (object.scaduta != null) {
      yield r'scaduta';
      yield serializers.serialize(
        object.scaduta,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TabellaFinanziaria object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TabellaFinanziariaBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'codiceCollegato':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.codiceCollegato = valueDes;
          break;
        case r'codiceTabella':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.codiceTabella = valueDes;
          break;
        case r'codiceProdotto':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.codiceProdotto = valueDes;
          break;
        case r'codiceBene':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.codiceBene = valueDes;
          break;
        case r'descrizioneTabella':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.descrizioneTabella = valueDes;
          break;
        case r'descrizioneProdotto':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.descrizioneProdotto = valueDes;
          break;
        case r'descrizioneBene':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.descrizioneBene = valueDes;
          break;
        case r'dataScadenzaDol':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.dataScadenzaDol = valueDes;
          break;
        case r'dataScadenzaOcs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.dataScadenzaOcs = valueDes;
          break;
        case r'annullata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.annullata = valueDes;
          break;
        case r'tipoInDatiFin':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.tipoInDatiFin = valueDes;
          break;
        case r'commissioniProtette':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.commissioniProtette = valueDes;
          break;
        case r'commissioniDaProporre':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.commissioniDaProporre = valueDes;
          break;
        case r'finanziatoMinimo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.finanziatoMinimo = valueDes;
          break;
        case r'finanziatoMassimo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.finanziatoMassimo = valueDes;
          break;
        case r'assicurazione':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.assicurazione = valueDes;
          break;
        case r'codAs1':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.codAs1 = valueDes;
          break;
        case r'codAs2':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.codAs2 = valueDes;
          break;
        case r'codAs3':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.codAs3 = valueDes;
          break;
        case r'codAs4':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.codAs4 = valueDes;
          break;
        case r'codAs5':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.codAs5 = valueDes;
          break;
        case r'codAs6':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.codAs6 = valueDes;
          break;
        case r'codAs7':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.codAs7 = valueDes;
          break;
        case r'codAs8':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.codAs8 = valueDes;
          break;
        case r'codAs9':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.codAs9 = valueDes;
          break;
        case r'codAs0':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.codAs0 = valueDes;
          break;
        case r'tipoProdottoOcs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.tipoProdottoOcs = valueDes;
          break;
        case r'tipoPagamento1':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.tipoPagamento1 = valueDes;
          break;
        case r'tipoPagamento2':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.tipoPagamento2 = valueDes;
          break;
        case r'tipoCalcolo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.tipoCalcolo = valueDes;
          break;
        case r'pianoIndicizzazione':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.pianoIndicizzazione = valueDes;
          break;
        case r'pacchettiAssicurativi':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltMap, [FullType(String), FullType(PacchettoAssicurativo)]),
          ) as BuiltMap<String, PacchettoAssicurativo>;
          result.pacchettiAssicurativi.replace(valueDes);
          break;
        case r'descrizioneConTasso':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.descrizioneConTasso = valueDes;
          break;
        case r'scaduta':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.scaduta = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TabellaFinanziaria deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TabellaFinanziariaBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}
