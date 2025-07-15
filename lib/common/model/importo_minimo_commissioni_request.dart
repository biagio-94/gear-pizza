//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'importo_minimo_commissioni_request.g.dart';

/// ImportoMinimoCommissioniRequest
///
/// Properties:
/// * [codiceProdotto]
/// * [convenzionato]
/// * [dataImmatricolazione]
/// * [importoFinanziato]
/// * [numeroRate]
/// * [tabellaFinanziaria]
/// * [tipoPersona]
/// * [tipoProdotto]
/// * [valoreBene]
@BuiltValue()
abstract class ImportoMinimoCommissioniRequest
    implements
        Built<ImportoMinimoCommissioniRequest,
            ImportoMinimoCommissioniRequestBuilder> {
  @BuiltValueField(wireName: r'codiceProdotto')
  String get codiceProdotto;

  @BuiltValueField(wireName: r'convenzionato')
  int get convenzionato;

  @BuiltValueField(wireName: r'dataImmatricolazione')
  String? get dataImmatricolazione;

  @BuiltValueField(wireName: r'importoFinanziato')
  num get importoFinanziato;

  @BuiltValueField(wireName: r'numeroRate')
  String get numeroRate;

  @BuiltValueField(wireName: r'tabellaFinanziaria')
  String get tabellaFinanziaria;

  @BuiltValueField(wireName: r'tipoPersona')
  String get tipoPersona;

  @BuiltValueField(wireName: r'tipoProdotto')
  String get tipoProdotto;

  @BuiltValueField(wireName: r'valoreBene')
  num get valoreBene;

  ImportoMinimoCommissioniRequest._();

  factory ImportoMinimoCommissioniRequest(
          [void Function(ImportoMinimoCommissioniRequestBuilder b) updates]) =
      _$ImportoMinimoCommissioniRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ImportoMinimoCommissioniRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ImportoMinimoCommissioniRequest> get serializer =>
      _$ImportoMinimoCommissioniRequestSerializer();
}

class _$ImportoMinimoCommissioniRequestSerializer
    implements PrimitiveSerializer<ImportoMinimoCommissioniRequest> {
  @override
  final Iterable<Type> types = const [
    ImportoMinimoCommissioniRequest,
    _$ImportoMinimoCommissioniRequest
  ];

  @override
  final String wireName = r'ImportoMinimoCommissioniRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ImportoMinimoCommissioniRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'codiceProdotto';
    yield serializers.serialize(
      object.codiceProdotto,
      specifiedType: const FullType(String),
    );
    yield r'convenzionato';
    yield serializers.serialize(
      object.convenzionato,
      specifiedType: const FullType(int),
    );
    if (object.dataImmatricolazione != null) {
      yield r'dataImmatricolazione';
      yield serializers.serialize(
        object.dataImmatricolazione,
        specifiedType: const FullType(String),
      );
    }
    yield r'importoFinanziato';
    yield serializers.serialize(
      object.importoFinanziato,
      specifiedType: const FullType(num),
    );
    yield r'numeroRate';
    yield serializers.serialize(
      object.numeroRate,
      specifiedType: const FullType(String),
    );
    yield r'tabellaFinanziaria';
    yield serializers.serialize(
      object.tabellaFinanziaria,
      specifiedType: const FullType(String),
    );
    yield r'tipoPersona';
    yield serializers.serialize(
      object.tipoPersona,
      specifiedType: const FullType(String),
    );
    yield r'tipoProdotto';
    yield serializers.serialize(
      object.tipoProdotto,
      specifiedType: const FullType(String),
    );
    yield r'valoreBene';
    yield serializers.serialize(
      object.valoreBene,
      specifiedType: const FullType(num),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ImportoMinimoCommissioniRequest object, {
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
    required ImportoMinimoCommissioniRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'codiceProdotto':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.codiceProdotto = valueDes;
          break;
        case r'convenzionato':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.convenzionato = valueDes;
          break;
        case r'dataImmatricolazione':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.dataImmatricolazione = valueDes;
          break;
        case r'importoFinanziato':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.importoFinanziato = valueDes;
          break;
        case r'numeroRate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.numeroRate = valueDes;
          break;
        case r'tabellaFinanziaria':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.tabellaFinanziaria = valueDes;
          break;
        case r'tipoPersona':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.tipoPersona = valueDes;
          break;
        case r'tipoProdotto':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.tipoProdotto = valueDes;
          break;
        case r'valoreBene':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.valoreBene = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ImportoMinimoCommissioniRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ImportoMinimoCommissioniRequestBuilder();
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
