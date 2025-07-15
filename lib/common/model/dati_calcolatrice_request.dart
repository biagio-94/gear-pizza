//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'dati_calcolatrice_request.g.dart';

/// DatiCalcolatriceRequest
///
/// Properties:
/// * [importo]
/// * [prodotto]
/// * [valoreBene]
/// * [tabellaFinanziaria]
/// * [commissioni]
/// * [collegatoCorto]
/// * [servizioCpi]
@BuiltValue()
abstract class DatiCalcolatriceRequest
    implements Built<DatiCalcolatriceRequest, DatiCalcolatriceRequestBuilder> {
  @BuiltValueField(wireName: r'importo')
  num? get importo;

  @BuiltValueField(wireName: r'prodotto')
  String? get prodotto;

  @BuiltValueField(wireName: r'valoreBene')
  num? get valoreBene;

  @BuiltValueField(wireName: r'tabellaFinanziaria')
  String? get tabellaFinanziaria;

  @BuiltValueField(wireName: r'commissioni')
  num? get commissioni;

  @BuiltValueField(wireName: r'collegatoCorto')
  int? get collegatoCorto;

  @BuiltValueField(wireName: r'servizioCpi')
  String? get servizioCpi;

  DatiCalcolatriceRequest._();

  factory DatiCalcolatriceRequest(
          [void Function(DatiCalcolatriceRequestBuilder b) updates]) =
      _$DatiCalcolatriceRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DatiCalcolatriceRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DatiCalcolatriceRequest> get serializer =>
      _$DatiCalcolatriceRequestSerializer();
}

class _$DatiCalcolatriceRequestSerializer
    implements PrimitiveSerializer<DatiCalcolatriceRequest> {
  @override
  final Iterable<Type> types = const [
    DatiCalcolatriceRequest,
    _$DatiCalcolatriceRequest
  ];

  @override
  final String wireName = r'DatiCalcolatriceRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DatiCalcolatriceRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.importo != null) {
      yield r'importo';
      yield serializers.serialize(
        object.importo,
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
    if (object.valoreBene != null) {
      yield r'valoreBene';
      yield serializers.serialize(
        object.valoreBene,
        specifiedType: const FullType(num),
      );
    }
    if (object.tabellaFinanziaria != null) {
      yield r'tabellaFinanziaria';
      yield serializers.serialize(
        object.tabellaFinanziaria,
        specifiedType: const FullType(String),
      );
    }
    if (object.commissioni != null) {
      yield r'commissioni';
      yield serializers.serialize(
        object.commissioni,
        specifiedType: const FullType(num),
      );
    }
    if (object.collegatoCorto != null) {
      yield r'collegatoCorto';
      yield serializers.serialize(
        object.collegatoCorto,
        specifiedType: const FullType(int),
      );
    }
    if (object.servizioCpi != null) {
      yield r'servizioCpi';
      yield serializers.serialize(
        object.servizioCpi,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DatiCalcolatriceRequest object, {
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
    required DatiCalcolatriceRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'importo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.importo = valueDes;
          break;
        case r'prodotto':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.prodotto = valueDes;
          break;
        case r'valoreBene':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.valoreBene = valueDes;
          break;
        case r'tabellaFinanziaria':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.tabellaFinanziaria = valueDes;
          break;
        case r'commissioni':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.commissioni = valueDes;
          break;
        case r'collegatoCorto':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.collegatoCorto = valueDes;
          break;
        case r'servizioCpi':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.servizioCpi = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DatiCalcolatriceRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DatiCalcolatriceRequestBuilder();
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
