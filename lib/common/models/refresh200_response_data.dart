//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'refresh200_response_data.g.dart';

/// Refresh200ResponseData
///
/// Properties:
/// * [accessToken]
/// * [expires]
/// * [refreshToken]
@BuiltValue()
abstract class Refresh200ResponseData
    implements Built<Refresh200ResponseData, Refresh200ResponseDataBuilder> {
  @BuiltValueField(wireName: r'access_token')
  String? get accessToken;

  @BuiltValueField(wireName: r'expires')
  int? get expires;

  @BuiltValueField(wireName: r'refresh_token')
  String? get refreshToken;

  Refresh200ResponseData._();

  factory Refresh200ResponseData(
          [void updates(Refresh200ResponseDataBuilder b)]) =
      _$Refresh200ResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(Refresh200ResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Refresh200ResponseData> get serializer =>
      _$Refresh200ResponseDataSerializer();
}

class _$Refresh200ResponseDataSerializer
    implements PrimitiveSerializer<Refresh200ResponseData> {
  @override
  final Iterable<Type> types = const [
    Refresh200ResponseData,
    _$Refresh200ResponseData
  ];

  @override
  final String wireName = r'Refresh200ResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Refresh200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.accessToken != null) {
      yield r'access_token';
      yield serializers.serialize(
        object.accessToken,
        specifiedType: const FullType(String),
      );
    }
    if (object.expires != null) {
      yield r'expires';
      yield serializers.serialize(
        object.expires,
        specifiedType: const FullType(int),
      );
    }
    if (object.refreshToken != null) {
      yield r'refresh_token';
      yield serializers.serialize(
        object.refreshToken,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Refresh200ResponseData object, {
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
    required Refresh200ResponseDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'access_token':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.accessToken = valueDes;
          break;
        case r'expires':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.expires = valueDes;
          break;
        case r'refresh_token':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.refreshToken = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Refresh200ResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = Refresh200ResponseDataBuilder();
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
