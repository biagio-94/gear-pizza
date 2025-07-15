//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'configurazione_prodotto.g.dart';

/// ConfigurazioneProdotto
///
/// Properties:
/// * [codiceProdotto]
/// * [descrizioneProdotto]
/// * [funzionalita]
/// * [tipoProdotto]
@BuiltValue()
abstract class ConfigurazioneProdotto
    implements Built<ConfigurazioneProdotto, ConfigurazioneProdottoBuilder> {
  @BuiltValueField(wireName: r'codiceProdotto')
  String? get codiceProdotto;

  @BuiltValueField(wireName: r'descrizioneProdotto')
  String? get descrizioneProdotto;

  @BuiltValueField(wireName: r'funzionalita')
  String? get funzionalita;

  @BuiltValueField(wireName: r'tipoProdotto')
  String? get tipoProdotto;

  ConfigurazioneProdotto._();

  factory ConfigurazioneProdotto(
          [void Function(ConfigurazioneProdottoBuilder b) updates]) =
      _$ConfigurazioneProdotto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConfigurazioneProdottoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConfigurazioneProdotto> get serializer =>
      _$ConfigurazioneProdottoSerializer();
}

class _$ConfigurazioneProdottoSerializer
    implements PrimitiveSerializer<ConfigurazioneProdotto> {
  @override
  final Iterable<Type> types = const [
    ConfigurazioneProdotto,
    _$ConfigurazioneProdotto
  ];

  @override
  final String wireName = r'ConfigurazioneProdotto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConfigurazioneProdotto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.codiceProdotto != null) {
      yield r'codiceProdotto';
      yield serializers.serialize(
        object.codiceProdotto,
        specifiedType: const FullType(String),
      );
    }
    if (object.descrizioneProdotto != null) {
      yield r'descrizioneProdotto';
      yield serializers.serialize(
        object.descrizioneProdotto,
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
    if (object.tipoProdotto != null) {
      yield r'tipoProdotto';
      yield serializers.serialize(
        object.tipoProdotto,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ConfigurazioneProdotto object, {
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
    required ConfigurazioneProdottoBuilder result,
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
        case r'descrizioneProdotto':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.descrizioneProdotto = valueDes;
          break;
        case r'funzionalita':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.funzionalita = valueDes;
          break;
        case r'tipoProdotto':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.tipoProdotto = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ConfigurazioneProdotto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConfigurazioneProdottoBuilder();
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
