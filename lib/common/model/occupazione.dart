//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'occupazione.g.dart';

/// Occupazione
///
/// Properties:
/// * [codice]
/// * [descrizione]
/// * [gruppo]
/// * [gruppo400]
@BuiltValue()
abstract class Occupazione implements Built<Occupazione, OccupazioneBuilder> {
  @BuiltValueField(wireName: r'codice')
  String? get codice;

  @BuiltValueField(wireName: r'descrizione')
  String? get descrizione;

  @BuiltValueField(wireName: r'gruppo')
  String? get gruppo;

  @BuiltValueField(wireName: r'gruppo400')
  String? get gruppo400;

  Occupazione._();

  factory Occupazione([void Function(OccupazioneBuilder b) updates]) =
      _$Occupazione;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OccupazioneBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Occupazione> get serializer => _$OccupazioneSerializer();
}

class _$OccupazioneSerializer implements PrimitiveSerializer<Occupazione> {
  @override
  final Iterable<Type> types = const [Occupazione, _$Occupazione];

  @override
  final String wireName = r'Occupazione';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Occupazione object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.codice != null) {
      yield r'codice';
      yield serializers.serialize(
        object.codice,
        specifiedType: const FullType(String),
      );
    }
    if (object.descrizione != null) {
      yield r'descrizione';
      yield serializers.serialize(
        object.descrizione,
        specifiedType: const FullType(String),
      );
    }
    if (object.gruppo != null) {
      yield r'gruppo';
      yield serializers.serialize(
        object.gruppo,
        specifiedType: const FullType(String),
      );
    }
    if (object.gruppo400 != null) {
      yield r'gruppo400';
      yield serializers.serialize(
        object.gruppo400,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Occupazione object, {
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
    required OccupazioneBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'codice':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.codice = valueDes;
          break;
        case r'descrizione':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.descrizione = valueDes;
          break;
        case r'gruppo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.gruppo = valueDes;
          break;
        case r'gruppo400':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.gruppo400 = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Occupazione deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OccupazioneBuilder();
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
