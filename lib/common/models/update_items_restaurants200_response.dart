//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:gearpizza/common/models/items_restaurants.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_items_restaurants200_response.g.dart';

/// UpdateItemsRestaurants200Response
///
/// Properties:
/// * [data]
@BuiltValue()
abstract class UpdateItemsRestaurants200Response
    implements
        Built<UpdateItemsRestaurants200Response,
            UpdateItemsRestaurants200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<ItemsRestaurants>? get data;

  UpdateItemsRestaurants200Response._();

  factory UpdateItemsRestaurants200Response(
          [void updates(UpdateItemsRestaurants200ResponseBuilder b)]) =
      _$UpdateItemsRestaurants200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateItemsRestaurants200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateItemsRestaurants200Response> get serializer =>
      _$UpdateItemsRestaurants200ResponseSerializer();
}

class _$UpdateItemsRestaurants200ResponseSerializer
    implements PrimitiveSerializer<UpdateItemsRestaurants200Response> {
  @override
  final Iterable<Type> types = const [
    UpdateItemsRestaurants200Response,
    _$UpdateItemsRestaurants200Response
  ];

  @override
  final String wireName = r'UpdateItemsRestaurants200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateItemsRestaurants200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(BuiltList, [FullType(ItemsRestaurants)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateItemsRestaurants200Response object, {
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
    required UpdateItemsRestaurants200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(ItemsRestaurants)]),
          ) as BuiltList<ItemsRestaurants>;
          result.data.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdateItemsRestaurants200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateItemsRestaurants200ResponseBuilder();
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
