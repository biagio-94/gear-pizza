//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:gearpizza/common/models/presets.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_preset200_response.g.dart';

/// CreatePreset200Response
///
/// Properties:
/// * [data]
@BuiltValue()
abstract class CreatePreset200Response
    implements Built<CreatePreset200Response, CreatePreset200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  Presets? get data;

  CreatePreset200Response._();

  factory CreatePreset200Response(
          [void updates(CreatePreset200ResponseBuilder b)]) =
      _$CreatePreset200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreatePreset200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreatePreset200Response> get serializer =>
      _$CreatePreset200ResponseSerializer();
}

class _$CreatePreset200ResponseSerializer
    implements PrimitiveSerializer<CreatePreset200Response> {
  @override
  final Iterable<Type> types = const [
    CreatePreset200Response,
    _$CreatePreset200Response
  ];

  @override
  final String wireName = r'CreatePreset200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreatePreset200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(Presets),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreatePreset200Response object, {
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
    required CreatePreset200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Presets),
          ) as Presets;
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
  CreatePreset200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreatePreset200ResponseBuilder();
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
