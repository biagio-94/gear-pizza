//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'dati_calcolatrice_response_item.g.dart';

/// DatiCalcolatriceResponseItem
///
/// Properties:
/// * [numeroRate]
/// * [importoRata]
/// * [tan]
/// * [taeg]
/// * [speseIcassiRata]
@BuiltValue()
abstract class DatiCalcolatriceResponseItem
    implements
        Built<DatiCalcolatriceResponseItem,
            DatiCalcolatriceResponseItemBuilder> {
  @BuiltValueField(wireName: r'numeroRate')
  int? get numeroRate;

  @BuiltValueField(wireName: r'importoRata')
  num? get importoRata;

  @BuiltValueField(wireName: r'tan')
  num? get tan;

  @BuiltValueField(wireName: r'taeg')
  num? get taeg;

  @BuiltValueField(wireName: r'speseIcassiRata')
  num? get speseIcassiRata;

  DatiCalcolatriceResponseItem._();

  factory DatiCalcolatriceResponseItem(
          [void Function(DatiCalcolatriceResponseItemBuilder b) updates]) =
      _$DatiCalcolatriceResponseItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DatiCalcolatriceResponseItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DatiCalcolatriceResponseItem> get serializer =>
      _$DatiCalcolatriceResponseItemSerializer();
}

class _$DatiCalcolatriceResponseItemSerializer
    implements PrimitiveSerializer<DatiCalcolatriceResponseItem> {
  @override
  final Iterable<Type> types = const [
    DatiCalcolatriceResponseItem,
    _$DatiCalcolatriceResponseItem
  ];

  @override
  final String wireName = r'DatiCalcolatriceResponseItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DatiCalcolatriceResponseItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.numeroRate != null) {
      yield r'numeroRate';
      yield serializers.serialize(
        object.numeroRate,
        specifiedType: const FullType(int),
      );
    }
    if (object.importoRata != null) {
      yield r'importoRata';
      yield serializers.serialize(
        object.importoRata,
        specifiedType: const FullType(num),
      );
    }
    if (object.tan != null) {
      yield r'tan';
      yield serializers.serialize(
        object.tan,
        specifiedType: const FullType(num),
      );
    }
    if (object.taeg != null) {
      yield r'taeg';
      yield serializers.serialize(
        object.taeg,
        specifiedType: const FullType(num),
      );
    }
    if (object.speseIcassiRata != null) {
      yield r'speseIcassiRata';
      yield serializers.serialize(
        object.speseIcassiRata,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DatiCalcolatriceResponseItem object, {
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
    required DatiCalcolatriceResponseItemBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'numeroRate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.numeroRate = valueDes;
          break;
        case r'importoRata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.importoRata = valueDes;
          break;
        case r'tan':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.tan = valueDes;
          break;
        case r'taeg':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.taeg = valueDes;
          break;
        case r'speseIcassiRata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.speseIcassiRata = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DatiCalcolatriceResponseItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DatiCalcolatriceResponseItemBuilder();
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
