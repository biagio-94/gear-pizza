//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:gearpizza/common/models/items_pizzas_allergens_pizzas_id.dart';
import 'package:gearpizza/common/models/items_orders_pizzas.dart';
import 'package:gearpizza/common/models/items_orders_pizzas_orders_id.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'create_items_orders_pizzas_request.g.dart';

/// CreateItemsOrdersPizzasRequest
///
/// Properties:
/// * [id]
/// * [ordersId]
/// * [pizzasId]
@BuiltValue()
abstract class CreateItemsOrdersPizzasRequest
    implements
        Built<CreateItemsOrdersPizzasRequest,
            CreateItemsOrdersPizzasRequestBuilder> {
  /// One Of [BuiltList<ItemsOrdersPizzas>], [ItemsOrdersPizzas]
  OneOf get oneOf;

  CreateItemsOrdersPizzasRequest._();

  factory CreateItemsOrdersPizzasRequest(
          [void updates(CreateItemsOrdersPizzasRequestBuilder b)]) =
      _$CreateItemsOrdersPizzasRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateItemsOrdersPizzasRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateItemsOrdersPizzasRequest> get serializer =>
      _$CreateItemsOrdersPizzasRequestSerializer();
}

class _$CreateItemsOrdersPizzasRequestSerializer
    implements PrimitiveSerializer<CreateItemsOrdersPizzasRequest> {
  @override
  final Iterable<Type> types = const [
    CreateItemsOrdersPizzasRequest,
    _$CreateItemsOrdersPizzasRequest
  ];

  @override
  final String wireName = r'CreateItemsOrdersPizzasRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateItemsOrdersPizzasRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    CreateItemsOrdersPizzasRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  CreateItemsOrdersPizzasRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateItemsOrdersPizzasRequestBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [
      FullType(BuiltList, [FullType(ItemsOrdersPizzas)]),
      FullType(ItemsOrdersPizzas),
    ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc,
        specifiedType: targetType) as OneOf;
    return result.build();
  }
}
