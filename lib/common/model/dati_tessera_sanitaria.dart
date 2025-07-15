//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'dati_tessera_sanitaria.g.dart';

/// DatiTesseraSanitaria
///
/// Properties:
/// * [nome] - Nome del soggetto
/// * [cognome] - Cognome del soggetto
/// * [cittaNascita] - CittÃ  di nascita del soggetto
/// * [dataNascita] - Data di nascita del soggetto in formato YYYYMMDD
/// * [codiceFiscale] - Codice fiscale del soggetto
/// * [numeroTessera] - Numero della tessera sanitaria
/// * [sesso] - Sesso del soggetto (M/F)
/// * [dataScadenza] - Data di scadenza della tessera sanitaria in formato YYYYMMDD
@BuiltValue()
abstract class DatiTesseraSanitaria
    implements Built<DatiTesseraSanitaria, DatiTesseraSanitariaBuilder> {
  /// Nome del soggetto
  @BuiltValueField(wireName: r'nome')
  String? get nome;

  /// Cognome del soggetto
  @BuiltValueField(wireName: r'cognome')
  String? get cognome;

  /// CittÃ  di nascita del soggetto
  @BuiltValueField(wireName: r'cittaNascita')
  String? get cittaNascita;

  /// Data di nascita del soggetto in formato YYYYMMDD
  @BuiltValueField(wireName: r'dataNascita')
  int? get dataNascita;

  /// Codice fiscale del soggetto
  @BuiltValueField(wireName: r'codiceFiscale')
  String? get codiceFiscale;

  /// Numero della tessera sanitaria
  @BuiltValueField(wireName: r'numeroTessera')
  String? get numeroTessera;

  /// Sesso del soggetto (M/F)
  @BuiltValueField(wireName: r'sesso')
  String? get sesso;

  /// Data di scadenza della tessera sanitaria in formato YYYYMMDD
  @BuiltValueField(wireName: r'dataScadenza')
  int? get dataScadenza;

  DatiTesseraSanitaria._();

  factory DatiTesseraSanitaria(
          [void Function(DatiTesseraSanitariaBuilder b) updates]) =
      _$DatiTesseraSanitaria;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DatiTesseraSanitariaBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DatiTesseraSanitaria> get serializer =>
      _$DatiTesseraSanitariaSerializer();
}

class _$DatiTesseraSanitariaSerializer
    implements PrimitiveSerializer<DatiTesseraSanitaria> {
  @override
  final Iterable<Type> types = const [
    DatiTesseraSanitaria,
    _$DatiTesseraSanitaria
  ];

  @override
  final String wireName = r'DatiTesseraSanitaria';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DatiTesseraSanitaria object, {
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
    if (object.cittaNascita != null) {
      yield r'cittaNascita';
      yield serializers.serialize(
        object.cittaNascita,
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
    if (object.codiceFiscale != null) {
      yield r'codiceFiscale';
      yield serializers.serialize(
        object.codiceFiscale,
        specifiedType: const FullType(String),
      );
    }
    if (object.numeroTessera != null) {
      yield r'numeroTessera';
      yield serializers.serialize(
        object.numeroTessera,
        specifiedType: const FullType(String),
      );
    }
    if (object.sesso != null) {
      yield r'sesso';
      yield serializers.serialize(
        object.sesso,
        specifiedType: const FullType(String),
      );
    }
    if (object.dataScadenza != null) {
      yield r'dataScadenza';
      yield serializers.serialize(
        object.dataScadenza,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DatiTesseraSanitaria object, {
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
    required DatiTesseraSanitariaBuilder result,
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
        case r'cittaNascita':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.cittaNascita = valueDes;
          break;
        case r'dataNascita':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.dataNascita = valueDes;
          break;
        case r'codiceFiscale':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.codiceFiscale = valueDes;
          break;
        case r'numeroTessera':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.numeroTessera = valueDes;
          break;
        case r'sesso':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.sesso = valueDes;
          break;
        case r'dataScadenza':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.dataScadenza = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DatiTesseraSanitaria deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DatiTesseraSanitariaBuilder();
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
