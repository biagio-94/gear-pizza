//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:gearpizza/common/models/items_orders.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'read_single_items_orders200_response.g.dart';

/// ReadSingleItemsOrders200Response
///
/// Properties:
/// * [data]
@BuiltValue()
abstract class ReadSingleItemsOrders200Response
    implements
        Built<ReadSingleItemsOrders200Response,
            ReadSingleItemsOrders200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  ItemsOrders? get data;

  ReadSingleItemsOrders200Response._();

  factory ReadSingleItemsOrders200Response(
          [void updates(ReadSingleItemsOrders200ResponseBuilder b)]) =
      _$ReadSingleItemsOrders200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReadSingleItemsOrders200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReadSingleItemsOrders200Response> get serializer =>
      _$ReadSingleItemsOrders200ResponseSerializer();
}

class _$ReadSingleItemsOrders200ResponseSerializer
    implements PrimitiveSerializer<ReadSingleItemsOrders200Response> {
  @override
  final Iterable<Type> types = const [
    ReadSingleItemsOrders200Response,
    _$ReadSingleItemsOrders200Response
  ];

  @override
  final String wireName = r'ReadSingleItemsOrders200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReadSingleItemsOrders200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(ItemsOrders),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ReadSingleItemsOrders200Response object, {
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
    required ReadSingleItemsOrders200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ItemsOrders),
          ) as ItemsOrders;
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
  ReadSingleItemsOrders200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReadSingleItemsOrders200ResponseBuilder();
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
