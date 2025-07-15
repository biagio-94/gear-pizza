//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'password_request_request.g.dart';

/// PasswordRequestRequest
///
/// Properties:
/// * [email] - Email address of the user you're requesting a reset for.
@BuiltValue()
abstract class PasswordRequestRequest
    implements Built<PasswordRequestRequest, PasswordRequestRequestBuilder> {
  /// Email address of the user you're requesting a reset for.
  @BuiltValueField(wireName: r'email')
  String get email;

  PasswordRequestRequest._();

  factory PasswordRequestRequest(
          [void updates(PasswordRequestRequestBuilder b)]) =
      _$PasswordRequestRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PasswordRequestRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PasswordRequestRequest> get serializer =>
      _$PasswordRequestRequestSerializer();
}

class _$PasswordRequestRequestSerializer
    implements PrimitiveSerializer<PasswordRequestRequest> {
  @override
  final Iterable<Type> types = const [
    PasswordRequestRequest,
    _$PasswordRequestRequest
  ];

  @override
  final String wireName = r'PasswordRequestRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PasswordRequestRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'email';
    yield serializers.serialize(
      object.email,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PasswordRequestRequest object, {
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
    required PasswordRequestRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PasswordRequestRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PasswordRequestRequestBuilder();
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
