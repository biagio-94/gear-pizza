//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gearpizza/common/model/dati_calcolatrice_response_item.dart';

part 'dati_calcolatrice_response.g.dart';

/// DatiCalcolatriceResponse
///
/// Properties:
/// * [senzaAssic]
/// * [conAssic]
@BuiltValue()
abstract class DatiCalcolatriceResponse
    implements
        Built<DatiCalcolatriceResponse, DatiCalcolatriceResponseBuilder> {
  @BuiltValueField(wireName: r'senzaAssic')
  BuiltList<DatiCalcolatriceResponseItem>? get senzaAssic;

  @BuiltValueField(wireName: r'conAssic')
  BuiltList<DatiCalcolatriceResponseItem>? get conAssic;

  DatiCalcolatriceResponse._();

  factory DatiCalcolatriceResponse(
          [void Function(DatiCalcolatriceResponseBuilder b) updates]) =
      _$DatiCalcolatriceResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DatiCalcolatriceResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DatiCalcolatriceResponse> get serializer =>
      _$DatiCalcolatriceResponseSerializer();
}

class _$DatiCalcolatriceResponseSerializer
    implements PrimitiveSerializer<DatiCalcolatriceResponse> {
  @override
  final Iterable<Type> types = const [
    DatiCalcolatriceResponse,
    _$DatiCalcolatriceResponse
  ];

  @override
  final String wireName = r'DatiCalcolatriceResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DatiCalcolatriceResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.senzaAssic != null) {
      yield r'senzaAssic';
      yield serializers.serialize(
        object.senzaAssic,
        specifiedType:
            const FullType(BuiltList, [FullType(DatiCalcolatriceResponseItem)]),
      );
    }
    if (object.conAssic != null) {
      yield r'conAssic';
      yield serializers.serialize(
        object.conAssic,
        specifiedType:
            const FullType(BuiltList, [FullType(DatiCalcolatriceResponseItem)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DatiCalcolatriceResponse object, {
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
    required DatiCalcolatriceResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'senzaAssic':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltList, [FullType(DatiCalcolatriceResponseItem)]),
          ) as BuiltList<DatiCalcolatriceResponseItem>;
          result.senzaAssic.replace(valueDes);
          break;
        case r'conAssic':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltList, [FullType(DatiCalcolatriceResponseItem)]),
          ) as BuiltList<DatiCalcolatriceResponseItem>;
          result.conAssic.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DatiCalcolatriceResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DatiCalcolatriceResponseBuilder();
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
