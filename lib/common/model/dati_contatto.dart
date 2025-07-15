//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'dati_contatto.g.dart';

/// DatiContatto
///
/// Properties:
/// * [id] - ID del preventivo
/// * [emailCliente] - Email del cliente
/// * [telCliente] - Numero di telefono del cliente
/// * [emailCoobbligato] - Email del coobbligato
/// * [telCoobbligato] - Numero di telefono del coobbligato
@BuiltValue()
abstract class DatiContatto
    implements Built<DatiContatto, DatiContattoBuilder> {
  /// ID del preventivo
  @BuiltValueField(wireName: r'id')
  int? get id;

  /// Email del cliente
  @BuiltValueField(wireName: r'email_cliente')
  String? get emailCliente;

  /// Numero di telefono del cliente
  @BuiltValueField(wireName: r'tel_cliente')
  String? get telCliente;

  /// Email del coobbligato
  @BuiltValueField(wireName: r'email_coobbligato')
  String? get emailCoobbligato;

  /// Numero di telefono del coobbligato
  @BuiltValueField(wireName: r'tel_coobbligato')
  String? get telCoobbligato;

  DatiContatto._();

  factory DatiContatto([void Function(DatiContattoBuilder b) updates]) =
      _$DatiContatto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DatiContattoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DatiContatto> get serializer => _$DatiContattoSerializer();
}

class _$DatiContattoSerializer implements PrimitiveSerializer<DatiContatto> {
  @override
  final Iterable<Type> types = const [DatiContatto, _$DatiContatto];

  @override
  final String wireName = r'DatiContatto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DatiContatto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.emailCliente != null) {
      yield r'email_cliente';
      yield serializers.serialize(
        object.emailCliente,
        specifiedType: const FullType(String),
      );
    }
    if (object.telCliente != null) {
      yield r'tel_cliente';
      yield serializers.serialize(
        object.telCliente,
        specifiedType: const FullType(String),
      );
    }
    if (object.emailCoobbligato != null) {
      yield r'email_coobbligato';
      yield serializers.serialize(
        object.emailCoobbligato,
        specifiedType: const FullType(String),
      );
    }
    if (object.telCoobbligato != null) {
      yield r'tel_coobbligato';
      yield serializers.serialize(
        object.telCoobbligato,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DatiContatto object, {
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
    required DatiContattoBuilder result,
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
        case r'email_cliente':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.emailCliente = valueDes;
          break;
        case r'tel_cliente':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.telCliente = valueDes;
          break;
        case r'email_coobbligato':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.emailCoobbligato = valueDes;
          break;
        case r'tel_coobbligato':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.telCoobbligato = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DatiContatto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DatiContattoBuilder();
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
