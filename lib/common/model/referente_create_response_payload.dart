//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'referente_create_response_payload.g.dart';

/// ReferenteCreateResponsePayload
///
/// Properties:
/// * [id]
@BuiltValue()
abstract class ReferenteCreateResponsePayload
    implements
        Built<ReferenteCreateResponsePayload,
            ReferenteCreateResponsePayloadBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  ReferenteCreateResponsePayload._();

  factory ReferenteCreateResponsePayload(
          [void Function(ReferenteCreateResponsePayloadBuilder b) updates]) =
      _$ReferenteCreateResponsePayload;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReferenteCreateResponsePayloadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReferenteCreateResponsePayload> get serializer =>
      _$ReferenteCreateResponsePayloadSerializer();
}

class _$ReferenteCreateResponsePayloadSerializer
    implements PrimitiveSerializer<ReferenteCreateResponsePayload> {
  @override
  final Iterable<Type> types = const [
    ReferenteCreateResponsePayload,
    _$ReferenteCreateResponsePayload
  ];

  @override
  final String wireName = r'ReferenteCreateResponsePayload';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReferenteCreateResponsePayload object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ReferenteCreateResponsePayload object, {
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
    required ReferenteCreateResponsePayloadBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
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
  ReferenteCreateResponsePayload deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReferenteCreateResponsePayloadBuilder();
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
