//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element

import 'package:gearpizza/common/models/items_pizzas_allergens.dart';
import 'dart:core';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'items_pizzas_allergens_inner.g.dart';

/// ItemsPizzasAllergensInner
///
/// Properties:
/// * [id]
/// * [pizzasId]
/// * [allergensId]
@BuiltValue()
abstract class ItemsPizzasAllergensInner
    implements
        Built<ItemsPizzasAllergensInner, ItemsPizzasAllergensInnerBuilder> {
  /// One Of [ItemsPizzasAllergens], [int]
  OneOf get oneOf;

  ItemsPizzasAllergensInner._();

  factory ItemsPizzasAllergensInner(
          [void updates(ItemsPizzasAllergensInnerBuilder b)]) =
      _$ItemsPizzasAllergensInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ItemsPizzasAllergensInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ItemsPizzasAllergensInner> get serializer =>
      _$ItemsPizzasAllergensInnerSerializer();
}

class _$ItemsPizzasAllergensInnerSerializer
    implements PrimitiveSerializer<ItemsPizzasAllergensInner> {
  @override
  final Iterable<Type> types = const [
    ItemsPizzasAllergensInner,
    _$ItemsPizzasAllergensInner
  ];

  @override
  final String wireName = r'ItemsPizzasAllergensInner';

  Iterable<Object?> _serializeProperties(
      Serializers serializers, ItemsPizzasAllergensInner object) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    ItemsPizzasAllergensInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  ItemsPizzasAllergensInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ItemsPizzasAllergensInnerBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [
      FullType(int),
      FullType(ItemsPizzasAllergens),
    ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc,
        specifiedType: targetType) as OneOf;
    return result.build();
  }
}
