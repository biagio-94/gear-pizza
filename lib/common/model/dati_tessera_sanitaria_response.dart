//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gearpizza/common/model/api_error.dart';
import 'package:gearpizza/common/model/dati_tessera_sanitaria.dart';

part 'dati_tessera_sanitaria_response.g.dart';

/// DatiTesseraSanitariaResponse
///
/// Properties:
/// * [payload]
/// * [errors]
@BuiltValue()
abstract class DatiTesseraSanitariaResponse
    implements
        Built<DatiTesseraSanitariaResponse,
            DatiTesseraSanitariaResponseBuilder> {
  @BuiltValueField(wireName: r'payload')
  DatiTesseraSanitaria? get payload;

  @BuiltValueField(wireName: r'errors')
  BuiltList<ApiError>? get errors;

  DatiTesseraSanitariaResponse._();

  factory DatiTesseraSanitariaResponse(
          [void Function(DatiTesseraSanitariaResponseBuilder b) updates]) =
      _$DatiTesseraSanitariaResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DatiTesseraSanitariaResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DatiTesseraSanitariaResponse> get serializer =>
      _$DatiTesseraSanitariaResponseSerializer();
}

class _$DatiTesseraSanitariaResponseSerializer
    implements PrimitiveSerializer<DatiTesseraSanitariaResponse> {
  @override
  final Iterable<Type> types = const [
    DatiTesseraSanitariaResponse,
    _$DatiTesseraSanitariaResponse
  ];

  @override
  final String wireName = r'DatiTesseraSanitariaResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DatiTesseraSanitariaResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.payload != null) {
      yield r'payload';
      yield serializers.serialize(
        object.payload,
        specifiedType: const FullType(DatiTesseraSanitaria),
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
    DatiTesseraSanitariaResponse object, {
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
    required DatiTesseraSanitariaResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'payload':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DatiTesseraSanitaria),
          ) as DatiTesseraSanitaria;
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
  DatiTesseraSanitariaResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DatiTesseraSanitariaResponseBuilder();
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
