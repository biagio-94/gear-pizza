//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gearpizza/common/model/servizio_assicurativo.dart';

part 'preventivo_elenco_item.g.dart';

/// PreventivoElencoItem
///
/// Properties:
/// * [id]
/// * [valoreBene]
/// * [finanziato]
/// * [rata]
/// * [tan]
/// * [taeg]
/// * [prodotto]
/// * [listaServizi]
/// * [modelloAuto]
/// * [dataInserimento]
/// * [flagConsenso]
/// * [flagInvioDol]
/// * [flagCoobbligato]
/// * [step]
/// * [stepCoobbligato]
/// * [nome]
/// * [congnome]
@BuiltValue()
abstract class PreventivoElencoItem
    implements Built<PreventivoElencoItem, PreventivoElencoItemBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'valoreBene')
  num? get valoreBene;

  @BuiltValueField(wireName: r'finanziato')
  num? get finanziato;

  @BuiltValueField(wireName: r'rata')
  num? get rata;

  @BuiltValueField(wireName: r'tan')
  num? get tan;

  @BuiltValueField(wireName: r'taeg')
  num? get taeg;

  @BuiltValueField(wireName: r'prodotto')
  String? get prodotto;

  @BuiltValueField(wireName: r'listaServizi')
  BuiltList<ServizioAssicurativo>? get listaServizi;

  @BuiltValueField(wireName: r'modelloAuto')
  String? get modelloAuto;

  @BuiltValueField(wireName: r'dataInserimento')
  num? get dataInserimento;

  @BuiltValueField(wireName: r'flagConsenso')
  bool? get flagConsenso;

  @BuiltValueField(wireName: r'flagInvioDol')
  bool? get flagInvioDol;

  @BuiltValueField(wireName: r'flagCoobbligato')
  bool? get flagCoobbligato;

  @BuiltValueField(wireName: r'step')
  int? get step;

  @BuiltValueField(wireName: r'stepCoobbligato')
  bool? get stepCoobbligato;

  @BuiltValueField(wireName: r'nome')
  String? get nome;

  @BuiltValueField(wireName: r'congnome')
  String? get congnome;

  PreventivoElencoItem._();

  factory PreventivoElencoItem(
          [void Function(PreventivoElencoItemBuilder b) updates]) =
      _$PreventivoElencoItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PreventivoElencoItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PreventivoElencoItem> get serializer =>
      _$PreventivoElencoItemSerializer();
}

class _$PreventivoElencoItemSerializer
    implements PrimitiveSerializer<PreventivoElencoItem> {
  @override
  final Iterable<Type> types = const [
    PreventivoElencoItem,
    _$PreventivoElencoItem
  ];

  @override
  final String wireName = r'PreventivoElencoItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PreventivoElencoItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.valoreBene != null) {
      yield r'valoreBene';
      yield serializers.serialize(
        object.valoreBene,
        specifiedType: const FullType(num),
      );
    }
    if (object.finanziato != null) {
      yield r'finanziato';
      yield serializers.serialize(
        object.finanziato,
        specifiedType: const FullType(num),
      );
    }
    if (object.rata != null) {
      yield r'rata';
      yield serializers.serialize(
        object.rata,
        specifiedType: const FullType(num),
      );
    }
    if (object.tan != null) {
      yield r'tan';
      yield serializers.serialize(
        object.tan,
        specifiedType: const FullType(num),
      );
    }
    if (object.taeg != null) {
      yield r'taeg';
      yield serializers.serialize(
        object.taeg,
        specifiedType: const FullType(num),
      );
    }
    if (object.prodotto != null) {
      yield r'prodotto';
      yield serializers.serialize(
        object.prodotto,
        specifiedType: const FullType(String),
      );
    }
    if (object.listaServizi != null) {
      yield r'listaServizi';
      yield serializers.serialize(
        object.listaServizi,
        specifiedType:
            const FullType(BuiltList, [FullType(ServizioAssicurativo)]),
      );
    }
    if (object.modelloAuto != null) {
      yield r'modelloAuto';
      yield serializers.serialize(
        object.modelloAuto,
        specifiedType: const FullType(String),
      );
    }
    if (object.dataInserimento != null) {
      yield r'dataInserimento';
      yield serializers.serialize(
        object.dataInserimento,
        specifiedType: const FullType(num),
      );
    }
    if (object.flagConsenso != null) {
      yield r'flagConsenso';
      yield serializers.serialize(
        object.flagConsenso,
        specifiedType: const FullType(bool),
      );
    }
    if (object.flagInvioDol != null) {
      yield r'flagInvioDol';
      yield serializers.serialize(
        object.flagInvioDol,
        specifiedType: const FullType(bool),
      );
    }
    if (object.flagCoobbligato != null) {
      yield r'flagCoobbligato';
      yield serializers.serialize(
        object.flagCoobbligato,
        specifiedType: const FullType(bool),
      );
    }
    if (object.step != null) {
      yield r'step';
      yield serializers.serialize(
        object.step,
        specifiedType: const FullType(int),
      );
    }
    if (object.stepCoobbligato != null) {
      yield r'stepCoobbligato';
      yield serializers.serialize(
        object.stepCoobbligato,
        specifiedType: const FullType(bool),
      );
    }
    if (object.nome != null) {
      yield r'nome';
      yield serializers.serialize(
        object.nome,
        specifiedType: const FullType(String),
      );
    }
    if (object.congnome != null) {
      yield r'congnome';
      yield serializers.serialize(
        object.congnome,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PreventivoElencoItem object, {
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
    required PreventivoElencoItemBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
          break;
        case r'valoreBene':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.valoreBene = valueDes;
          break;
        case r'finanziato':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.finanziato = valueDes;
          break;
        case r'rata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.rata = valueDes;
          break;
        case r'tan':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.tan = valueDes;
          break;
        case r'taeg':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.taeg = valueDes;
          break;
        case r'prodotto':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.prodotto = valueDes;
          break;
        case r'listaServizi':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(ServizioAssicurativo)]),
          ) as BuiltList<ServizioAssicurativo>;
          result.listaServizi.replace(valueDes);
          break;
        case r'modelloAuto':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.modelloAuto = valueDes;
          break;
        case r'dataInserimento':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.dataInserimento = valueDes;
          break;
        case r'flagConsenso':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.flagConsenso = valueDes;
          break;
        case r'flagInvioDol':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.flagInvioDol = valueDes;
          break;
        case r'flagCoobbligato':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.flagCoobbligato = valueDes;
          break;
        case r'step':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.step = valueDes;
          break;
        case r'stepCoobbligato':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.stepCoobbligato = valueDes;
          break;
        case r'nome':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.nome = valueDes;
          break;
        case r'congnome':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.congnome = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PreventivoElencoItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PreventivoElencoItemBuilder();
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
