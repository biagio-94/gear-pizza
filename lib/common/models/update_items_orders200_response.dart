//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:gearpizza/common/models/items_orders.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_items_orders200_response.g.dart';

/// UpdateItemsOrders200Response
///
/// Properties:
/// * [data]
@BuiltValue()
abstract class UpdateItemsOrders200Response
    implements
        Built<UpdateItemsOrders200Response,
            UpdateItemsOrders200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<ItemsOrders>? get data;

  UpdateItemsOrders200Response._();

  factory UpdateItemsOrders200Response(
          [void updates(UpdateItemsOrders200ResponseBuilder b)]) =
      _$UpdateItemsOrders200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateItemsOrders200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateItemsOrders200Response> get serializer =>
      _$UpdateItemsOrders200ResponseSerializer();
}

class _$UpdateItemsOrders200ResponseSerializer
    implements PrimitiveSerializer<UpdateItemsOrders200Response> {
  @override
  final Iterable<Type> types = const [
    UpdateItemsOrders200Response,
    _$UpdateItemsOrders200Response
  ];

  @override
  final String wireName = r'UpdateItemsOrders200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateItemsOrders200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(BuiltList, [FullType(ItemsOrders)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateItemsOrders200Response object, {
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
    required UpdateItemsOrders200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ItemsOrders)]),
          ) as BuiltList<ItemsOrders>;
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
  UpdateItemsOrders200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateItemsOrders200ResponseBuilder();
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
