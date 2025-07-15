//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'funzionalita.g.dart';

/// Funzionalita
///
/// Properties:
/// * [funzionalita]
/// * [titolo]
@BuiltValue()
abstract class Funzionalita
    implements Built<Funzionalita, FunzionalitaBuilder> {
  @BuiltValueField(wireName: r'funzionalita')
  String? get funzionalita;

  @BuiltValueField(wireName: r'titolo')
  String? get titolo;

  Funzionalita._();

  factory Funzionalita([void Function(FunzionalitaBuilder b) updates]) =
      _$Funzionalita;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FunzionalitaBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Funzionalita> get serializer => _$FunzionalitaSerializer();
}

class _$FunzionalitaSerializer implements PrimitiveSerializer<Funzionalita> {
  @override
  final Iterable<Type> types = const [Funzionalita, _$Funzionalita];

  @override
  final String wireName = r'Funzionalita';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Funzionalita object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.funzionalita != null) {
      yield r'funzionalita';
      yield serializers.serialize(
        object.funzionalita,
        specifiedType: const FullType(String),
      );
    }
    if (object.titolo != null) {
      yield r'titolo';
      yield serializers.serialize(
        object.titolo,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Funzionalita object, {
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
    required FunzionalitaBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'funzionalita':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.funzionalita = valueDes;
          break;
        case r'titolo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.titolo = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Funzionalita deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FunzionalitaBuilder();
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
