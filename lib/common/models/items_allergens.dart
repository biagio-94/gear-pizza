//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'items_allergens.g.dart';

/// ItemsAllergens
///
/// Properties:
/// * [id]
/// * [name]
@BuiltValue()
abstract class ItemsAllergens
    implements Built<ItemsAllergens, ItemsAllergensBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  ItemsAllergens._();

  factory ItemsAllergens([void updates(ItemsAllergensBuilder b)]) =
      _$ItemsAllergens;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ItemsAllergensBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ItemsAllergens> get serializer =>
      _$ItemsAllergensSerializer();
}

class _$ItemsAllergensSerializer
    implements PrimitiveSerializer<ItemsAllergens> {
  @override
  final Iterable<Type> types = const [ItemsAllergens, _$ItemsAllergens];

  @override
  final String wireName = r'ItemsAllergens';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ItemsAllergens object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ItemsAllergens object, {
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
    required ItemsAllergensBuilder result,
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
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ItemsAllergens deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ItemsAllergensBuilder();
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
