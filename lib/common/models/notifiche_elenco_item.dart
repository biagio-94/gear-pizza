//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'notifiche_elenco_item.g.dart';

/// NotificheElencoItem
///
/// Properties:
/// * [pushId]
/// * [keyId]
/// * [titolo]
/// * [testo]
/// * [dataInvio]
/// * [oraInvio]
/// * [dati]
@BuiltValue()
abstract class NotificheElencoItem
    implements Built<NotificheElencoItem, NotificheElencoItemBuilder> {
  @BuiltValueField(wireName: r'pushId')
  String? get pushId;

  @BuiltValueField(wireName: r'keyId')
  int? get keyId;

  @BuiltValueField(wireName: r'titolo')
  String? get titolo;

  @BuiltValueField(wireName: r'testo')
  String? get testo;

  @BuiltValueField(wireName: r'dataInvio')
  int? get dataInvio;

  @BuiltValueField(wireName: r'oraInvio')
  int? get oraInvio;

  @BuiltValueField(wireName: r'dati')
  String? get dati;

  NotificheElencoItem._();

  factory NotificheElencoItem(
          [void Function(NotificheElencoItemBuilder b) updates]) =
      _$NotificheElencoItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NotificheElencoItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NotificheElencoItem> get serializer =>
      _$NotificheElencoItemSerializer();
}

class _$NotificheElencoItemSerializer
    implements PrimitiveSerializer<NotificheElencoItem> {
  @override
  final Iterable<Type> types = const [
    NotificheElencoItem,
    _$NotificheElencoItem
  ];

  @override
  final String wireName = r'NotificheElencoItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NotificheElencoItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.pushId != null) {
      yield r'pushId';
      yield serializers.serialize(
        object.pushId,
        specifiedType: const FullType(String),
      );
    }
    if (object.keyId != null) {
      yield r'keyId';
      yield serializers.serialize(
        object.keyId,
        specifiedType: const FullType(int),
      );
    }
    if (object.titolo != null) {
      yield r'titolo';
      yield serializers.serialize(
        object.titolo,
        specifiedType: const FullType(String),
      );
    }
    if (object.testo != null) {
      yield r'testo';
      yield serializers.serialize(
        object.testo,
        specifiedType: const FullType(String),
      );
    }
    if (object.dataInvio != null) {
      yield r'dataInvio';
      yield serializers.serialize(
        object.dataInvio,
        specifiedType: const FullType(int),
      );
    }
    if (object.oraInvio != null) {
      yield r'oraInvio';
      yield serializers.serialize(
        object.oraInvio,
        specifiedType: const FullType(int),
      );
    }
    if (object.dati != null) {
      yield r'dati';
      yield serializers.serialize(
        object.dati,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NotificheElencoItem object, {
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
    required NotificheElencoItemBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'pushId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.pushId = valueDes;
          break;
        case r'keyId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.keyId = valueDes;
          break;
        case r'titolo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.titolo = valueDes;
          break;
        case r'testo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.testo = valueDes;
          break;
        case r'dataInvio':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.dataInvio = valueDes;
          break;
        case r'oraInvio':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.oraInvio = valueDes;
          break;
        case r'dati':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.dati = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NotificheElencoItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NotificheElencoItemBuilder();
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
