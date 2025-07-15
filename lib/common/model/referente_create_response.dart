//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gearpizza/common/model/api_error.dart';
import 'package:gearpizza/common/model/referente_create_response_payload.dart';

part 'referente_create_response.g.dart';

/// ReferenteCreateResponse
///
/// Properties:
/// * [payload]
/// * [errors]
@BuiltValue()
abstract class ReferenteCreateResponse
    implements Built<ReferenteCreateResponse, ReferenteCreateResponseBuilder> {
  @BuiltValueField(wireName: r'payload')
  ReferenteCreateResponsePayload? get payload;

  @BuiltValueField(wireName: r'errors')
  BuiltList<ApiError>? get errors;

  ReferenteCreateResponse._();

  factory ReferenteCreateResponse(
          [void Function(ReferenteCreateResponseBuilder b) updates]) =
      _$ReferenteCreateResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReferenteCreateResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReferenteCreateResponse> get serializer =>
      _$ReferenteCreateResponseSerializer();
}

class _$ReferenteCreateResponseSerializer
    implements PrimitiveSerializer<ReferenteCreateResponse> {
  @override
  final Iterable<Type> types = const [
    ReferenteCreateResponse,
    _$ReferenteCreateResponse
  ];

  @override
  final String wireName = r'ReferenteCreateResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReferenteCreateResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.payload != null) {
      yield r'payload';
      yield serializers.serialize(
        object.payload,
        specifiedType: const FullType(ReferenteCreateResponsePayload),
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
    ReferenteCreateResponse object, {
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
    required ReferenteCreateResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'payload':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ReferenteCreateResponsePayload),
          ) as ReferenteCreateResponsePayload;
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
  ReferenteCreateResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReferenteCreateResponseBuilder();
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
