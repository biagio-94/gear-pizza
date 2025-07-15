//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:gearpizza/common/models/items_pizzas_allergens_pizzas_id.dart';
import 'package:gearpizza/common/models/items_pizzas_allergens_allergens_id.dart';
import 'package:built_collection/built_collection.dart';
import 'package:gearpizza/common/models/items_pizzas_allergens.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'create_items_pizzas_allergens_request.g.dart';

/// CreateItemsPizzasAllergensRequest
///
/// Properties:
/// * [id]
/// * [pizzasId]
/// * [allergensId]
@BuiltValue()
abstract class CreateItemsPizzasAllergensRequest
    implements
        Built<CreateItemsPizzasAllergensRequest,
            CreateItemsPizzasAllergensRequestBuilder> {
  /// One Of [BuiltList<ItemsPizzasAllergens>], [ItemsPizzasAllergens]
  OneOf get oneOf;

  CreateItemsPizzasAllergensRequest._();

  factory CreateItemsPizzasAllergensRequest(
          [void updates(CreateItemsPizzasAllergensRequestBuilder b)]) =
      _$CreateItemsPizzasAllergensRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateItemsPizzasAllergensRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateItemsPizzasAllergensRequest> get serializer =>
      _$CreateItemsPizzasAllergensRequestSerializer();
}

class _$CreateItemsPizzasAllergensRequestSerializer
    implements PrimitiveSerializer<CreateItemsPizzasAllergensRequest> {
  @override
  final Iterable<Type> types = const [
    CreateItemsPizzasAllergensRequest,
    _$CreateItemsPizzasAllergensRequest
  ];

  @override
  final String wireName = r'CreateItemsPizzasAllergensRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateItemsPizzasAllergensRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    CreateItemsPizzasAllergensRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  CreateItemsPizzasAllergensRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateItemsPizzasAllergensRequestBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [
      FullType(BuiltList, [FullType(ItemsPizzasAllergens)]),
      FullType(ItemsPizzasAllergens),
    ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc,
        specifiedType: targetType) as OneOf;
    return result.build();
  }
}
