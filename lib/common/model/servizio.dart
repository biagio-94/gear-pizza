//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'servizio.g.dart';

/// Servizio
///
/// Properties:
/// * [codicePacchetto]
/// * [codiceServizio]
/// * [descrizioneServizio]
/// * [durata]
@BuiltValue()
abstract class Servizio implements Built<Servizio, ServizioBuilder> {
  @BuiltValueField(wireName: r'codicePacchetto')
  String? get codicePacchetto;

  @BuiltValueField(wireName: r'codiceServizio')
  String? get codiceServizio;

  @BuiltValueField(wireName: r'descrizioneServizio')
  String? get descrizioneServizio;

  @BuiltValueField(wireName: r'durata')
  num? get durata;

  Servizio._();

  factory Servizio([void Function(ServizioBuilder b) updates]) = _$Servizio;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ServizioBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Servizio> get serializer => _$ServizioSerializer();
}

class _$ServizioSerializer implements PrimitiveSerializer<Servizio> {
  @override
  final Iterable<Type> types = const [Servizio, _$Servizio];

  @override
  final String wireName = r'Servizio';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Servizio object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.codicePacchetto != null) {
      yield r'codicePacchetto';
      yield serializers.serialize(
        object.codicePacchetto,
        specifiedType: const FullType(String),
      );
    }
    if (object.codiceServizio != null) {
      yield r'codiceServizio';
      yield serializers.serialize(
        object.codiceServizio,
        specifiedType: const FullType(String),
      );
    }
    if (object.descrizioneServizio != null) {
      yield r'descrizioneServizio';
      yield serializers.serialize(
        object.descrizioneServizio,
        specifiedType: const FullType(String),
      );
    }
    if (object.durata != null) {
      yield r'durata';
      yield serializers.serialize(
        object.durata,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Servizio object, {
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
    required ServizioBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'codicePacchetto':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.codicePacchetto = valueDes;
          break;
        case r'codiceServizio':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.codiceServizio = valueDes;
          break;
        case r'descrizioneServizio':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.descrizioneServizio = valueDes;
          break;
        case r'durata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.durata = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Servizio deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ServizioBuilder();
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
