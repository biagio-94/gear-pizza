//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:gearpizza/common/models/items_orders_pizzas.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_items_orders_pizzas200_response.g.dart';

/// UpdateItemsOrdersPizzas200Response
///
/// Properties:
/// * [data]
@BuiltValue()
abstract class UpdateItemsOrdersPizzas200Response
    implements
        Built<UpdateItemsOrdersPizzas200Response,
            UpdateItemsOrdersPizzas200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<ItemsOrdersPizzas>? get data;

  UpdateItemsOrdersPizzas200Response._();

  factory UpdateItemsOrdersPizzas200Response(
          [void updates(UpdateItemsOrdersPizzas200ResponseBuilder b)]) =
      _$UpdateItemsOrdersPizzas200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateItemsOrdersPizzas200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateItemsOrdersPizzas200Response> get serializer =>
      _$UpdateItemsOrdersPizzas200ResponseSerializer();
}

class _$UpdateItemsOrdersPizzas200ResponseSerializer
    implements PrimitiveSerializer<UpdateItemsOrdersPizzas200Response> {
  @override
  final Iterable<Type> types = const [
    UpdateItemsOrdersPizzas200Response,
    _$UpdateItemsOrdersPizzas200Response
  ];

  @override
  final String wireName = r'UpdateItemsOrdersPizzas200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateItemsOrdersPizzas200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(BuiltList, [FullType(ItemsOrdersPizzas)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateItemsOrdersPizzas200Response object, {
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
    required UpdateItemsOrdersPizzas200ResponseBuilder result,
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
                const FullType(BuiltList, [FullType(ItemsOrdersPizzas)]),
          ) as BuiltList<ItemsOrdersPizzas>;
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
  UpdateItemsOrdersPizzas200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateItemsOrdersPizzas200ResponseBuilder();
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
