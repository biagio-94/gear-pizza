//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:gearpizza/common/models/items_orders.dart';
import 'dart:core';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'items_orders_pizzas_orders_id.g.dart';

/// ItemsOrdersPizzasOrdersId
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
abstract class ItemsOrdersPizzasOrdersId
    implements
        Built<ItemsOrdersPizzasOrdersId, ItemsOrdersPizzasOrdersIdBuilder> {
  /// One Of [ItemsOrders], [int]
  OneOf get oneOf;

  ItemsOrdersPizzasOrdersId._();

  factory ItemsOrdersPizzasOrdersId(
          [void updates(ItemsOrdersPizzasOrdersIdBuilder b)]) =
      _$ItemsOrdersPizzasOrdersId;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ItemsOrdersPizzasOrdersIdBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ItemsOrdersPizzasOrdersId> get serializer =>
      _$ItemsOrdersPizzasOrdersIdSerializer();
}

class _$ItemsOrdersPizzasOrdersIdSerializer
    implements PrimitiveSerializer<ItemsOrdersPizzasOrdersId> {
  @override
  final Iterable<Type> types = const [
    ItemsOrdersPizzasOrdersId,
    _$ItemsOrdersPizzasOrdersId
  ];

  @override
  final String wireName = r'ItemsOrdersPizzasOrdersId';

  Iterable<Object?> _serializeProperties(
      Serializers serializers, ItemsOrdersPizzasOrdersId object) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    ItemsOrdersPizzasOrdersId object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  ItemsOrdersPizzasOrdersId deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ItemsOrdersPizzasOrdersIdBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [
      FullType(int),
      FullType(ItemsOrders),
    ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc,
        specifiedType: targetType) as OneOf;
    return result.build();
  }
}
