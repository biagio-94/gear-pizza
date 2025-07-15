//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'login_refresh_request.g.dart';

/// LoginRefreshRequest
///
/// Properties:
/// * [refresh]
@BuiltValue()
abstract class LoginRefreshRequest
    implements Built<LoginRefreshRequest, LoginRefreshRequestBuilder> {
  @BuiltValueField(wireName: r'refresh')
  String? get refresh;

  LoginRefreshRequest._();

  factory LoginRefreshRequest(
          [void Function(LoginRefreshRequestBuilder b) updates]) =
      _$LoginRefreshRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LoginRefreshRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LoginRefreshRequest> get serializer =>
      _$LoginRefreshRequestSerializer();
}

class _$LoginRefreshRequestSerializer
    implements PrimitiveSerializer<LoginRefreshRequest> {
  @override
  final Iterable<Type> types = const [
    LoginRefreshRequest,
    _$LoginRefreshRequest
  ];

  @override
  final String wireName = r'LoginRefreshRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LoginRefreshRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.refresh != null) {
      yield r'refresh';
      yield serializers.serialize(
        object.refresh,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LoginRefreshRequest object, {
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
    required LoginRefreshRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'refresh':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.refresh = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LoginRefreshRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LoginRefreshRequestBuilder();
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
