//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:gearpizza/common/models/activity.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_comment200_response.g.dart';

/// CreateComment200Response
///
/// Properties:
/// * [data]
@BuiltValue()
abstract class CreateComment200Response
    implements
        Built<CreateComment200Response, CreateComment200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  Activity? get data;

  CreateComment200Response._();

  factory CreateComment200Response(
          [void updates(CreateComment200ResponseBuilder b)]) =
      _$CreateComment200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateComment200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateComment200Response> get serializer =>
      _$CreateComment200ResponseSerializer();
}

class _$CreateComment200ResponseSerializer
    implements PrimitiveSerializer<CreateComment200Response> {
  @override
  final Iterable<Type> types = const [
    CreateComment200Response,
    _$CreateComment200Response
  ];

  @override
  final String wireName = r'CreateComment200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateComment200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(Activity),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateComment200Response object, {
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
    required CreateComment200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Activity),
          ) as Activity;
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
  CreateComment200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateComment200ResponseBuilder();
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
