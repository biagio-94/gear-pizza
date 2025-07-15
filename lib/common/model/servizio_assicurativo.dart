//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'servizio_assicurativo.g.dart';

/// ServizioAssicurativo
///
/// Properties:
/// * [codicePacchetto]
/// * [codiceServizio]
/// * [flagAnnullo]
/// * [flagPostVendita]
/// * [descrizionePacchetto]
/// * [dataInizioValiditaPacchetto]
/// * [dataFineValiditaPacchetto]
/// * [descrizioneServizio]
/// * [dataInizioValiditaServizio]
/// * [dataFineValiditaServizio]
/// * [durata]
/// * [descrizioneDettagliatta]
/// * [logo]
/// * [linkFascicoloInformativo]
/// * [abilitazioneIvass]
/// * [flagRipartito]
@BuiltValue()
abstract class ServizioAssicurativo
    implements Built<ServizioAssicurativo, ServizioAssicurativoBuilder> {
  @BuiltValueField(wireName: r'codicePacchetto')
  String? get codicePacchetto;

  @BuiltValueField(wireName: r'codiceServizio')
  String? get codiceServizio;

  @BuiltValueField(wireName: r'flagAnnullo')
  String? get flagAnnullo;

  @BuiltValueField(wireName: r'flagPostVendita')
  String? get flagPostVendita;

  @BuiltValueField(wireName: r'descrizionePacchetto')
  String? get descrizionePacchetto;

  @BuiltValueField(wireName: r'dataInizioValiditaPacchetto')
  int? get dataInizioValiditaPacchetto;

  @BuiltValueField(wireName: r'dataFineValiditaPacchetto')
  int? get dataFineValiditaPacchetto;

  @BuiltValueField(wireName: r'descrizioneServizio')
  String? get descrizioneServizio;

  @BuiltValueField(wireName: r'dataInizioValiditaServizio')
  int? get dataInizioValiditaServizio;

  @BuiltValueField(wireName: r'dataFineValiditaServizio')
  int? get dataFineValiditaServizio;

  @BuiltValueField(wireName: r'durata')
  int? get durata;

  @BuiltValueField(wireName: r'descrizioneDettagliatta')
  String? get descrizioneDettagliatta;

  @BuiltValueField(wireName: r'logo')
  String? get logo;

  @BuiltValueField(wireName: r'linkFascicoloInformativo')
  String? get linkFascicoloInformativo;

  @BuiltValueField(wireName: r'abilitazioneIvass')
  bool? get abilitazioneIvass;

  @BuiltValueField(wireName: r'flagRipartito')
  String? get flagRipartito;

  ServizioAssicurativo._();

  factory ServizioAssicurativo(
          [void Function(ServizioAssicurativoBuilder b) updates]) =
      _$ServizioAssicurativo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ServizioAssicurativoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ServizioAssicurativo> get serializer =>
      _$ServizioAssicurativoSerializer();
}

