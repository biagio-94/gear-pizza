// AUTO-GENERATED FILE, DO NOT MODIFY!

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'preventivo_dati_targa_request.g.dart';

/// PreventivoDatiTargaRequest
///
/// Properties:
/// * [id]
/// * [targa]
/// * [funzionalita]
@BuiltValue()
abstract class PreventivoDatiTargaRequest
    implements
        Built<PreventivoDatiTargaRequest, PreventivoDatiTargaRequestBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'targa')
  String get targa;

  @BuiltValueField(wireName: r'funzionalita')
  String get funzionalita;

  PreventivoDatiTargaRequest._();

  factory PreventivoDatiTargaRequest(
          [void Function(PreventivoDatiTargaRequestBuilder b) updates]) =
      _$PreventivoDatiTargaRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PreventivoDatiTargaRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PreventivoDatiTargaRequest> get serializer =>
      _$PreventivoDatiTargaRequestSerializer();
}

class _$PreventivoDatiTargaRequestSerializer
    implements PrimitiveSerializer<PreventivoDatiTargaRequest> {
  @override
  final Iterable<Type> types = const [
    PreventivoDatiTargaRequest,
    _$PreventivoDatiTargaRequest
  ];

  @override
  final String wireName = r'PreventivoDatiTargaRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PreventivoDatiTargaRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'targa';
    yield serializers.serialize(
      object.targa,
      specifiedType: const FullType(String),
    );
    yield r'funzionalita';
    yield serializers.serialize(
      object.funzionalita,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PreventivoDatiTargaRequest object, {
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
    required PreventivoDatiTargaRequestBuilder result,
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
        case r'targa':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.targa = valueDes;
          break;
        case r'funzionalita':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.funzionalita = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PreventivoDatiTargaRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PreventivoDatiTargaRequestBuilder();
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
