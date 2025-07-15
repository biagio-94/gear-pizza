//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'preventivi_get_destinazione_bene.g.dart';

/// PreventiviGetDestinazioneBene
///
/// Properties:
/// * [bene]
/// * [codiceProdotto]
/// * [descrizioneBene]
@BuiltValue()
abstract class PreventiviGetDestinazioneBene
    implements
        Built<PreventiviGetDestinazioneBene,
            PreventiviGetDestinazioneBeneBuilder> {
  @BuiltValueField(wireName: r'bene')
  String? get bene;

  @BuiltValueField(wireName: r'codiceProdotto')
  String? get codiceProdotto;

  @BuiltValueField(wireName: r'descrizioneBene')
  String? get descrizioneBene;

  PreventiviGetDestinazioneBene._();

  factory PreventiviGetDestinazioneBene(
          [void Function(PreventiviGetDestinazioneBeneBuilder b) updates]) =
      _$PreventiviGetDestinazioneBene;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PreventiviGetDestinazioneBeneBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PreventiviGetDestinazioneBene> get serializer =>
      _$PreventiviGetDestinazioneBeneSerializer();
}

class _$PreventiviGetDestinazioneBeneSerializer
    implements PrimitiveSerializer<PreventiviGetDestinazioneBene> {
  @override
  final Iterable<Type> types = const [
    PreventiviGetDestinazioneBene,
    _$PreventiviGetDestinazioneBene
  ];

  @override
  final String wireName = r'PreventiviGetDestinazioneBene';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PreventiviGetDestinazioneBene object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.bene != null) {
      yield r'bene';
      yield serializers.serialize(
        object.bene,
        specifiedType: const FullType(String),
      );
    }
    if (object.codiceProdotto != null) {
      yield r'codiceProdotto';
      yield serializers.serialize(
        object.codiceProdotto,
        specifiedType: const FullType(String),
      );
    }
    if (object.descrizioneBene != null) {
      yield r'descrizioneBene';
      yield serializers.serialize(
        object.descrizioneBene,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PreventiviGetDestinazioneBene object, {
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
    required PreventiviGetDestinazioneBeneBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'bene':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.bene = valueDes;
          break;
        case r'codiceProdotto':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.codiceProdotto = valueDes;
          break;
        case r'descrizioneBene':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.descrizioneBene = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PreventiviGetDestinazioneBene deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PreventiviGetDestinazioneBeneBuilder();
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
