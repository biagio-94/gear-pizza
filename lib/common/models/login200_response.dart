//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:gearpizza/common/models/login200_response_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'login200_response.g.dart';

/// Login200Response
///
/// Properties:
/// * [data]
@BuiltValue()
abstract class Login200Response
    implements Built<Login200Response, Login200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  Login200ResponseData? get data;

  Login200Response._();

  factory Login200Response([void updates(Login200ResponseBuilder b)]) =
      _$Login200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(Login200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Login200Response> get serializer =>
      _$Login200ResponseSerializer();
}

class _$Login200ResponseSerializer
    implements PrimitiveSerializer<Login200Response> {
  @override
  final Iterable<Type> types = const [Login200Response, _$Login200Response];

  @override
  final String wireName = r'Login200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Login200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(Login200ResponseData),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Login200Response object, {
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
    required Login200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Login200ResponseData),
          ) as Login200ResponseData;
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
  Login200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = Login200ResponseBuilder();
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
