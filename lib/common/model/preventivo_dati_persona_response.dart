//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gearpizza/common/model/api_error.dart';
import 'package:gearpizza/common/model/dati_persona.dart';

part 'preventivo_dati_persona_response.g.dart';

/// PreventivoDatiPersonaResponse
///
/// Properties:
/// * [payload]
/// * [errors]
@BuiltValue()
abstract class PreventivoDatiPersonaResponse
    implements
        Built<PreventivoDatiPersonaResponse,
            PreventivoDatiPersonaResponseBuilder> {
  @BuiltValueField(wireName: r'payload')
  DatiPersona? get payload;

  @BuiltValueField(wireName: r'errors')
  BuiltList<ApiError>? get errors;

  PreventivoDatiPersonaResponse._();

  factory PreventivoDatiPersonaResponse(
          [void Function(PreventivoDatiPersonaResponseBuilder b) updates]) =
      _$PreventivoDatiPersonaResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PreventivoDatiPersonaResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PreventivoDatiPersonaResponse> get serializer =>
      _$PreventivoDatiPersonaResponseSerializer();
}

class _$PreventivoDatiPersonaResponseSerializer
    implements PrimitiveSerializer<PreventivoDatiPersonaResponse> {
  @override
  final Iterable<Type> types = const [
    PreventivoDatiPersonaResponse,
    _$PreventivoDatiPersonaResponse
  ];

  @override
  final String wireName = r'PreventivoDatiPersonaResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PreventivoDatiPersonaResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.payload != null) {
      yield r'payload';
      yield serializers.serialize(
        object.payload,
        specifiedType: const FullType(DatiPersona),
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
    PreventivoDatiPersonaResponse object, {
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
    required PreventivoDatiPersonaResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'payload':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DatiPersona),
          ) as DatiPersona;
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
  PreventivoDatiPersonaResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PreventivoDatiPersonaResponseBuilder();
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
