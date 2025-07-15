//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:gearpizza/common/models/x_metadata.dart';
import 'package:gearpizza/common/models/items_restaurants.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'read_items_restaurants200_response.g.dart';

/// ReadItemsRestaurants200Response
///
/// Properties:
/// * [data]
/// * [meta]
@BuiltValue()
abstract class ReadItemsRestaurants200Response
    implements
        Built<ReadItemsRestaurants200Response,
            ReadItemsRestaurants200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<ItemsRestaurants>? get data;

  @BuiltValueField(wireName: r'meta')
  XMetadata? get meta;

  ReadItemsRestaurants200Response._();

  factory ReadItemsRestaurants200Response(
          [void updates(ReadItemsRestaurants200ResponseBuilder b)]) =
      _$ReadItemsRestaurants200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReadItemsRestaurants200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReadItemsRestaurants200Response> get serializer =>
      _$ReadItemsRestaurants200ResponseSerializer();
}

class _$ReadItemsRestaurants200ResponseSerializer
    implements PrimitiveSerializer<ReadItemsRestaurants200Response> {
  @override
  final Iterable<Type> types = const [
    ReadItemsRestaurants200Response,
    _$ReadItemsRestaurants200Response
  ];

  @override
  final String wireName = r'ReadItemsRestaurants200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReadItemsRestaurants200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(BuiltList, [FullType(ItemsRestaurants)]),
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
    ReadItemsRestaurants200Response object, {
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
    required ReadItemsRestaurants200ResponseBuilder result,
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
  ReadItemsRestaurants200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReadItemsRestaurants200ResponseBuilder();
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
