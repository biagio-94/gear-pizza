//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'preventivo_dati_finanziamento.g.dart';

/// PreventivoDatiFinanziamento
///
/// Properties:
/// * [id] - ID del preventivo
/// * [valoreBene] - Valore del bene
/// * [importoFinanziato] - Importo finanziato
/// * [numeroRata] - Numero della rata
/// * [importoCommissioni] - Importo delle commissioni
/// * [prodotto] - Nome del prodotto
/// * [tabellaFinanziaria] - Tabella finanziaria del prestito
/// * [destinazioneBene] - Destinazione d'uso del bene
/// * [numeroOrdine] - Numero dell'ordine
/// * [pianiDiCura] - Elenco dei piani di cura
/// * [codiceMarca] - Codice della marca del bene
/// * [codiceModello] - Codice del modello del bene
/// * [inforcarAllestimento] - Codice dell'allestimento del bene
/// * [targa] - Numero di targa del bene
/// * [funzionalita] - codice funzionalita'
/// * [annoImmatricolazione] 
/// * [meseImmatricolazione] 
/// * [idReferente] 
@BuiltValue()
abstract class PreventivoDatiFinanziamento implements Built<PreventivoDatiFinanziamento, PreventivoDatiFinanziamentoBuilder> {
  /// ID del preventivo
  @BuiltValueField(wireName: r'id')
  int? get id;

  /// Valore del bene
  @BuiltValueField(wireName: r'valoreBene')
  num? get valoreBene;

  /// Importo finanziato
  @BuiltValueField(wireName: r'importoFinanziato')
  num? get importoFinanziato;

  /// Numero della rata
  @BuiltValueField(wireName: r'numeroRata')
  int? get numeroRata;

  /// Importo delle commissioni
  @BuiltValueField(wireName: r'importoCommissioni')
  num? get importoCommissioni;

  /// Nome del prodotto
  @BuiltValueField(wireName: r'prodotto')
  String? get prodotto;

  /// Tabella finanziaria del prestito
  @BuiltValueField(wireName: r'tabellaFinanziaria')
  String? get tabellaFinanziaria;

  /// Destinazione d'uso del bene
  @BuiltValueField(wireName: r'destinazioneBene')
  String? get destinazioneBene;

  /// Numero dell'ordine
  @BuiltValueField(wireName: r'numeroOrdine')
  String? get numeroOrdine;

  /// Elenco dei piani di cura
  @BuiltValueField(wireName: r'pianiDiCura')
  BuiltList<String>? get pianiDiCura;

  /// Codice della marca del bene
  @BuiltValueField(wireName: r'codiceMarca')
  String? get codiceMarca;

  /// Codice del modello del bene
  @BuiltValueField(wireName: r'codiceModello')
  String? get codiceModello;

  /// Codice dell'allestimento del bene
  @BuiltValueField(wireName: r'inforcarAllestimento')
  int? get inforcarAllestimento;

  /// Numero di targa del bene
  @BuiltValueField(wireName: r'targa')
  String? get targa;

  /// codice funzionalita'
  @BuiltValueField(wireName: r'funzionalita')
  String? get funzionalita;

  @BuiltValueField(wireName: r'annoImmatricolazione')
  String? get annoImmatricolazione;

  @BuiltValueField(wireName: r'meseImmatricolazione')
  String? get meseImmatricolazione;

  @BuiltValueField(wireName: r'idReferente')
  String? get idReferente;

  PreventivoDatiFinanziamento._();

  factory PreventivoDatiFinanziamento([void updates(PreventivoDatiFinanziamentoBuilder b)]) = _$PreventivoDatiFinanziamento;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PreventivoDatiFinanziamentoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PreventivoDatiFinanziamento> get serializer => _$PreventivoDatiFinanziamentoSerializer();
}

class _$PreventivoDatiFinanziamentoSerializer implements PrimitiveSerializer<PreventivoDatiFinanziamento> {
  @override
  final Iterable<Type> types = const [PreventivoDatiFinanziamento, _$PreventivoDatiFinanziamento];

