//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'dati_reddito.g.dart';

/// DatiReddito
///
/// Properties:
/// * [tipoOccupazione] - Tipo di occupazione del soggetto (ad esempio, impiegato, libero professionista, ecc.)
/// * [annoImpiego] - Anno di inizio dell'impiego
/// * [meseImpiego] - Mese di inizio dell'impiego
/// * [reddito] - Reddito annuale del soggetto
/// * [flagTae] - Flag che indica se il reddito Ã¨ soggetto a TAE (Tasso Annuo Effettivo)
/// * [datoreLavoro] - Nome del datore di lavoro
/// * [telefonoDatoreLavoro] - Numero di telefono del datore di lavoro
/// * [cfAzienda] - Codice fiscale dell'azienda
/// * [indirizzoLavoro] - Indirizzo del luogo di lavoro
/// * [provinciaLavoro] - Provincia del luogo di lavoro
/// * [comuneLavoro] - Comune del luogo di lavoro
@BuiltValue()
abstract class DatiReddito implements Built<DatiReddito, DatiRedditoBuilder> {
  /// Tipo di occupazione del soggetto (ad esempio, impiegato, libero professionista, ecc.)
  @BuiltValueField(wireName: r'tipoOccupazione')
  String? get tipoOccupazione;

  /// Anno di inizio dell'impiego
  @BuiltValueField(wireName: r'annoImpiego')
  String? get annoImpiego;

  /// Mese di inizio dell'impiego
  @BuiltValueField(wireName: r'meseImpiego')
  String? get meseImpiego;

  /// Reddito annuale del soggetto
  @BuiltValueField(wireName: r'reddito')
  num? get reddito;

  /// Flag che indica se il reddito Ã¨ soggetto a TAE (Tasso Annuo Effettivo)
  @BuiltValueField(wireName: r'flagTae')
  bool? get flagTae;

  /// Nome del datore di lavoro
  @BuiltValueField(wireName: r'datoreLavoro')
  String? get datoreLavoro;

  /// Numero di telefono del datore di lavoro
  @BuiltValueField(wireName: r'telefonoDatoreLavoro')
  String? get telefonoDatoreLavoro;

  /// Codice fiscale dell'azienda
  @BuiltValueField(wireName: r'cf_azienda')
  String? get cfAzienda;

  /// Indirizzo del luogo di lavoro
  @BuiltValueField(wireName: r'indirizzoLavoro')
  String? get indirizzoLavoro;

  /// Provincia del luogo di lavoro
  @BuiltValueField(wireName: r'provinciaLavoro')
  String? get provinciaLavoro;

  /// Comune del luogo di lavoro
  @BuiltValueField(wireName: r'comuneLavoro')
  String? get comuneLavoro;

  DatiReddito._();

  factory DatiReddito([void Function(DatiRedditoBuilder b) updates]) =
      _$DatiReddito;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DatiRedditoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DatiReddito> get serializer => _$DatiRedditoSerializer();
}

class _$DatiRedditoSerializer implements PrimitiveSerializer<DatiReddito> {
  @override
  final Iterable<Type> types = const [DatiReddito, _$DatiReddito];

  @override
  final String wireName = r'DatiReddito';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DatiReddito object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.tipoOccupazione != null) {
      yield r'tipoOccupazione';
      yield serializers.serialize(
        object.tipoOccupazione,
        specifiedType: const FullType(String),
      );
    }
    if (object.annoImpiego != null) {
      yield r'annoImpiego';
      yield serializers.serialize(
        object.annoImpiego,
        specifiedType: const FullType(String),
      );
    }
    if (object.meseImpiego != null) {
      yield r'meseImpiego';
      yield serializers.serialize(
        object.meseImpiego,
        specifiedType: const FullType(String),
      );
    }
    if (object.reddito != null) {
      yield r'reddito';
      yield serializers.serialize(
        object.reddito,
        specifiedType: const FullType(num),
      );
    }
    if (object.flagTae != null) {
      yield r'flagTae';
      yield serializers.serialize(
        object.flagTae,
        specifiedType: const FullType(bool),
      );
    }
    if (object.datoreLavoro != null) {
      yield r'datoreLavoro';
      yield serializers.serialize(
        object.datoreLavoro,
        specifiedType: const FullType(String),
      );
    }
    if (object.telefonoDatoreLavoro != null) {
      yield r'telefonoDatoreLavoro';
      yield serializers.serialize(
        object.telefonoDatoreLavoro,
        specifiedType: const FullType(String),
      );
    }
    if (object.cfAzienda != null) {
      yield r'cf_azienda';
      yield serializers.serialize(
        object.cfAzienda,
        specifiedType: const FullType(String),
      );
    }
    if (object.indirizzoLavoro != null) {
      yield r'indirizzoLavoro';
      yield serializers.serialize(
        object.indirizzoLavoro,
        specifiedType: const FullType(String),
      );
    }
    if (object.provinciaLavoro != null) {
      yield r'provinciaLavoro';
      yield serializers.serialize(
        object.provinciaLavoro,
        specifiedType: const FullType(String),
      );
    }
    if (object.comuneLavoro != null) {
      yield r'comuneLavoro';
      yield serializers.serialize(
        object.comuneLavoro,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DatiReddito object, {
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
    required DatiRedditoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'tipoOccupazione':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.tipoOccupazione = valueDes;
          break;
        case r'annoImpiego':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.annoImpiego = valueDes;
          break;
        case r'meseImpiego':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.meseImpiego = valueDes;
          break;
        case r'reddito':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.reddito = valueDes;
          break;
        case r'flagTae':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.flagTae = valueDes;
          break;
        case r'datoreLavoro':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.datoreLavoro = valueDes;
          break;
        case r'telefonoDatoreLavoro':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.telefonoDatoreLavoro = valueDes;
          break;
        case r'cf_azienda':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.cfAzienda = valueDes;
          break;
        case r'indirizzoLavoro':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.indirizzoLavoro = valueDes;
          break;
        case r'provinciaLavoro':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.provinciaLavoro = valueDes;
          break;
        case r'comuneLavoro':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.comuneLavoro = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DatiReddito deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DatiRedditoBuilder();
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
