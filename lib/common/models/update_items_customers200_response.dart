//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:gearpizza/common/models/items_customers.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_items_customers200_response.g.dart';

/// UpdateItemsCustomers200Response
///
/// Properties:
/// * [data]
@BuiltValue()
abstract class UpdateItemsCustomers200Response
    implements
        Built<UpdateItemsCustomers200Response,
            UpdateItemsCustomers200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<ItemsCustomers>? get data;

  UpdateItemsCustomers200Response._();

  factory UpdateItemsCustomers200Response(
          [void updates(UpdateItemsCustomers200ResponseBuilder b)]) =
      _$UpdateItemsCustomers200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateItemsCustomers200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateItemsCustomers200Response> get serializer =>
      _$UpdateItemsCustomers200ResponseSerializer();
}

class _$UpdateItemsCustomers200ResponseSerializer
    implements PrimitiveSerializer<UpdateItemsCustomers200Response> {
  @override
  final Iterable<Type> types = const [
    UpdateItemsCustomers200Response,
    _$UpdateItemsCustomers200Response
  ];

  @override
  final String wireName = r'UpdateItemsCustomers200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateItemsCustomers200Response object, {
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
    UpdateItemsCustomers200Response object, {
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
    required UpdateItemsCustomers200ResponseBuilder result,
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
  UpdateItemsCustomers200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateItemsCustomers200ResponseBuilder();
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
