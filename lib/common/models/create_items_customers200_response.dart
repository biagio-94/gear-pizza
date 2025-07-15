//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:gearpizza/common/models/items_customers.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_items_customers200_response.g.dart';

/// CreateItemsCustomers200Response
///
/// Properties:
/// * [data]
@BuiltValue()
abstract class CreateItemsCustomers200Response
    implements
        Built<CreateItemsCustomers200Response,
            CreateItemsCustomers200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<ItemsCustomers>? get data;

  CreateItemsCustomers200Response._();

  factory CreateItemsCustomers200Response(
          [void updates(CreateItemsCustomers200ResponseBuilder b)]) =
      _$CreateItemsCustomers200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateItemsCustomers200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateItemsCustomers200Response> get serializer =>
      _$CreateItemsCustomers200ResponseSerializer();
}

class _$CreateItemsCustomers200ResponseSerializer
    implements PrimitiveSerializer<CreateItemsCustomers200Response> {
  @override
  final Iterable<Type> types = const [
    CreateItemsCustomers200Response,
    _$CreateItemsCustomers200Response
  ];

  @override
  final String wireName = r'CreateItemsCustomers200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateItemsCustomers200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(BuiltList, [FullType(ItemsCustomers)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateItemsCustomers200Response object, {
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
    required CreateItemsCustomers200ResponseBuilder result,
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
                const FullType(BuiltList, [FullType(ItemsCustomers)]),
          ) as BuiltList<ItemsCustomers>;
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
  CreateItemsCustomers200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateItemsCustomers200ResponseBuilder();
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
