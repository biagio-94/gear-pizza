//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'preventivo_calc_rata_request.g.dart';

/// PreventivoCalcRataRequest
///
/// Properties:
/// * [id]
@BuiltValue()
abstract class PreventivoCalcRataRequest
    implements
        Built<PreventivoCalcRataRequest, PreventivoCalcRataRequestBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  PreventivoCalcRataRequest._();

  factory PreventivoCalcRataRequest(
          [void Function(PreventivoCalcRataRequestBuilder b) updates]) =
      _$PreventivoCalcRataRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PreventivoCalcRataRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PreventivoCalcRataRequest> get serializer =>
      _$PreventivoCalcRataRequestSerializer();
}

class _$PreventivoCalcRataRequestSerializer
    implements PrimitiveSerializer<PreventivoCalcRataRequest> {
  @override
  final Iterable<Type> types = const [
    PreventivoCalcRataRequest,
    _$PreventivoCalcRataRequest
  ];

  @override
  final String wireName = r'PreventivoCalcRataRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PreventivoCalcRataRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PreventivoCalcRataRequest object, {
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
    required PreventivoCalcRataRequestBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PreventivoCalcRataRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PreventivoCalcRataRequestBuilder();
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
