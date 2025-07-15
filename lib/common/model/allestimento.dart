//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'allestimento.g.dart';

/// Allestimento
///
/// Properties:
/// * [alimentazione]
/// * [anno]
/// * [categoria]
/// * [cilindrata]
/// * [codiceInfocar]
/// * [codiceInfocarAM]
/// * [codiceMarca]
/// * [codiceModello]
/// * [dataAgg]
/// * [descrizione]
/// * [descrizioneCompleta]
/// * [fineImmatricolazione]
/// * [fineVendita]
/// * [inizioImmatricolazione]
/// * [inizioVendita]
/// * [mese]
@BuiltValue()
abstract class Allestimento
    implements Built<Allestimento, AllestimentoBuilder> {
  @BuiltValueField(wireName: r'Alimentazione')
  String? get alimentazione;

  @BuiltValueField(wireName: r'Anno')
  String? get anno;

  @BuiltValueField(wireName: r'Categoria')
  String? get categoria;

  @BuiltValueField(wireName: r'Cilindrata')
  String? get cilindrata;

  @BuiltValueField(wireName: r'CodiceInfocar')
  String? get codiceInfocar;

  @BuiltValueField(wireName: r'CodiceInfocarAM')
  num? get codiceInfocarAM;

  @BuiltValueField(wireName: r'CodiceMarca')
  String? get codiceMarca;

  @BuiltValueField(wireName: r'CodiceModello')
  num? get codiceModello;

  @BuiltValueField(wireName: r'DataAgg')
  num? get dataAgg;

  @BuiltValueField(wireName: r'Descrizione')
  String? get descrizione;

  @BuiltValueField(wireName: r'DescrizioneCompleta')
  String? get descrizioneCompleta;

  @BuiltValueField(wireName: r'FineImmatricolazione')
  String? get fineImmatricolazione;

  @BuiltValueField(wireName: r'FineVendita')
  String? get fineVendita;

  @BuiltValueField(wireName: r'InizioImmatricolazione')
  String? get inizioImmatricolazione;

  @BuiltValueField(wireName: r'InizioVendita')
  String? get inizioVendita;

  @BuiltValueField(wireName: r'Mese')
  String? get mese;

  Allestimento._();

  factory Allestimento([void Function(AllestimentoBuilder b) updates]) =
      _$Allestimento;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AllestimentoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Allestimento> get serializer => _$AllestimentoSerializer();
}

class _$AllestimentoSerializer implements PrimitiveSerializer<Allestimento> {
  @override
  final Iterable<Type> types = const [Allestimento, _$Allestimento];

  @override
  final String wireName = r'Allestimento';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Allestimento object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.alimentazione != null) {
      yield r'Alimentazione';
      yield serializers.serialize(
        object.alimentazione,
        specifiedType: const FullType(String),
      );
    }
    if (object.anno != null) {
      yield r'Anno';
      yield serializers.serialize(
        object.anno,
        specifiedType: const FullType(String),
      );
    }
    if (object.categoria != null) {
      yield r'Categoria';
      yield serializers.serialize(
        object.categoria,
        specifiedType: const FullType(String),
      );
    }
    if (object.cilindrata != null) {
      yield r'Cilindrata';
      yield serializers.serialize(
        object.cilindrata,
        specifiedType: const FullType(String),
      );
    }
    if (object.codiceInfocar != null) {
      yield r'CodiceInfocar';
      yield serializers.serialize(
        object.codiceInfocar,
        specifiedType: const FullType(String),
      );
    }
    if (object.codiceInfocarAM != null) {
      yield r'CodiceInfocarAM';
      yield serializers.serialize(
        object.codiceInfocarAM,
        specifiedType: const FullType(num),
      );
    }
    if (object.codiceMarca != null) {
      yield r'CodiceMarca';
      yield serializers.serialize(
        object.codiceMarca,
        specifiedType: const FullType(String),
      );
    }
    if (object.codiceModello != null) {
      yield r'CodiceModello';
      yield serializers.serialize(
        object.codiceModello,
        specifiedType: const FullType(num),
      );
    }
    if (object.dataAgg != null) {
      yield r'DataAgg';
      yield serializers.serialize(
        object.dataAgg,
        specifiedType: const FullType(num),
      );
    }
    if (object.descrizione != null) {
      yield r'Descrizione';
      yield serializers.serialize(
        object.descrizione,
        specifiedType: const FullType(String),
      );
    }
    if (object.descrizioneCompleta != null) {
      yield r'DescrizioneCompleta';
      yield serializers.serialize(
        object.descrizioneCompleta,
        specifiedType: const FullType(String),
      );
    }
    if (object.fineImmatricolazione != null) {
      yield r'FineImmatricolazione';
      yield serializers.serialize(
        object.fineImmatricolazione,
        specifiedType: const FullType(String),
      );
    }
    if (object.fineVendita != null) {
      yield r'FineVendita';
      yield serializers.serialize(
        object.fineVendita,
        specifiedType: const FullType(String),
      );
    }
    if (object.inizioImmatricolazione != null) {
      yield r'InizioImmatricolazione';
      yield serializers.serialize(
        object.inizioImmatricolazione,
        specifiedType: const FullType(String),
      );
    }
    if (object.inizioVendita != null) {
      yield r'InizioVendita';
      yield serializers.serialize(
        object.inizioVendita,
        specifiedType: const FullType(String),
      );
    }
    if (object.mese != null) {
      yield r'Mese';
      yield serializers.serialize(
        object.mese,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Allestimento object, {
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
    required AllestimentoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'Alimentazione':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.alimentazione = valueDes;
          break;
        case r'Anno':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.anno = valueDes;
          break;
        case r'Categoria':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.categoria = valueDes;
          break;
        case r'Cilindrata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.cilindrata = valueDes;
          break;
        case r'CodiceInfocar':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.codiceInfocar = valueDes;
          break;
        case r'CodiceInfocarAM':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.codiceInfocarAM = valueDes;
          break;
        case r'CodiceMarca':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.codiceMarca = valueDes;
          break;
        case r'CodiceModello':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.codiceModello = valueDes;
          break;
        case r'DataAgg':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.dataAgg = valueDes;
          break;
        case r'Descrizione':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.descrizione = valueDes;
          break;
        case r'DescrizioneCompleta':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.descrizioneCompleta = valueDes;
          break;
        case r'FineImmatricolazione':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.fineImmatricolazione = valueDes;
          break;
        case r'FineVendita':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.fineVendita = valueDes;
          break;
        case r'InizioImmatricolazione':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.inizioImmatricolazione = valueDes;
          break;
        case r'InizioVendita':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.inizioVendita = valueDes;
          break;
        case r'Mese':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.mese = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Allestimento deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AllestimentoBuilder();
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
