//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:gearpizza/common/models/items_restaurants.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'update_items_restaurants_request.g.dart';

/// UpdateItemsRestaurantsRequest
///
/// Properties:
/// * [id]
/// * [name]
/// * [coverImage]
/// * [owner]
/// * [pizzas]
@BuiltValue()
abstract class UpdateItemsRestaurantsRequest
    implements
        Built<UpdateItemsRestaurantsRequest,
            UpdateItemsRestaurantsRequestBuilder> {
  /// One Of [BuiltList<ItemsRestaurants>], [ItemsRestaurants]
  OneOf get oneOf;

  UpdateItemsRestaurantsRequest._();

  factory UpdateItemsRestaurantsRequest(
          [void updates(UpdateItemsRestaurantsRequestBuilder b)]) =
      _$UpdateItemsRestaurantsRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateItemsRestaurantsRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateItemsRestaurantsRequest> get serializer =>
      _$UpdateItemsRestaurantsRequestSerializer();
}

class _$UpdateItemsRestaurantsRequestSerializer
    implements PrimitiveSerializer<UpdateItemsRestaurantsRequest> {
  @override
  final Iterable<Type> types = const [
    UpdateItemsRestaurantsRequest,
    _$UpdateItemsRestaurantsRequest
  ];

  @override
  final String wireName = r'UpdateItemsRestaurantsRequest';

  Iterable<Object?> _serializeProperties(
      Serializers serializers, UpdateItemsRestaurantsRequest object) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    UpdateItemsRestaurantsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  UpdateItemsRestaurantsRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateItemsRestaurantsRequestBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [
      FullType(BuiltList, [FullType(ItemsRestaurants)]),
      FullType(ItemsRestaurants),
    ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc,
        specifiedType: targetType) as OneOf;
    return result.build();
  }
}
