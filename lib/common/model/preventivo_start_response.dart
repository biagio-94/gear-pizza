//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gearpizza/common/model/api_error.dart';
import 'package:gearpizza/common/model/preventivo_start_response_payload.dart';

part 'preventivo_start_response.g.dart';

/// PreventivoStartResponse
///
/// Properties:
/// * [payload]
/// * [errors]
@BuiltValue()
abstract class PreventivoStartResponse
    implements Built<PreventivoStartResponse, PreventivoStartResponseBuilder> {
  @BuiltValueField(wireName: r'payload')
  PreventivoStartResponsePayload? get payload;

  @BuiltValueField(wireName: r'errors')
  BuiltList<ApiError>? get errors;

  PreventivoStartResponse._();

  factory PreventivoStartResponse(
          [void Function(PreventivoStartResponseBuilder b) updates]) =
      _$PreventivoStartResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PreventivoStartResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PreventivoStartResponse> get serializer =>
      _$PreventivoStartResponseSerializer();
}

class _$PreventivoStartResponseSerializer
    implements PrimitiveSerializer<PreventivoStartResponse> {
  @override
  final Iterable<Type> types = const [
    PreventivoStartResponse,
    _$PreventivoStartResponse
  ];

  @override
  final String wireName = r'PreventivoStartResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PreventivoStartResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.payload != null) {
      yield r'payload';
      yield serializers.serialize(
        object.payload,
        specifiedType: const FullType(PreventivoStartResponsePayload),
      );
    }
    if (object.errors != null) {
      yield r'errors';
      yield serializers.serialize(
        object.errors,
        specifiedType: const FullType(BuiltList, [FullType(ApiError)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PreventivoStartResponse object, {
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
    required PreventivoStartResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'payload':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PreventivoStartResponsePayload),
          ) as PreventivoStartResponsePayload;
          result.payload.replace(valueDes);
          break;
        case r'errors':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ApiError)]),
          ) as BuiltList<ApiError>;
          result.errors.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PreventivoStartResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PreventivoStartResponseBuilder();
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
