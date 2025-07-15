//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gearpizza/common/model/api_error.dart';

part 'documenti_ocr_response.g.dart';

/// DocumentiOCRResponse
///
/// Properties:
/// * [payload]
/// * [errors]
@BuiltValue()
abstract class DocumentiOCRResponse
    implements Built<DocumentiOCRResponse, DocumentiOCRResponseBuilder> {
  @BuiltValueField(wireName: r'payload')
  JsonObject? get payload;

  @BuiltValueField(wireName: r'errors')
  BuiltList<ApiError>? get errors;

  DocumentiOCRResponse._();

  factory DocumentiOCRResponse(
          [void Function(DocumentiOCRResponseBuilder b) updates]) =
      _$DocumentiOCRResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DocumentiOCRResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DocumentiOCRResponse> get serializer =>
      _$DocumentiOCRResponseSerializer();
}

class _$DocumentiOCRResponseSerializer
    implements PrimitiveSerializer<DocumentiOCRResponse> {
  @override
  final Iterable<Type> types = const [
    DocumentiOCRResponse,
    _$DocumentiOCRResponse
  ];

  @override
  final String wireName = r'DocumentiOCRResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DocumentiOCRResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.payload != null) {
      yield r'payload';
      yield serializers.serialize(
        object.payload,
        specifiedType: const FullType(JsonObject),
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
    DocumentiOCRResponse object, {
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
    required DocumentiOCRResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'payload':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.payload = valueDes;
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
  DocumentiOCRResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DocumentiOCRResponseBuilder();
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
