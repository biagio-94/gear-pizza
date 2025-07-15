//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_asset404_response_error.g.dart';

/// GetAsset404ResponseError
///
/// Properties:
/// * [code]
/// * [message]
@BuiltValue()
abstract class GetAsset404ResponseError
    implements
        Built<GetAsset404ResponseError, GetAsset404ResponseErrorBuilder> {
  @BuiltValueField(wireName: r'code')
  int? get code;

  @BuiltValueField(wireName: r'message')
  String? get message;

  GetAsset404ResponseError._();

  factory GetAsset404ResponseError(
          [void updates(GetAsset404ResponseErrorBuilder b)]) =
      _$GetAsset404ResponseError;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetAsset404ResponseErrorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetAsset404ResponseError> get serializer =>
      _$GetAsset404ResponseErrorSerializer();
}

class _$GetAsset404ResponseErrorSerializer
    implements PrimitiveSerializer<GetAsset404ResponseError> {
  @override
  final Iterable<Type> types = const [
    GetAsset404ResponseError,
    _$GetAsset404ResponseError
  ];

  @override
  final String wireName = r'GetAsset404ResponseError';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetAsset404ResponseError object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.code != null) {
      yield r'code';
      yield serializers.serialize(
        object.code,
        specifiedType: const FullType(int),
      );
    }
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetAsset404ResponseError object, {
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
    required GetAsset404ResponseErrorBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.code = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetAsset404ResponseError deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetAsset404ResponseErrorBuilder();
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
