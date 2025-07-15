//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:gearpizza/common/models/items_orders_customer.dart';
import 'package:gearpizza/common/models/items_pizzas_restaurant.dart';
import 'package:gearpizza/common/models/items_orders_pizzas_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:gearpizza/common/models/items_pizzas_cover_image.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'items_orders.g.dart';

/// ItemsOrders
///
/// Properties:
/// * [id]
/// * [restaurant]
/// * [customer]
/// * [address]
/// * [status]
/// * [helpingImage]
/// * [pizzas]
@BuiltValue()
abstract class ItemsOrders implements Built<ItemsOrders, ItemsOrdersBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'restaurant')
  ItemsPizzasRestaurant? get restaurant;

  @BuiltValueField(wireName: r'customer')
  ItemsOrdersCustomer? get customer;

  @BuiltValueField(wireName: r'address')
  String? get address;

  @BuiltValueField(wireName: r'status')
  String? get status;

  @BuiltValueField(wireName: r'helping_image')
  ItemsPizzasCoverImage? get helpingImage;

  @BuiltValueField(wireName: r'pizzas')
  BuiltList<ItemsOrdersPizzasInner>? get pizzas;

  ItemsOrders._();

  factory ItemsOrders([void updates(ItemsOrdersBuilder b)]) = _$ItemsOrders;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ItemsOrdersBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ItemsOrders> get serializer => _$ItemsOrdersSerializer();
}

class _$ItemsOrdersSerializer implements PrimitiveSerializer<ItemsOrders> {
  @override
  final Iterable<Type> types = const [ItemsOrders, _$ItemsOrders];

  @override
  final String wireName = r'ItemsOrders';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ItemsOrders object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.restaurant != null) {
      yield r'restaurant';
      yield serializers.serialize(
        object.restaurant,
        specifiedType: const FullType.nullable(ItemsPizzasRestaurant),
      );
    }
    if (object.customer != null) {
      yield r'customer';
      yield serializers.serialize(
        object.customer,
        specifiedType: const FullType.nullable(ItemsOrdersCustomer),
      );
    }
    if (object.address != null) {
      yield r'address';
      yield serializers.serialize(
        object.address,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.helpingImage != null) {
      yield r'helping_image';
      yield serializers.serialize(
        object.helpingImage,
        specifiedType: const FullType.nullable(ItemsPizzasCoverImage),
      );
    }
    if (object.pizzas != null) {
      yield r'pizzas';
      yield serializers.serialize(
        object.pizzas,
        specifiedType: const FullType.nullable(
            BuiltList, [FullType(ItemsOrdersPizzasInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ItemsOrders object, {
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
    required ItemsOrdersBuilder result,
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
        case r'restaurant':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ItemsPizzasRestaurant),
          ) as ItemsPizzasRestaurant?;
          if (valueDes == null) continue;
          result.restaurant.replace(valueDes);
          break;
        case r'customer':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ItemsOrdersCustomer),
          ) as ItemsOrdersCustomer?;
          if (valueDes == null) continue;
          result.customer.replace(valueDes);
          break;
        case r'address':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.address = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.status = valueDes;
          break;
        case r'helping_image':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ItemsPizzasCoverImage),
          ) as ItemsPizzasCoverImage?;
          if (valueDes == null) continue;
          result.helpingImage.replace(valueDes);
          break;
        case r'pizzas':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(ItemsOrdersPizzasInner)]),
          ) as BuiltList<ItemsOrdersPizzasInner>?;
          if (valueDes == null) continue;
          result.pizzas.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ItemsOrders deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ItemsOrdersBuilder();
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
