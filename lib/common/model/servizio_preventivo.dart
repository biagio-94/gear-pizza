//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'servizio_preventivo.g.dart';

/// ServizioPreventivo
///
/// Properties:
/// * [codicePacchetto]
/// * [codiceServizio]
/// * [durata]
/// * [provincia]
@BuiltValue()
abstract class ServizioPreventivo
    implements Built<ServizioPreventivo, ServizioPreventivoBuilder> {
  @BuiltValueField(wireName: r'codicePacchetto')
  String? get codicePacchetto;

  @BuiltValueField(wireName: r'codiceServizio')
  String? get codiceServizio;

  @BuiltValueField(wireName: r'durata')
  num? get durata;

  @BuiltValueField(wireName: r'provincia')
  String? get provincia;

  ServizioPreventivo._();

  factory ServizioPreventivo(
          [void Function(ServizioPreventivoBuilder b) updates]) =
      _$ServizioPreventivo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ServizioPreventivoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ServizioPreventivo> get serializer =>
      _$ServizioPreventivoSerializer();
}

class _$ServizioPreventivoSerializer
    implements PrimitiveSerializer<ServizioPreventivo> {
  @override
  final Iterable<Type> types = const [ServizioPreventivo, _$ServizioPreventivo];

  @override
  final String wireName = r'ServizioPreventivo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ServizioPreventivo object, {
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
    if (object.durata != null) {
      yield r'durata';
      yield serializers.serialize(
        object.durata,
        specifiedType: const FullType(num),
      );
    }
    if (object.provincia != null) {
      yield r'provincia';
      yield serializers.serialize(
        object.provincia,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ServizioPreventivo object, {
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
    required ServizioPreventivoBuilder result,
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
        case r'durata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.durata = valueDes;
          break;
        case r'provincia':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.provincia = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ServizioPreventivo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ServizioPreventivoBuilder();
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
