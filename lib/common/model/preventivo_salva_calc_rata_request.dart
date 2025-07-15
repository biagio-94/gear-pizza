//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'preventivo_salva_calc_rata_request.g.dart';

/// PreventivoSalvaCalcRataRequest
///
/// Properties:
/// * [id]
/// * [rataMensile]
/// * [tan]
/// * [taeg]
/// * [numRate]
@BuiltValue()
abstract class PreventivoSalvaCalcRataRequest
    implements
        Built<PreventivoSalvaCalcRataRequest,
            PreventivoSalvaCalcRataRequestBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'rataMensile')
  num get rataMensile;

  @BuiltValueField(wireName: r'tan')
  num get tan;

  @BuiltValueField(wireName: r'taeg')
  num get taeg;

  @BuiltValueField(wireName: r'numRate')
  int get numRate;

  PreventivoSalvaCalcRataRequest._();

  factory PreventivoSalvaCalcRataRequest(
          [void Function(PreventivoSalvaCalcRataRequestBuilder b) updates]) =
      _$PreventivoSalvaCalcRataRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PreventivoSalvaCalcRataRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PreventivoSalvaCalcRataRequest> get serializer =>
      _$PreventivoSalvaCalcRataRequestSerializer();
}

class _$PreventivoSalvaCalcRataRequestSerializer
    implements PrimitiveSerializer<PreventivoSalvaCalcRataRequest> {
  @override
  final Iterable<Type> types = const [
    PreventivoSalvaCalcRataRequest,
    _$PreventivoSalvaCalcRataRequest
  ];

  @override
  final String wireName = r'PreventivoSalvaCalcRataRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PreventivoSalvaCalcRataRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'rataMensile';
    yield serializers.serialize(
      object.rataMensile,
      specifiedType: const FullType(num),
    );
    yield r'tan';
    yield serializers.serialize(
      object.tan,
      specifiedType: const FullType(num),
    );
    yield r'taeg';
    yield serializers.serialize(
      object.taeg,
      specifiedType: const FullType(num),
    );
    yield r'numRate';
    yield serializers.serialize(
      object.numRate,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PreventivoSalvaCalcRataRequest object, {
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
    required PreventivoSalvaCalcRataRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
          break;
        case r'rataMensile':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.rataMensile = valueDes;
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
        case r'numRate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.numRate = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PreventivoSalvaCalcRataRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PreventivoSalvaCalcRataRequestBuilder();
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
