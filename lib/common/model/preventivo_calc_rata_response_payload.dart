//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'preventivo_calc_rata_response_payload.g.dart';

/// PreventivoCalcRataResponsePayload
///
/// Properties:
/// * [numeroRate]
/// * [importoRata]
/// * [tan]
/// * [taeg]
/// * [speseIncassoRata]
/// * [importoTotaleSalvarata]
/// * [importoTotaleAltraAssicurazione]
@BuiltValue()
abstract class PreventivoCalcRataResponsePayload
    implements
        Built<PreventivoCalcRataResponsePayload,
            PreventivoCalcRataResponsePayloadBuilder> {
  @BuiltValueField(wireName: r'numeroRate')
  String? get numeroRate;

  @BuiltValueField(wireName: r'importoRata')
  num? get importoRata;

  @BuiltValueField(wireName: r'tan')
  num? get tan;

  @BuiltValueField(wireName: r'taeg')
  num? get taeg;

  @BuiltValueField(wireName: r'speseIncassoRata')
  num? get speseIncassoRata;

  @BuiltValueField(wireName: r'importoTotaleSalvarata')
  num? get importoTotaleSalvarata;

  @BuiltValueField(wireName: r'importoTotaleAltraAssicurazione')
  num? get importoTotaleAltraAssicurazione;

  PreventivoCalcRataResponsePayload._();

  factory PreventivoCalcRataResponsePayload(
          [void Function(PreventivoCalcRataResponsePayloadBuilder b) updates]) =
      _$PreventivoCalcRataResponsePayload;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PreventivoCalcRataResponsePayloadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PreventivoCalcRataResponsePayload> get serializer =>
      _$PreventivoCalcRataResponsePayloadSerializer();
}

class _$PreventivoCalcRataResponsePayloadSerializer
    implements PrimitiveSerializer<PreventivoCalcRataResponsePayload> {
  @override
  final Iterable<Type> types = const [
    PreventivoCalcRataResponsePayload,
    _$PreventivoCalcRataResponsePayload
  ];

  @override
  final String wireName = r'PreventivoCalcRataResponsePayload';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PreventivoCalcRataResponsePayload object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.numeroRate != null) {
      yield r'numeroRate';
      yield serializers.serialize(
        object.numeroRate,
        specifiedType: const FullType(String),
      );
    }
    if (object.importoRata != null) {
      yield r'importoRata';
      yield serializers.serialize(
        object.importoRata,
        specifiedType: const FullType(num),
      );
    }
    if (object.tan != null) {
      yield r'tan';
      yield serializers.serialize(
        object.tan,
        specifiedType: const FullType(num),
      );
    }
    if (object.taeg != null) {
      yield r'taeg';
      yield serializers.serialize(
        object.taeg,
        specifiedType: const FullType(num),
      );
    }
    if (object.speseIncassoRata != null) {
      yield r'speseIncassoRata';
      yield serializers.serialize(
        object.speseIncassoRata,
        specifiedType: const FullType(num),
      );
    }
    if (object.importoTotaleSalvarata != null) {
      yield r'importoTotaleSalvarata';
      yield serializers.serialize(
        object.importoTotaleSalvarata,
        specifiedType: const FullType(num),
      );
    }
    if (object.importoTotaleAltraAssicurazione != null) {
      yield r'importoTotaleAltraAssicurazione';
      yield serializers.serialize(
        object.importoTotaleAltraAssicurazione,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PreventivoCalcRataResponsePayload object, {
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
    required PreventivoCalcRataResponsePayloadBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'numeroRate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.numeroRate = valueDes;
          break;
        case r'importoRata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.importoRata = valueDes;
          break;
        case r'tan':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.tan = valueDes;
          break;
        case r'taeg':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.taeg = valueDes;
          break;
        case r'speseIncassoRata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.speseIncassoRata = valueDes;
          break;
        case r'importoTotaleSalvarata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.importoTotaleSalvarata = valueDes;
          break;
        case r'importoTotaleAltraAssicurazione':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.importoTotaleAltraAssicurazione = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PreventivoCalcRataResponsePayload deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PreventivoCalcRataResponsePayloadBuilder();
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
