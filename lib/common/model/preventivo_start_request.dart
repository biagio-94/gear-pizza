//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'preventivo_start_request.g.dart';

/// PreventivoStartRequest
///
/// Properties:
/// * [codiceConvenzionato]
@BuiltValue()
abstract class PreventivoStartRequest
    implements Built<PreventivoStartRequest, PreventivoStartRequestBuilder> {
  @BuiltValueField(wireName: r'codiceConvenzionato')
  int get codiceConvenzionato;

  PreventivoStartRequest._();

  factory PreventivoStartRequest(
          [void Function(PreventivoStartRequestBuilder b) updates]) =
      _$PreventivoStartRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PreventivoStartRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PreventivoStartRequest> get serializer =>
      _$PreventivoStartRequestSerializer();
}

class _$PreventivoStartRequestSerializer
    implements PrimitiveSerializer<PreventivoStartRequest> {
  @override
  final Iterable<Type> types = const [
    PreventivoStartRequest,
    _$PreventivoStartRequest
  ];

  @override
  final String wireName = r'PreventivoStartRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PreventivoStartRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'codiceConvenzionato';
    yield serializers.serialize(
      object.codiceConvenzionato,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PreventivoStartRequest object, {
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
    required PreventivoStartRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'codiceConvenzionato':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.codiceConvenzionato = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PreventivoStartRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PreventivoStartRequestBuilder();
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
