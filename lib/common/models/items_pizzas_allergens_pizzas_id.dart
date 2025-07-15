//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:gearpizza/common/models/items_pizzas_restaurant.dart';
import 'package:built_collection/built_collection.dart';
import 'package:gearpizza/common/models/items_pizzas_cover_image.dart';
import 'package:gearpizza/common/models/items_pizzas_allergens_inner.dart';
import 'package:gearpizza/common/models/items_pizzas.dart';
import 'dart:core';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'items_pizzas_allergens_pizzas_id.g.dart';

/// ItemsPizzasAllergensPizzasId
///
/// Properties:
/// * [id]
/// * [name]
/// * [description]
/// * [coverImage]
/// * [restaurant]
/// * [allergens]
@BuiltValue()
abstract class ItemsPizzasAllergensPizzasId
    implements
        Built<ItemsPizzasAllergensPizzasId,
            ItemsPizzasAllergensPizzasIdBuilder> {
  /// One Of [ItemsPizzas], [int]
  OneOf get oneOf;

  ItemsPizzasAllergensPizzasId._();

  factory ItemsPizzasAllergensPizzasId(
          [void updates(ItemsPizzasAllergensPizzasIdBuilder b)]) =
      _$ItemsPizzasAllergensPizzasId;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ItemsPizzasAllergensPizzasIdBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ItemsPizzasAllergensPizzasId> get serializer =>
      _$ItemsPizzasAllergensPizzasIdSerializer();
}

class _$ItemsPizzasAllergensPizzasIdSerializer
    implements PrimitiveSerializer<ItemsPizzasAllergensPizzasId> {
  @override
  final Iterable<Type> types = const [
    ItemsPizzasAllergensPizzasId,
    _$ItemsPizzasAllergensPizzasId
  ];

  @override
  final String wireName = r'ItemsPizzasAllergensPizzasId';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ItemsPizzasAllergensPizzasId object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    ItemsPizzasAllergensPizzasId object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  ItemsPizzasAllergensPizzasId deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ItemsPizzasAllergensPizzasIdBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [
      FullType(int),
      FullType(ItemsPizzas),
    ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc,
        specifiedType: targetType) as OneOf;
    return result.build();
  }
}
