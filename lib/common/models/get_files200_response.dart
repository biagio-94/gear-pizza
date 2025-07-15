//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:gearpizza/common/models/files.dart';
import 'package:gearpizza/common/models/x_metadata.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_files200_response.g.dart';

/// GetFiles200Response
///
/// Properties:
/// * [data]
/// * [meta]
@BuiltValue()
abstract class GetFiles200Response
    implements Built<GetFiles200Response, GetFiles200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<Files>? get data;

  @BuiltValueField(wireName: r'meta')
  XMetadata? get meta;

  GetFiles200Response._();

  factory GetFiles200Response([void updates(GetFiles200ResponseBuilder b)]) =
      _$GetFiles200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetFiles200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetFiles200Response> get serializer =>
      _$GetFiles200ResponseSerializer();
}

class _$GetFiles200ResponseSerializer
    implements PrimitiveSerializer<GetFiles200Response> {
  @override
  final Iterable<Type> types = const [
    GetFiles200Response,
    _$GetFiles200Response
  ];

  @override
  final String wireName = r'GetFiles200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetFiles200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(BuiltList, [FullType(Files)]),
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
    GetFiles200Response object, {
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
    required GetFiles200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Files)]),
          ) as BuiltList<Files>;
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
  GetFiles200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetFiles200ResponseBuilder();
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
