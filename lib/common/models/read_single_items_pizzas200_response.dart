//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:gearpizza/common/models/items_pizzas.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'read_single_items_pizzas200_response.g.dart';

/// ReadSingleItemsPizzas200Response
///
/// Properties:
/// * [data]
@BuiltValue()
abstract class ReadSingleItemsPizzas200Response
    implements
        Built<ReadSingleItemsPizzas200Response,
            ReadSingleItemsPizzas200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  ItemsPizzas? get data;

  ReadSingleItemsPizzas200Response._();

  factory ReadSingleItemsPizzas200Response(
          [void updates(ReadSingleItemsPizzas200ResponseBuilder b)]) =
      _$ReadSingleItemsPizzas200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReadSingleItemsPizzas200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReadSingleItemsPizzas200Response> get serializer =>
      _$ReadSingleItemsPizzas200ResponseSerializer();
}

class _$ReadSingleItemsPizzas200ResponseSerializer
    implements PrimitiveSerializer<ReadSingleItemsPizzas200Response> {
  @override
  final Iterable<Type> types = const [
    ReadSingleItemsPizzas200Response,
    _$ReadSingleItemsPizzas200Response
  ];

  @override
  final String wireName = r'ReadSingleItemsPizzas200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReadSingleItemsPizzas200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(ItemsPizzas),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ReadSingleItemsPizzas200Response object, {
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
    required ReadSingleItemsPizzas200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ItemsPizzas),
          ) as ItemsPizzas;
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
  ReadSingleItemsPizzas200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReadSingleItemsPizzas200ResponseBuilder();
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
