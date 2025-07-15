//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:gearpizza/common/models/items_customers.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'read_single_items_customers200_response.g.dart';

/// ReadSingleItemsCustomers200Response
///
/// Properties:
/// * [data]
@BuiltValue()
abstract class ReadSingleItemsCustomers200Response
    implements
        Built<ReadSingleItemsCustomers200Response,
            ReadSingleItemsCustomers200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  ItemsCustomers? get data;

  ReadSingleItemsCustomers200Response._();

  factory ReadSingleItemsCustomers200Response(
          [void updates(ReadSingleItemsCustomers200ResponseBuilder b)]) =
      _$ReadSingleItemsCustomers200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReadSingleItemsCustomers200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReadSingleItemsCustomers200Response> get serializer =>
      _$ReadSingleItemsCustomers200ResponseSerializer();
}

class _$ReadSingleItemsCustomers200ResponseSerializer
    implements PrimitiveSerializer<ReadSingleItemsCustomers200Response> {
  @override
  final Iterable<Type> types = const [
    ReadSingleItemsCustomers200Response,
    _$ReadSingleItemsCustomers200Response
  ];

  @override
  final String wireName = r'ReadSingleItemsCustomers200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReadSingleItemsCustomers200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(ItemsCustomers),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ReadSingleItemsCustomers200Response object, {
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
    required ReadSingleItemsCustomers200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ItemsCustomers),
          ) as ItemsCustomers;
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
  ReadSingleItemsCustomers200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReadSingleItemsCustomers200ResponseBuilder();
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
