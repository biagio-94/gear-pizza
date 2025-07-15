//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'dati_persona.g.dart';

/// DatiPersona
///
/// Properties:
/// * [nome] - Nome del soggetto
/// * [cognome] - Cognome del soggetto
/// * [nazionalita] - NazionalitÃ  del soggetto
/// * [provinciaNascita] - Provincia di nascita del soggetto
/// * [comuneNascita] - Comune di nascita del soggetto
/// * [comuneRilascioDocumento] - Comune di rilascio del documento del soggetto
/// * [dataNascita] - Data di nascita del soggetto (formato YYYYMMDD)
/// * [dataRilascioDocumento] - Data di rilascio del documento (formato YYYYMMDD)
/// * [dataScadenzaDocumento] - Data di scadenza del documento (formato YYYYMMDD)
/// * [comuneResidenza] - Comune di residenza del soggetto
/// * [tipoDocumento] - Tipo di documento (ad esempio, carta d'identitÃ , passaporto, ecc.)
/// * [provinciaDiResidenza] - Provincia di residenza del soggetto
/// * [indirizzoResidenza] - Indirizzo di residenza del soggetto
/// * [capResidenza] - CAP di residenza del soggetto
/// * [comuneDomicilio] - Comune di domicilio del soggetto
/// * [provinciaDomicilio] - Provincia di domicilio del soggetto
/// * [indirizzoDomicilio] - Indirizzo di domicilio del soggetto
/// * [capDomicilio] - CAP di domicilio del soggetto
/// * [numeroDocumento] - Numero documento
@BuiltValue()
abstract class DatiPersona implements Built<DatiPersona, DatiPersonaBuilder> {
  /// Nome del soggetto
  @BuiltValueField(wireName: r'nome')
  String? get nome;

  /// Cognome del soggetto
  @BuiltValueField(wireName: r'cognome')
  String? get cognome;

  /// NazionalitÃ  del soggetto
  @BuiltValueField(wireName: r'nazionalita')
  String? get nazionalita;

  /// Provincia di nascita del soggetto
  @BuiltValueField(wireName: r'provinciaNascita')
  String? get provinciaNascita;

  /// Comune di nascita del soggetto
  @BuiltValueField(wireName: r'comuneNascita')
  String? get comuneNascita;

  /// Comune di rilascio del documento del soggetto
  @BuiltValueField(wireName: r'comuneRilascioDocumento')
  String? get comuneRilascioDocumento;

  /// Data di nascita del soggetto (formato YYYYMMDD)
  @BuiltValueField(wireName: r'dataNascita')
  int? get dataNascita;

  /// Data di rilascio del documento (formato YYYYMMDD)
  @BuiltValueField(wireName: r'dataRilascioDocumento')
  int? get dataRilascioDocumento;

  /// Data di scadenza del documento (formato YYYYMMDD)
  @BuiltValueField(wireName: r'dataScadenzaDocumento')
  int? get dataScadenzaDocumento;

  /// Comune di residenza del soggetto
  @BuiltValueField(wireName: r'comuneResidenza')
  String? get comuneResidenza;

  /// Tipo di documento (ad esempio, carta d'identitÃ , passaporto, ecc.)
  @BuiltValueField(wireName: r'tipoDocumento')
  String? get tipoDocumento;

  /// Provincia di residenza del soggetto
  @BuiltValueField(wireName: r'provinciaDiResidenza')
  String? get provinciaDiResidenza;

  /// Indirizzo di residenza del soggetto
  @BuiltValueField(wireName: r'indirizzoResidenza')
  String? get indirizzoResidenza;

  /// CAP di residenza del soggetto
  @BuiltValueField(wireName: r'capResidenza')
  int? get capResidenza;

  /// Comune di domicilio del soggetto
  @BuiltValueField(wireName: r'comuneDomicilio')
  String? get comuneDomicilio;

  /// Provincia di domicilio del soggetto
  @BuiltValueField(wireName: r'provinciaDomicilio')
  String? get provinciaDomicilio;

  /// Indirizzo di domicilio del soggetto
  @BuiltValueField(wireName: r'indirizzoDomicilio')
  String? get indirizzoDomicilio;

  /// CAP di domicilio del soggetto
  @BuiltValueField(wireName: r'capDomicilio')
  int? get capDomicilio;

  /// Numero documento
  @BuiltValueField(wireName: r'numeroDocumento')
  String? get numeroDocumento;

  DatiPersona._();

  factory DatiPersona([void Function(DatiPersonaBuilder b) updates]) =
      _$DatiPersona;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DatiPersonaBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DatiPersona> get serializer => _$DatiPersonaSerializer();
}

class _$DatiPersonaSerializer implements PrimitiveSerializer<DatiPersona> {
  @override
  final Iterable<Type> types = const [DatiPersona, _$DatiPersona];

