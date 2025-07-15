//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gearpizza/common/model/servizio_assicurativo.dart';

part 'pacchetto_assicurativo.g.dart';

/// PacchettoAssicurativo
///
/// Properties:
/// * [descrizione]
/// * [listaServizi]
/// * [linkFascicolo]
/// * [logo]
/// * [codicePacchetto]
@BuiltValue()
abstract class PacchettoAssicurativo
    implements Built<PacchettoAssicurativo, PacchettoAssicurativoBuilder> {
  @BuiltValueField(wireName: r'descrizione')
  String? get descrizione;

  @BuiltValueField(wireName: r'listaServizi')
  BuiltList<ServizioAssicurativo>? get listaServizi;

  @BuiltValueField(wireName: r'linkFascicolo')
  String? get linkFascicolo;

  @BuiltValueField(wireName: r'logo')
  String? get logo;

  @BuiltValueField(wireName: r'codicePacchetto')
  String? get codicePacchetto;

  PacchettoAssicurativo._();

  factory PacchettoAssicurativo(
          [void Function(PacchettoAssicurativoBuilder b) updates]) =
      _$PacchettoAssicurativo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PacchettoAssicurativoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PacchettoAssicurativo> get serializer =>
      _$PacchettoAssicurativoSerializer();
}

class _$PacchettoAssicurativoSerializer
    implements PrimitiveSerializer<PacchettoAssicurativo> {
  @override
  final Iterable<Type> types = const [
    PacchettoAssicurativo,
    _$PacchettoAssicurativo
  ];

  @override
  final String wireName = r'PacchettoAssicurativo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PacchettoAssicurativo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.descrizione != null) {
      yield r'descrizione';
      yield serializers.serialize(
        object.descrizione,
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
    if (object.linkFascicolo != null) {
      yield r'linkFascicolo';
      yield serializers.serialize(
        object.linkFascicolo,
        specifiedType: const FullType(String),
      );
    }
    if (object.logo != null) {
      yield r'logo';
      yield serializers.serialize(
        object.logo,
        specifiedType: const FullType(String),
      );
    }
    if (object.codicePacchetto != null) {
      yield r'codicePacchetto';
      yield serializers.serialize(
        object.codicePacchetto,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PacchettoAssicurativo object, {
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
    required PacchettoAssicurativoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'descrizione':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.descrizione = valueDes;
          break;
        case r'listaServizi':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(ServizioAssicurativo)]),
          ) as BuiltList<ServizioAssicurativo>;
          result.listaServizi.replace(valueDes);
          break;
        case r'linkFascicolo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.linkFascicolo = valueDes;
          break;
        case r'logo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.logo = valueDes;
          break;
        case r'codicePacchetto':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.codicePacchetto = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PacchettoAssicurativo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PacchettoAssicurativoBuilder();
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
