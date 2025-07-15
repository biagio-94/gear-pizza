//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:gearpizza/common/models/x_metadata.dart';
import 'package:gearpizza/common/models/activity.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_activities200_response.g.dart';

/// GetActivities200Response
///
/// Properties:
/// * [data]
/// * [meta]
@BuiltValue()
abstract class GetActivities200Response
    implements
        Built<GetActivities200Response, GetActivities200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<Activity>? get data;

  @BuiltValueField(wireName: r'meta')
  XMetadata? get meta;

  GetActivities200Response._();

  factory GetActivities200Response(
          [void updates(GetActivities200ResponseBuilder b)]) =
      _$GetActivities200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetActivities200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetActivities200Response> get serializer =>
      _$GetActivities200ResponseSerializer();
}

class _$GetActivities200ResponseSerializer
    implements PrimitiveSerializer<GetActivities200Response> {
  @override
  final Iterable<Type> types = const [
    GetActivities200Response,
    _$GetActivities200Response
  ];

  @override
  final String wireName = r'GetActivities200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetActivities200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(BuiltList, [FullType(Activity)]),
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
    GetActivities200Response object, {
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
    required GetActivities200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Activity)]),
          ) as BuiltList<Activity>;
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
  GetActivities200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetActivities200ResponseBuilder();
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
