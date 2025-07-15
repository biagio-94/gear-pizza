//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:gearpizza/common/models/items_pizzas_allergens_pizzas_id.dart';
import 'package:gearpizza/common/models/items_orders_pizzas_orders_id.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'items_orders_pizzas.g.dart';

/// ItemsOrdersPizzas
///
/// Properties:
/// * [id]
/// * [ordersId]
/// * [pizzasId]
@BuiltValue()
abstract class ItemsOrdersPizzas
    implements Built<ItemsOrdersPizzas, ItemsOrdersPizzasBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'orders_id')
  ItemsOrdersPizzasOrdersId? get ordersId;

  @BuiltValueField(wireName: r'pizzas_id')
  ItemsPizzasAllergensPizzasId? get pizzasId;

  ItemsOrdersPizzas._();

  factory ItemsOrdersPizzas([void updates(ItemsOrdersPizzasBuilder b)]) =
      _$ItemsOrdersPizzas;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ItemsOrdersPizzasBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ItemsOrdersPizzas> get serializer =>
      _$ItemsOrdersPizzasSerializer();
}

class _$ItemsOrdersPizzasSerializer
    implements PrimitiveSerializer<ItemsOrdersPizzas> {
  @override
  final Iterable<Type> types = const [ItemsOrdersPizzas, _$ItemsOrdersPizzas];

  @override
  final String wireName = r'ItemsOrdersPizzas';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ItemsOrdersPizzas object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.ordersId != null) {
      yield r'orders_id';
      yield serializers.serialize(
        object.ordersId,
        specifiedType: const FullType.nullable(ItemsOrdersPizzasOrdersId),
      );
    }
    if (object.pizzasId != null) {
      yield r'pizzas_id';
      yield serializers.serialize(
        object.pizzasId,
        specifiedType: const FullType.nullable(ItemsPizzasAllergensPizzasId),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ItemsOrdersPizzas object, {
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
    required ItemsOrdersPizzasBuilder result,
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
        case r'orders_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ItemsOrdersPizzasOrdersId),
          ) as ItemsOrdersPizzasOrdersId?;
          if (valueDes == null) continue;
          result.ordersId.replace(valueDes);
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ItemsOrdersPizzas deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ItemsOrdersPizzasBuilder();
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