class _$ServizioAssicurativoSerializer
    implements PrimitiveSerializer<ServizioAssicurativo> {
  @override
  final Iterable<Type> types = const [
    ServizioAssicurativo,
    _$ServizioAssicurativo
  ];

  @override
  final String wireName = r'ServizioAssicurativo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ServizioAssicurativo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.codicePacchetto != null) {
      yield r'codicePacchetto';
      yield serializers.serialize(
        object.codicePacchetto,
        specifiedType: const FullType(String),
      );
    }
    if (object.codiceServizio != null) {
      yield r'codiceServizio';
      yield serializers.serialize(
        object.codiceServizio,
        specifiedType: const FullType(String),
      );
    }
    if (object.flagAnnullo != null) {
      yield r'flagAnnullo';
      yield serializers.serialize(
        object.flagAnnullo,
        specifiedType: const FullType(String),
      );
    }
    if (object.flagPostVendita != null) {
      yield r'flagPostVendita';
      yield serializers.serialize(
        object.flagPostVendita,
        specifiedType: const FullType(String),
      );
    }
    if (object.descrizionePacchetto != null) {
      yield r'descrizionePacchetto';
      yield serializers.serialize(
        object.descrizionePacchetto,
        specifiedType: const FullType(String),
      );
    }
    if (object.dataInizioValiditaPacchetto != null) {
      yield r'dataInizioValiditaPacchetto';
      yield serializers.serialize(
        object.dataInizioValiditaPacchetto,
        specifiedType: const FullType(int),
      );
    }
    if (object.dataFineValiditaPacchetto != null) {
      yield r'dataFineValiditaPacchetto';
      yield serializers.serialize(
        object.dataFineValiditaPacchetto,
        specifiedType: const FullType(int),
      );
    }
    if (object.descrizioneServizio != null) {
      yield r'descrizioneServizio';
      yield serializers.serialize(
        object.descrizioneServizio,
        specifiedType: const FullType(String),
      );
    }
    if (object.dataInizioValiditaServizio != null) {
      yield r'dataInizioValiditaServizio';
      yield serializers.serialize(
        object.dataInizioValiditaServizio,
        specifiedType: const FullType(int),
      );
    }
    if (object.dataFineValiditaServizio != null) {
      yield r'dataFineValiditaServizio';
      yield serializers.serialize(
        object.dataFineValiditaServizio,
        specifiedType: const FullType(int),
      );
    }
    if (object.durata != null) {
      yield r'durata';
      yield serializers.serialize(
        object.durata,
        specifiedType: const FullType(int),
      );
    }
    if (object.descrizioneDettagliatta != null) {
      yield r'descrizioneDettagliatta';
      yield serializers.serialize(
        object.descrizioneDettagliatta,
        specifiedType: const FullType(String),
      );
    }
    if (object.logo != null) {
      yield r'logo';
      yield serializers.serialize(
        object.logo,
        specifiedType: const FullType(String),
      );
    }
    if (object.linkFascicoloInformativo != null) {
      yield r'linkFascicoloInformativo';
      yield serializers.serialize(
        object.linkFascicoloInformativo,
        specifiedType: const FullType(String),
      );
    }
    if (object.abilitazioneIvass != null) {
      yield r'abilitazioneIvass';
      yield serializers.serialize(
        object.abilitazioneIvass,
        specifiedType: const FullType(bool),
      );
    }
    if (object.flagRipartito != null) {
      yield r'flagRipartito';
      yield serializers.serialize(
        object.flagRipartito,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ServizioAssicurativo object, {
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
    required ServizioAssicurativoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'codicePacchetto':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.codicePacchetto = valueDes;
          break;
        case r'codiceServizio':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.codiceServizio = valueDes;
          break;
        case r'flagAnnullo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.flagAnnullo = valueDes;
          break;
        case r'flagPostVendita':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.flagPostVendita = valueDes;
          break;
        case r'descrizionePacchetto':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.descrizionePacchetto = valueDes;
          break;
        case r'dataInizioValiditaPacchetto':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.dataInizioValiditaPacchetto = valueDes;
          break;
        case r'dataFineValiditaPacchetto':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.dataFineValiditaPacchetto = valueDes;
          break;
        case r'descrizioneServizio':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.descrizioneServizio = valueDes;
          break;
        case r'dataInizioValiditaServizio':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.dataInizioValiditaServizio = valueDes;
          break;
        case r'dataFineValiditaServizio':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.dataFineValiditaServizio = valueDes;
          break;
        case r'durata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.durata = valueDes;
          break;
        case r'descrizioneDettagliatta':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.descrizioneDettagliatta = valueDes;
          break;
        case r'logo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.logo = valueDes;
          break;
        case r'linkFascicoloInformativo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.linkFascicoloInformativo = valueDes;
          break;
        case r'abilitazioneIvass':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.abilitazioneIvass = valueDes;
          break;
        case r'flagRipartito':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.flagRipartito = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ServizioAssicurativo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ServizioAssicurativoBuilder();
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
