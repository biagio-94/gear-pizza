//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gearpizza/common/model/api_error.dart';
import 'package:gearpizza/common/model/dati_reddito.dart';

part 'preventivo_dati_reddito_response.g.dart';

/// PreventivoDatiRedditoResponse
///
/// Properties:
/// * [payload]
/// * [errors]
@BuiltValue()
abstract class PreventivoDatiRedditoResponse
    implements
        Built<PreventivoDatiRedditoResponse,
            PreventivoDatiRedditoResponseBuilder> {
  @BuiltValueField(wireName: r'payload')
  DatiReddito? get payload;

  @BuiltValueField(wireName: r'errors')
  BuiltList<ApiError>? get errors;

  PreventivoDatiRedditoResponse._();

  factory PreventivoDatiRedditoResponse(
          [void Function(PreventivoDatiRedditoResponseBuilder b) updates]) =
      _$PreventivoDatiRedditoResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PreventivoDatiRedditoResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PreventivoDatiRedditoResponse> get serializer =>
      _$PreventivoDatiRedditoResponseSerializer();
}

class _$PreventivoDatiRedditoResponseSerializer
    implements PrimitiveSerializer<PreventivoDatiRedditoResponse> {
  @override
  final Iterable<Type> types = const [
    PreventivoDatiRedditoResponse,
    _$PreventivoDatiRedditoResponse
  ];

  @override
  final String wireName = r'PreventivoDatiRedditoResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PreventivoDatiRedditoResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.payload != null) {
      yield r'payload';
      yield serializers.serialize(
        object.payload,
        specifiedType: const FullType(DatiReddito),
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
    PreventivoDatiRedditoResponse object, {
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
    required PreventivoDatiRedditoResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'payload':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DatiReddito),
          ) as DatiReddito;
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
  PreventivoDatiRedditoResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PreventivoDatiRedditoResponseBuilder();
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
