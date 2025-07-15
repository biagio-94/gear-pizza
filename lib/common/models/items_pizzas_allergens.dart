//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:gearpizza/common/models/items_pizzas_allergens_pizzas_id.dart';
import 'package:gearpizza/common/models/items_pizzas_allergens_allergens_id.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'items_pizzas_allergens.g.dart';

/// ItemsPizzasAllergens
///
/// Properties:
/// * [id]
/// * [pizzasId]
/// * [allergensId]
@BuiltValue()
abstract class ItemsPizzasAllergens
    implements Built<ItemsPizzasAllergens, ItemsPizzasAllergensBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'pizzas_id')
  ItemsPizzasAllergensPizzasId? get pizzasId;

  @BuiltValueField(wireName: r'allergens_id')
  ItemsPizzasAllergensAllergensId? get allergensId;

  ItemsPizzasAllergens._();

  factory ItemsPizzasAllergens([void updates(ItemsPizzasAllergensBuilder b)]) =
      _$ItemsPizzasAllergens;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ItemsPizzasAllergensBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ItemsPizzasAllergens> get serializer =>
      _$ItemsPizzasAllergensSerializer();
}

class _$ItemsPizzasAllergensSerializer
    implements PrimitiveSerializer<ItemsPizzasAllergens> {
  @override
  final Iterable<Type> types = const [
    ItemsPizzasAllergens,
    _$ItemsPizzasAllergens
  ];

  @override
  final String wireName = r'ItemsPizzasAllergens';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ItemsPizzasAllergens object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.pizzasId != null) {
      yield r'pizzas_id';
      yield serializers.serialize(
        object.pizzasId,
        specifiedType: const FullType.nullable(ItemsPizzasAllergensPizzasId),
      );
    }
    if (object.allergensId != null) {
      yield r'allergens_id';
      yield serializers.serialize(
        object.allergensId,
        specifiedType: const FullType.nullable(ItemsPizzasAllergensAllergensId),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ItemsPizzasAllergens object, {
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
    required ItemsPizzasAllergensBuilder result,
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
        case r'pizzas_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(ItemsPizzasAllergensPizzasId),
          ) as ItemsPizzasAllergensPizzasId?;
          if (valueDes == null) continue;
          result.pizzasId.replace(valueDes);
          break;
        case r'allergens_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(ItemsPizzasAllergensAllergensId),
          ) as ItemsPizzasAllergensAllergensId?;
          if (valueDes == null) continue;
          result.allergensId.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ItemsPizzasAllergens deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ItemsPizzasAllergensBuilder();
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
