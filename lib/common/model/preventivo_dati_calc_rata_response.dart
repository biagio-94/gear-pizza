//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gearpizza/common/model/api_error.dart';
import 'package:gearpizza/common/model/dati_calc_rata.dart';

part 'preventivo_dati_calc_rata_response.g.dart';

/// PreventivoDatiCalcRataResponse
///
/// Properties:
/// * [payload]
/// * [errors]
@BuiltValue()
abstract class PreventivoDatiCalcRataResponse
    implements
        Built<PreventivoDatiCalcRataResponse,
            PreventivoDatiCalcRataResponseBuilder> {
  @BuiltValueField(wireName: r'payload')
  DatiCalcRata? get payload;

  @BuiltValueField(wireName: r'errors')
  BuiltList<ApiError>? get errors;

  PreventivoDatiCalcRataResponse._();

  factory PreventivoDatiCalcRataResponse(
          [void Function(PreventivoDatiCalcRataResponseBuilder b) updates]) =
      _$PreventivoDatiCalcRataResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PreventivoDatiCalcRataResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PreventivoDatiCalcRataResponse> get serializer =>
      _$PreventivoDatiCalcRataResponseSerializer();
}

class _$PreventivoDatiCalcRataResponseSerializer
    implements PrimitiveSerializer<PreventivoDatiCalcRataResponse> {
  @override
  final Iterable<Type> types = const [
    PreventivoDatiCalcRataResponse,
    _$PreventivoDatiCalcRataResponse
  ];

  @override
  final String wireName = r'PreventivoDatiCalcRataResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PreventivoDatiCalcRataResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.payload != null) {
      yield r'payload';
      yield serializers.serialize(
        object.payload,
        specifiedType: const FullType(DatiCalcRata),
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
    PreventivoDatiCalcRataResponse object, {
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
    required PreventivoDatiCalcRataResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'payload':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DatiCalcRata),
          ) as DatiCalcRata;
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
  PreventivoDatiCalcRataResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PreventivoDatiCalcRataResponseBuilder();
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
