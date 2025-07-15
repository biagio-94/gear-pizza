//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'dati_contatto_referente.g.dart';

/// DatiContattoReferente
///
/// Properties:
/// * [idDispositivo] - ID Dispositivo
/// * [mail] - Email referente
/// * [cellulare] - Numero di telefono referente
/// * [nome] - Nome referente
/// * [cognome] - Cognome referente
@BuiltValue()
abstract class DatiContattoReferente
    implements Built<DatiContattoReferente, DatiContattoReferenteBuilder> {
  /// ID Dispositivo
  @BuiltValueField(wireName: r'idDispositivo')
  String? get idDispositivo;

  /// Email referente
  @BuiltValueField(wireName: r'mail')
  String? get mail;

  /// Numero di telefono referente
  @BuiltValueField(wireName: r'cellulare')
  String? get cellulare;

  /// Nome referente
  @BuiltValueField(wireName: r'nome')
  String? get nome;

  /// Cognome referente
  @BuiltValueField(wireName: r'cognome')
  String? get cognome;

  DatiContattoReferente._();

  factory DatiContattoReferente(
          [void Function(DatiContattoReferenteBuilder b) updates]) =
      _$DatiContattoReferente;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DatiContattoReferenteBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DatiContattoReferente> get serializer =>
      _$DatiContattoReferenteSerializer();
}

class _$DatiContattoReferenteSerializer
    implements PrimitiveSerializer<DatiContattoReferente> {
  @override
  final Iterable<Type> types = const [
    DatiContattoReferente,
    _$DatiContattoReferente
  ];

  @override
  final String wireName = r'DatiContattoReferente';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DatiContattoReferente object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.idDispositivo != null) {
      yield r'idDispositivo';
      yield serializers.serialize(
        object.idDispositivo,
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
  }

  @override
  Object serialize(
    Serializers serializers,
    DatiContattoReferente object, {
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
    required DatiContattoReferenteBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'idDispositivo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.idDispositivo = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DatiContattoReferente deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DatiContattoReferenteBuilder();
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
