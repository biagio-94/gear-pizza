//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:gearpizza/common/models/x_metadata.dart';
import 'package:gearpizza/common/models/items_customers.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'read_items_customers200_response.g.dart';

/// ReadItemsCustomers200Response
///
/// Properties:
/// * [data]
/// * [meta]
@BuiltValue()
abstract class ReadItemsCustomers200Response
    implements
        Built<ReadItemsCustomers200Response,
            ReadItemsCustomers200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<ItemsCustomers>? get data;

  @BuiltValueField(wireName: r'meta')
  XMetadata? get meta;

  ReadItemsCustomers200Response._();

  factory ReadItemsCustomers200Response(
          [void updates(ReadItemsCustomers200ResponseBuilder b)]) =
      _$ReadItemsCustomers200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReadItemsCustomers200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReadItemsCustomers200Response> get serializer =>
      _$ReadItemsCustomers200ResponseSerializer();
}

class _$ReadItemsCustomers200ResponseSerializer
    implements PrimitiveSerializer<ReadItemsCustomers200Response> {
  @override
  final Iterable<Type> types = const [
    ReadItemsCustomers200Response,
    _$ReadItemsCustomers200Response
  ];

  @override
  final String wireName = r'ReadItemsCustomers200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReadItemsCustomers200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(BuiltList, [FullType(ItemsCustomers)]),
      );
    }
    if (object.meta != null) {
      yield r'meta';
      yield serializers.serialize(
        object.meta,
        specifiedType: const FullType(XMetadata),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ReadItemsCustomers200Response object, {
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
    required ReadItemsCustomers200ResponseBuilder result,
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
        case r'meta':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(XMetadata),
          ) as XMetadata;
          result.meta.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ReadItemsCustomers200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReadItemsCustomers200ResponseBuilder();
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
