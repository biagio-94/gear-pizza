//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:gearpizza/common/models/items_allergens.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'read_single_items_allergens200_response.g.dart';

/// ReadSingleItemsAllergens200Response
///
/// Properties:
/// * [data]
@BuiltValue()
abstract class ReadSingleItemsAllergens200Response
    implements
        Built<ReadSingleItemsAllergens200Response,
            ReadSingleItemsAllergens200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  ItemsAllergens? get data;

  ReadSingleItemsAllergens200Response._();

  factory ReadSingleItemsAllergens200Response(
          [void updates(ReadSingleItemsAllergens200ResponseBuilder b)]) =
      _$ReadSingleItemsAllergens200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReadSingleItemsAllergens200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReadSingleItemsAllergens200Response> get serializer =>
      _$ReadSingleItemsAllergens200ResponseSerializer();
}

class _$ReadSingleItemsAllergens200ResponseSerializer
    implements PrimitiveSerializer<ReadSingleItemsAllergens200Response> {
  @override
  final Iterable<Type> types = const [
    ReadSingleItemsAllergens200Response,
    _$ReadSingleItemsAllergens200Response
  ];

  @override
  final String wireName = r'ReadSingleItemsAllergens200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReadSingleItemsAllergens200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(ItemsAllergens),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ReadSingleItemsAllergens200Response object, {
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
    required ReadSingleItemsAllergens200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ItemsAllergens),
          ) as ItemsAllergens;
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
  ReadSingleItemsAllergens200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReadSingleItemsAllergens200ResponseBuilder();
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
