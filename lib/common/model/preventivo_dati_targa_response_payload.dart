//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gearpizza/common/model/allestimento.dart';

part 'preventivo_dati_targa_response_payload.g.dart';

/// PreventivoDatiTargaResponsePayload
///
/// Properties:
/// * [annoImmatricolazione]
/// * [meseImmatricolazione]
/// * [telaio]
/// * [targaPrecedente]
/// * [infocarMarca]
/// * [infocarModello]
/// * [codiceProdotto]
/// * [allestimenti]
@BuiltValue()
abstract class PreventivoDatiTargaResponsePayload
    implements
        Built<PreventivoDatiTargaResponsePayload,
            PreventivoDatiTargaResponsePayloadBuilder> {
  @BuiltValueField(wireName: r'annoImmatricolazione')
  String? get annoImmatricolazione;

  @BuiltValueField(wireName: r'meseImmatricolazione')
  String? get meseImmatricolazione;

  @BuiltValueField(wireName: r'telaio')
  String? get telaio;

  @BuiltValueField(wireName: r'targaPrecedente')
  String? get targaPrecedente;

  @BuiltValueField(wireName: r'infocarMarca')
  String? get infocarMarca;

  @BuiltValueField(wireName: r'infocarModello')
  String? get infocarModello;

  @BuiltValueField(wireName: r'codiceProdotto')
  String? get codiceProdotto;

  @BuiltValueField(wireName: r'allestimenti')
  BuiltList<Allestimento>? get allestimenti;

  PreventivoDatiTargaResponsePayload._();

  factory PreventivoDatiTargaResponsePayload(
      [void Function(PreventivoDatiTargaResponsePayloadBuilder b)
          updates]) = _$PreventivoDatiTargaResponsePayload;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PreventivoDatiTargaResponsePayloadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PreventivoDatiTargaResponsePayload> get serializer =>
      _$PreventivoDatiTargaResponsePayloadSerializer();
}

class _$PreventivoDatiTargaResponsePayloadSerializer
    implements PrimitiveSerializer<PreventivoDatiTargaResponsePayload> {
  @override
  final Iterable<Type> types = const [
    PreventivoDatiTargaResponsePayload,
    _$PreventivoDatiTargaResponsePayload
  ];

  @override
  final String wireName = r'PreventivoDatiTargaResponsePayload';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PreventivoDatiTargaResponsePayload object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.annoImmatricolazione != null) {
      yield r'annoImmatricolazione';
      yield serializers.serialize(
        object.annoImmatricolazione,
        specifiedType: const FullType(String),
      );
    }
    if (object.meseImmatricolazione != null) {
      yield r'meseImmatricolazione';
      yield serializers.serialize(
        object.meseImmatricolazione,
        specifiedType: const FullType(String),
      );
    }
    if (object.telaio != null) {
      yield r'telaio';
      yield serializers.serialize(
        object.telaio,
        specifiedType: const FullType(String),
      );
    }
    if (object.targaPrecedente != null) {
      yield r'targaPrecedente';
      yield serializers.serialize(
        object.targaPrecedente,
        specifiedType: const FullType(String),
      );
    }
    if (object.infocarMarca != null) {
      yield r'infocarMarca';
      yield serializers.serialize(
        object.infocarMarca,
        specifiedType: const FullType(String),
      );
    }
    if (object.infocarModello != null) {
      yield r'infocarModello';
      yield serializers.serialize(
        object.infocarModello,
        specifiedType: const FullType(String),
      );
    }
    if (object.codiceProdotto != null) {
      yield r'codiceProdotto';
      yield serializers.serialize(
        object.codiceProdotto,
        specifiedType: const FullType(String),
      );
    }
    if (object.allestimenti != null) {
      yield r'allestimenti';
      yield serializers.serialize(
        object.allestimenti,
        specifiedType: const FullType(BuiltList, [FullType(Allestimento)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PreventivoDatiTargaResponsePayload object, {
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
    required PreventivoDatiTargaResponsePayloadBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'annoImmatricolazione':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.annoImmatricolazione = valueDes;
          break;
        case r'meseImmatricolazione':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.meseImmatricolazione = valueDes;
          break;
        case r'telaio':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.telaio = valueDes;
          break;
        case r'targaPrecedente':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.targaPrecedente = valueDes;
          break;
        case r'infocarMarca':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.infocarMarca = valueDes;
          break;
        case r'infocarModello':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.infocarModello = valueDes;
          break;
        case r'codiceProdotto':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.codiceProdotto = valueDes;
          break;
        case r'allestimenti':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Allestimento)]),
          ) as BuiltList<Allestimento>;
          result.allestimenti.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PreventivoDatiTargaResponsePayload deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PreventivoDatiTargaResponsePayloadBuilder();
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