  @override
  final String wireName = r'DatiPersona';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DatiPersona object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    if (object.nazionalita != null) {
      yield r'nazionalita';
      yield serializers.serialize(
        object.nazionalita,
        specifiedType: const FullType(String),
      );
    }
    if (object.provinciaNascita != null) {
      yield r'provinciaNascita';
      yield serializers.serialize(
        object.provinciaNascita,
        specifiedType: const FullType(String),
      );
    }
    if (object.comuneNascita != null) {
      yield r'comuneNascita';
      yield serializers.serialize(
        object.comuneNascita,
        specifiedType: const FullType(String),
      );
    }
    if (object.comuneRilascioDocumento != null) {
      yield r'comuneRilascioDocumento';
      yield serializers.serialize(
        object.comuneRilascioDocumento,
        specifiedType: const FullType(String),
      );
    }
    if (object.dataNascita != null) {
      yield r'dataNascita';
      yield serializers.serialize(
        object.dataNascita,
        specifiedType: const FullType(int),
      );
    }
    if (object.dataRilascioDocumento != null) {
      yield r'dataRilascioDocumento';
      yield serializers.serialize(
        object.dataRilascioDocumento,
        specifiedType: const FullType(int),
      );
    }
    if (object.dataScadenzaDocumento != null) {
      yield r'dataScadenzaDocumento';
      yield serializers.serialize(
        object.dataScadenzaDocumento,
        specifiedType: const FullType(int),
      );
    }
    if (object.comuneResidenza != null) {
      yield r'comuneResidenza';
      yield serializers.serialize(
        object.comuneResidenza,
        specifiedType: const FullType(String),
      );
    }
    if (object.tipoDocumento != null) {
      yield r'tipoDocumento';
      yield serializers.serialize(
        object.tipoDocumento,
        specifiedType: const FullType(String),
      );
    }
    if (object.provinciaDiResidenza != null) {
      yield r'provinciaDiResidenza';
      yield serializers.serialize(
        object.provinciaDiResidenza,
        specifiedType: const FullType(String),
      );
    }
    if (object.indirizzoResidenza != null) {
      yield r'indirizzoResidenza';
      yield serializers.serialize(
        object.indirizzoResidenza,
        specifiedType: const FullType(String),
      );
    }
    if (object.capResidenza != null) {
      yield r'capResidenza';
      yield serializers.serialize(
        object.capResidenza,
        specifiedType: const FullType(int),
      );
    }
    if (object.comuneDomicilio != null) {
      yield r'comuneDomicilio';
      yield serializers.serialize(
        object.comuneDomicilio,
        specifiedType: const FullType(String),
      );
    }
    if (object.provinciaDomicilio != null) {
      yield r'provinciaDomicilio';
      yield serializers.serialize(
        object.provinciaDomicilio,
        specifiedType: const FullType(String),
      );
    }
    if (object.indirizzoDomicilio != null) {
      yield r'indirizzoDomicilio';
      yield serializers.serialize(
        object.indirizzoDomicilio,
        specifiedType: const FullType(String),
      );
    }
    if (object.capDomicilio != null) {
      yield r'capDomicilio';
      yield serializers.serialize(
        object.capDomicilio,
        specifiedType: const FullType(int),
      );
    }
    if (object.numeroDocumento != null) {
      yield r'numeroDocumento';
      yield serializers.serialize(
        object.numeroDocumento,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DatiPersona object, {
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
    required DatiPersonaBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        case r'nazionalita':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.nazionalita = valueDes;
          break;
        case r'provinciaNascita':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.provinciaNascita = valueDes;
          break;
        case r'comuneNascita':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.comuneNascita = valueDes;
          break;
        case r'comuneRilascioDocumento':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.comuneRilascioDocumento = valueDes;
          break;
        case r'dataNascita':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.dataNascita = valueDes;
          break;
        case r'dataRilascioDocumento':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.dataRilascioDocumento = valueDes;
          break;
        case r'dataScadenzaDocumento':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.dataScadenzaDocumento = valueDes;
          break;
        case r'comuneResidenza':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.comuneResidenza = valueDes;
          break;
        case r'tipoDocumento':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.tipoDocumento = valueDes;
          break;
        case r'provinciaDiResidenza':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.provinciaDiResidenza = valueDes;
          break;
        case r'indirizzoResidenza':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.indirizzoResidenza = valueDes;
          break;
        case r'capResidenza':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.capResidenza = valueDes;
          break;
        case r'comuneDomicilio':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.comuneDomicilio = valueDes;
          break;
        case r'provinciaDomicilio':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.provinciaDomicilio = valueDes;
          break;
        case r'indirizzoDomicilio':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.indirizzoDomicilio = valueDes;
          break;
        case r'capDomicilio':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.capDomicilio = valueDes;
          break;
        case r'numeroDocumento':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.numeroDocumento = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DatiPersona deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DatiPersonaBuilder();
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
