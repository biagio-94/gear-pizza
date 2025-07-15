//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:gearpizza/common/models/items_pizzas_allergens_pizzas_id.dart';
import 'package:gearpizza/common/models/items_orders_pizzas.dart';
import 'package:gearpizza/common/models/items_orders_pizzas_orders_id.dart';
import 'dart:core';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'items_orders_pizzas_inner.g.dart';

/// ItemsOrdersPizzasInner
///
/// Properties:
/// * [id]
/// * [ordersId]
/// * [pizzasId]
@BuiltValue()
abstract class ItemsOrdersPizzasInner
    implements Built<ItemsOrdersPizzasInner, ItemsOrdersPizzasInnerBuilder> {
  /// One Of [ItemsOrdersPizzas], [int]
  OneOf get oneOf;

  ItemsOrdersPizzasInner._();

  factory ItemsOrdersPizzasInner(
          [void updates(ItemsOrdersPizzasInnerBuilder b)]) =
      _$ItemsOrdersPizzasInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ItemsOrdersPizzasInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ItemsOrdersPizzasInner> get serializer =>
      _$ItemsOrdersPizzasInnerSerializer();
}

class _$ItemsOrdersPizzasInnerSerializer
    implements PrimitiveSerializer<ItemsOrdersPizzasInner> {
  @override
  final Iterable<Type> types = const [
    ItemsOrdersPizzasInner,
    _$ItemsOrdersPizzasInner
  ];

  @override
  final String wireName = r'ItemsOrdersPizzasInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ItemsOrdersPizzasInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    ItemsOrdersPizzasInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  ItemsOrdersPizzasInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ItemsOrdersPizzasInnerBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [
      FullType(int),
      FullType(ItemsOrdersPizzas),
    ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc,
        specifiedType: targetType) as OneOf;
    return result.build();
  }
}
