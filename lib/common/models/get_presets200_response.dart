//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:gearpizza/common/models/x_metadata.dart';
import 'package:gearpizza/common/models/presets.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_presets200_response.g.dart';

/// GetPresets200Response
///
/// Properties:
/// * [data]
/// * [meta]
@BuiltValue()
abstract class GetPresets200Response
    implements Built<GetPresets200Response, GetPresets200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<Presets>? get data;

  @BuiltValueField(wireName: r'meta')
  XMetadata? get meta;

  GetPresets200Response._();

  factory GetPresets200Response(
      [void updates(GetPresets200ResponseBuilder b)]) = _$GetPresets200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetPresets200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetPresets200Response> get serializer =>
      _$GetPresets200ResponseSerializer();
}

class _$GetPresets200ResponseSerializer
    implements PrimitiveSerializer<GetPresets200Response> {
  @override
  final Iterable<Type> types = const [
    GetPresets200Response,
    _$GetPresets200Response
  ];

  @override
  final String wireName = r'GetPresets200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetPresets200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(BuiltList, [FullType(Presets)]),
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
    GetPresets200Response object, {
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
    required GetPresets200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Presets)]),
          ) as BuiltList<Presets>;
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
  GetPresets200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetPresets200ResponseBuilder();
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
