//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'invia_dol_response_payload.g.dart';

/// InviaDolResponsePayload
///
/// Properties:
/// * [id]
/// * [numeroBozza]
@BuiltValue()
abstract class InviaDolResponsePayload
    implements Built<InviaDolResponsePayload, InviaDolResponsePayloadBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'numeroBozza')
  num? get numeroBozza;

  InviaDolResponsePayload._();

  factory InviaDolResponsePayload(
          [void Function(InviaDolResponsePayloadBuilder b) updates]) =
      _$InviaDolResponsePayload;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InviaDolResponsePayloadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InviaDolResponsePayload> get serializer =>
      _$InviaDolResponsePayloadSerializer();
}

class _$InviaDolResponsePayloadSerializer
    implements PrimitiveSerializer<InviaDolResponsePayload> {
  @override
  final Iterable<Type> types = const [
    InviaDolResponsePayload,
    _$InviaDolResponsePayload
  ];

  @override
  final String wireName = r'InviaDolResponsePayload';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InviaDolResponsePayload object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.numeroBozza != null) {
      yield r'numeroBozza';
      yield serializers.serialize(
        object.numeroBozza,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    InviaDolResponsePayload object, {
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
    required InviaDolResponsePayloadBuilder result,
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
        case r'numeroBozza':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.numeroBozza = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  InviaDolResponsePayload deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InviaDolResponsePayloadBuilder();
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
