//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'referente_response.g.dart';

/// ReferenteResponse
///
/// Properties:
/// * [id]
/// * [nome]
/// * [cognome]
/// * [mail]
/// * [cellulare]
/// * [dataNascita]
/// * [flagCacellato]
/// * [flagConfigurato]
/// * [idDispositivo]
@BuiltValue()
abstract class ReferenteResponse
    implements Built<ReferenteResponse, ReferenteResponseBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'nome')
  String? get nome;

  @BuiltValueField(wireName: r'cognome')
  String? get cognome;

  @BuiltValueField(wireName: r'mail')
  String? get mail;

  @BuiltValueField(wireName: r'cellulare')
  String? get cellulare;

  @BuiltValueField(wireName: r'dataNascita')
  String? get dataNascita;

  @BuiltValueField(wireName: r'flagCacellato')
  bool? get flagCacellato;

  @BuiltValueField(wireName: r'flagConfigurato')
  bool? get flagConfigurato;

  @BuiltValueField(wireName: r'idDispositivo')
  String? get idDispositivo;

  ReferenteResponse._();

  factory ReferenteResponse(
          [void Function(ReferenteResponseBuilder b) updates]) =
      _$ReferenteResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReferenteResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReferenteResponse> get serializer =>
      _$ReferenteResponseSerializer();
}

class _$ReferenteResponseSerializer
    implements PrimitiveSerializer<ReferenteResponse> {
  @override
  final Iterable<Type> types = const [ReferenteResponse, _$ReferenteResponse];

  @override
  final String wireName = r'ReferenteResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReferenteResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.nome != null) {
      yield r'nome';
      yield serializers.serialize(
        object.nome,
        specifiedType: const FullType(String),
      );
    }
    if (object.cognome != null) {
      yield r'cognome';
      yield serializers.serialize(
        object.cognome,
        specifiedType: const FullType(String),
      );
    }
    if (object.mail != null) {
      yield r'mail';
      yield serializers.serialize(
        object.mail,
        specifiedType: const FullType(String),
      );
    }
    if (object.cellulare != null) {
      yield r'cellulare';
      yield serializers.serialize(
        object.cellulare,
        specifiedType: const FullType(String),
      );
    }
    if (object.dataNascita != null) {
      yield r'dataNascita';
      yield serializers.serialize(
        object.dataNascita,
        specifiedType: const FullType(String),
      );
    }
    if (object.flagCacellato != null) {
      yield r'flagCacellato';
      yield serializers.serialize(
        object.flagCacellato,
        specifiedType: const FullType(bool),
      );
    }
    if (object.flagConfigurato != null) {
      yield r'flagConfigurato';
      yield serializers.serialize(
        object.flagConfigurato,
        specifiedType: const FullType(bool),
      );
    }
    if (object.idDispositivo != null) {
      yield r'idDispositivo';
      yield serializers.serialize(
        object.idDispositivo,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ReferenteResponse object, {
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
    required ReferenteResponseBuilder result,
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
        case r'nome':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.nome = valueDes;
          break;
        case r'cognome':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.cognome = valueDes;
          break;
        case r'mail':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.mail = valueDes;
          break;
        case r'cellulare':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.cellulare = valueDes;
          break;
        case r'dataNascita':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.dataNascita = valueDes;
          break;
        case r'flagCacellato':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.flagCacellato = valueDes;
          break;
        case r'flagConfigurato':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.flagConfigurato = valueDes;
          break;
        case r'idDispositivo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.idDispositivo = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ReferenteResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReferenteResponseBuilder();
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
