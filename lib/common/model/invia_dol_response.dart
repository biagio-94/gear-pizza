//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gearpizza/common/model/api_error.dart';
import 'package:gearpizza/common/model/invia_dol_response_payload.dart';

part 'invia_dol_response.g.dart';

/// InviaDolResponse
///
/// Properties:
/// * [payload]
/// * [errors]
@BuiltValue()
abstract class InviaDolResponse
    implements Built<InviaDolResponse, InviaDolResponseBuilder> {
  @BuiltValueField(wireName: r'payload')
  InviaDolResponsePayload? get payload;

  @BuiltValueField(wireName: r'errors')
  BuiltList<ApiError>? get errors;

  InviaDolResponse._();

  factory InviaDolResponse([void Function(InviaDolResponseBuilder b) updates]) =
      _$InviaDolResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InviaDolResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InviaDolResponse> get serializer =>
      _$InviaDolResponseSerializer();
}

class _$InviaDolResponseSerializer
    implements PrimitiveSerializer<InviaDolResponse> {
  @override
  final Iterable<Type> types = const [InviaDolResponse, _$InviaDolResponse];

  @override
  final String wireName = r'InviaDolResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InviaDolResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.payload != null) {
      yield r'payload';
      yield serializers.serialize(
        object.payload,
        specifiedType: const FullType(InviaDolResponsePayload),
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
    InviaDolResponse object, {
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
    required InviaDolResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'payload':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(InviaDolResponsePayload),
          ) as InviaDolResponsePayload;
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
  InviaDolResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InviaDolResponseBuilder();
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
