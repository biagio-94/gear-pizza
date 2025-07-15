//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gearpizza/common/model/api_error.dart';
import 'package:gearpizza/common/model/preventivo_dati_targa_response_payload.dart';

part 'preventivo_dati_targa_response.g.dart';

/// PreventivoDatiTargaResponse
///
/// Properties:
/// * [payload]
/// * [errors]
@BuiltValue()
abstract class PreventivoDatiTargaResponse
    implements
        Built<PreventivoDatiTargaResponse, PreventivoDatiTargaResponseBuilder> {
  @BuiltValueField(wireName: r'payload')
  PreventivoDatiTargaResponsePayload? get payload;

  @BuiltValueField(wireName: r'errors')
  BuiltList<ApiError>? get errors;

  PreventivoDatiTargaResponse._();

  factory PreventivoDatiTargaResponse(
          [void Function(PreventivoDatiTargaResponseBuilder b) updates]) =
      _$PreventivoDatiTargaResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PreventivoDatiTargaResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PreventivoDatiTargaResponse> get serializer =>
      _$PreventivoDatiTargaResponseSerializer();
}

class _$PreventivoDatiTargaResponseSerializer
    implements PrimitiveSerializer<PreventivoDatiTargaResponse> {
  @override
  final Iterable<Type> types = const [
    PreventivoDatiTargaResponse,
    _$PreventivoDatiTargaResponse
  ];

  @override
  final String wireName = r'PreventivoDatiTargaResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PreventivoDatiTargaResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.payload != null) {
      yield r'payload';
      yield serializers.serialize(
        object.payload,
        specifiedType: const FullType(PreventivoDatiTargaResponsePayload),
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
    PreventivoDatiTargaResponse object, {
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
    required PreventivoDatiTargaResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'payload':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PreventivoDatiTargaResponsePayload),
          ) as PreventivoDatiTargaResponsePayload;
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
  PreventivoDatiTargaResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PreventivoDatiTargaResponseBuilder();
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
