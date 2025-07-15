//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'intermediario.g.dart';

/// Intermediario
///
/// Properties:
/// * [codice]
/// * [collegato]
/// * [ragioneSociale]
/// * [responsabile]
/// * [tipoIntermediario]
/// * [utenteCapoCatena]
/// * [ruoli]
/// * [tabelleSpecimen]
/// * [notifiche]
@BuiltValue()
abstract class Intermediario
    implements Built<Intermediario, IntermediarioBuilder> {
  @BuiltValueField(wireName: r'codice')
  int? get codice;

  @BuiltValueField(wireName: r'collegato')
  String? get collegato;

  @BuiltValueField(wireName: r'ragioneSociale')
  String? get ragioneSociale;

  @BuiltValueField(wireName: r'responsabile')
  String? get responsabile;

  @BuiltValueField(wireName: r'tipoIntermediario')
  String? get tipoIntermediario;

  @BuiltValueField(wireName: r'utenteCapoCatena')
  String? get utenteCapoCatena;

  @BuiltValueField(wireName: r'ruoli')
  BuiltList<String>? get ruoli;

  @BuiltValueField(wireName: r'tabelle_specimen')
  BuiltList<String>? get tabelleSpecimen;

  @BuiltValueField(wireName: r'notifiche')
  bool? get notifiche;

  Intermediario._();

  factory Intermediario([void Function(IntermediarioBuilder b) updates]) =
      _$Intermediario;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IntermediarioBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Intermediario> get serializer =>
      _$IntermediarioSerializer();
}

class _$IntermediarioSerializer implements PrimitiveSerializer<Intermediario> {
  @override
  final Iterable<Type> types = const [Intermediario, _$Intermediario];

  @override
  final String wireName = r'Intermediario';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Intermediario object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.codice != null) {
      yield r'codice';
      yield serializers.serialize(
        object.codice,
        specifiedType: const FullType(int),
      );
    }
    if (object.collegato != null) {
      yield r'collegato';
      yield serializers.serialize(
        object.collegato,
        specifiedType: const FullType(String),
      );
    }
    if (object.ragioneSociale != null) {
      yield r'ragioneSociale';
      yield serializers.serialize(
        object.ragioneSociale,
        specifiedType: const FullType(String),
      );
    }
    if (object.responsabile != null) {
      yield r'responsabile';
      yield serializers.serialize(
        object.responsabile,
        specifiedType: const FullType(String),
      );
    }
    if (object.tipoIntermediario != null) {
      yield r'tipoIntermediario';
      yield serializers.serialize(
        object.tipoIntermediario,
        specifiedType: const FullType(String),
      );
    }
    if (object.utenteCapoCatena != null) {
      yield r'utenteCapoCatena';
      yield serializers.serialize(
        object.utenteCapoCatena,
        specifiedType: const FullType(String),
      );
    }
    if (object.ruoli != null) {
      yield r'ruoli';
      yield serializers.serialize(
        object.ruoli,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.tabelleSpecimen != null) {
      yield r'tabelle_specimen';
      yield serializers.serialize(
        object.tabelleSpecimen,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.notifiche != null) {
      yield r'notifiche';
      yield serializers.serialize(
        object.notifiche,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Intermediario object, {
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
    required IntermediarioBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'codice':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.codice = valueDes;
          break;
        case r'collegato':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.collegato = valueDes;
          break;
        case r'ragioneSociale':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ragioneSociale = valueDes;
          break;
        case r'responsabile':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.responsabile = valueDes;
          break;
        case r'tipoIntermediario':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.tipoIntermediario = valueDes;
          break;
        case r'utenteCapoCatena':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.utenteCapoCatena = valueDes;
          break;
        case r'ruoli':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.ruoli.replace(valueDes);
          break;
        case r'tabelle_specimen':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.tabelleSpecimen.replace(valueDes);
          break;
        case r'notifiche':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.notifiche = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Intermediario deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IntermediarioBuilder();
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