  @override
  final String wireName = r'PreventivoDatiFinanziamento';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PreventivoDatiFinanziamento object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.valoreBene != null) {
      yield r'valoreBene';
      yield serializers.serialize(
        object.valoreBene,
        specifiedType: const FullType(num),
      );
    }
    if (object.importoFinanziato != null) {
      yield r'importoFinanziato';
      yield serializers.serialize(
        object.importoFinanziato,
        specifiedType: const FullType(num),
      );
    }
    if (object.numeroRata != null) {
      yield r'numeroRata';
      yield serializers.serialize(
        object.numeroRata,
        specifiedType: const FullType(int),
      );
    }
    if (object.importoCommissioni != null) {
      yield r'importoCommissioni';
      yield serializers.serialize(
        object.importoCommissioni,
        specifiedType: const FullType(num),
      );
    }
    if (object.prodotto != null) {
      yield r'prodotto';
      yield serializers.serialize(
        object.prodotto,
        specifiedType: const FullType(String),
      );
    }
    if (object.tabellaFinanziaria != null) {
      yield r'tabellaFinanziaria';
      yield serializers.serialize(
        object.tabellaFinanziaria,
        specifiedType: const FullType(String),
      );
    }
    if (object.destinazioneBene != null) {
      yield r'destinazioneBene';
      yield serializers.serialize(
        object.destinazioneBene,
        specifiedType: const FullType(String),
      );
    }
    if (object.numeroOrdine != null) {
      yield r'numeroOrdine';
      yield serializers.serialize(
        object.numeroOrdine,
        specifiedType: const FullType(String),
      );
    }
    if (object.pianiDiCura != null) {
      yield r'pianiDiCura';
      yield serializers.serialize(
        object.pianiDiCura,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.codiceMarca != null) {
      yield r'codiceMarca';
      yield serializers.serialize(
        object.codiceMarca,
        specifiedType: const FullType(String),
      );
    }
    if (object.codiceModello != null) {
      yield r'codiceModello';
      yield serializers.serialize(
        object.codiceModello,
        specifiedType: const FullType(String),
      );
    }
    if (object.inforcarAllestimento != null) {
      yield r'inforcarAllestimento';
      yield serializers.serialize(
        object.inforcarAllestimento,
        specifiedType: const FullType(int),
      );
    }
    if (object.targa != null) {
      yield r'targa';
      yield serializers.serialize(
        object.targa,
        specifiedType: const FullType(String),
      );
    }
    if (object.funzionalita != null) {
      yield r'funzionalita';
      yield serializers.serialize(
        object.funzionalita,
        specifiedType: const FullType(String),
      );
    }
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
    if (object.idReferente != null) {
      yield r'idReferente';
      yield serializers.serialize(
        object.idReferente,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PreventivoDatiFinanziamento object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PreventivoDatiFinanziamentoBuilder result,
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
        case r'valoreBene':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.valoreBene = valueDes;
          break;
        case r'importoFinanziato':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.importoFinanziato = valueDes;
          break;
        case r'numeroRata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.numeroRata = valueDes;
          break;
        case r'importoCommissioni':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.importoCommissioni = valueDes;
          break;
        case r'prodotto':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.prodotto = valueDes;
          break;
        case r'tabellaFinanziaria':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.tabellaFinanziaria = valueDes;
          break;
        case r'destinazioneBene':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.destinazioneBene = valueDes;
          break;
        case r'numeroOrdine':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.numeroOrdine = valueDes;
          break;
        case r'pianiDiCura':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.pianiDiCura.replace(valueDes);
          break;
        case r'codiceMarca':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.codiceMarca = valueDes;
          break;
        case r'codiceModello':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.codiceModello = valueDes;
          break;
        case r'inforcarAllestimento':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.inforcarAllestimento = valueDes;
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
        case r'idReferente':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.idReferente = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PreventivoDatiFinanziamento deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PreventivoDatiFinanziamentoBuilder();
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

