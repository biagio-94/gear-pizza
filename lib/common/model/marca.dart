//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'marca.g.dart';

/// Marca
///
/// Properties:
/// * [codiceMarca]
/// * [descrizioneMarca]
/// * [infocarMarca]
@BuiltValue()
abstract class Marca implements Built<Marca, MarcaBuilder> {
  @BuiltValueField(wireName: r'codiceMarca')
  String? get codiceMarca;

  @BuiltValueField(wireName: r'descrizioneMarca')
  String? get descrizioneMarca;

  @BuiltValueField(wireName: r'infocarMarca')
  String? get infocarMarca;

  Marca._();

  factory Marca([void Function(MarcaBuilder b) updates]) = _$Marca;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MarcaBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Marca> get serializer => _$MarcaSerializer();
}

class _$MarcaSerializer implements PrimitiveSerializer<Marca> {
  @override
  final Iterable<Type> types = const [Marca, _$Marca];

  @override
  final String wireName = r'Marca';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Marca object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.codiceMarca != null) {
      yield r'codiceMarca';
      yield serializers.serialize(
        object.codiceMarca,
        specifiedType: const FullType(String),
      );
    }
    if (object.descrizioneMarca != null) {
      yield r'descrizioneMarca';
      yield serializers.serialize(
        object.descrizioneMarca,
        specifiedType: const FullType(String),
      );
    }
    if (object.infocarMarca != null) {
      yield r'infocarMarca';
      yield serializers.serialize(
        object.infocarMarca,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Marca object, {
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
    required MarcaBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'codiceMarca':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.codiceMarca = valueDes;
          break;
        case r'descrizioneMarca':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.descrizioneMarca = valueDes;
          break;
        case r'infocarMarca':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.infocarMarca = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Marca deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MarcaBuilder();
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
