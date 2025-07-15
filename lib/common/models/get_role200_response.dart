//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:gearpizza/common/models/roles.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_role200_response.g.dart';

/// GetRole200Response
///
/// Properties:
/// * [data]
@BuiltValue()
abstract class GetRole200Response
    implements Built<GetRole200Response, GetRole200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  Roles? get data;

  GetRole200Response._();

  factory GetRole200Response([void updates(GetRole200ResponseBuilder b)]) =
      _$GetRole200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetRole200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetRole200Response> get serializer =>
      _$GetRole200ResponseSerializer();
}

class _$GetRole200ResponseSerializer
    implements PrimitiveSerializer<GetRole200Response> {
  @override
  final Iterable<Type> types = const [GetRole200Response, _$GetRole200Response];

  @override
  final String wireName = r'GetRole200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetRole200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(Roles),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetRole200Response object, {
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
    required GetRole200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Roles),
          ) as Roles;
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
  GetRole200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetRole200ResponseBuilder();
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
