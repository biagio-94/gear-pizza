//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:gearpizza/common/models/users.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_user200_response.g.dart';

/// GetUser200Response
///
/// Properties:
/// * [data]
@BuiltValue()
abstract class GetUser200Response
    implements Built<GetUser200Response, GetUser200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  Users? get data;

  GetUser200Response._();

  factory GetUser200Response([void updates(GetUser200ResponseBuilder b)]) =
      _$GetUser200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetUser200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetUser200Response> get serializer =>
      _$GetUser200ResponseSerializer();
}

class _$GetUser200ResponseSerializer
    implements PrimitiveSerializer<GetUser200Response> {
  @override
  final Iterable<Type> types = const [GetUser200Response, _$GetUser200Response];

  @override
  final String wireName = r'GetUser200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetUser200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(Users),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetUser200Response object, {
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
    required GetUser200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Users),
          ) as Users;
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
  GetUser200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetUser200ResponseBuilder();
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
