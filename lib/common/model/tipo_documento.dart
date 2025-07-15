//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tipo_documento.g.dart';

/// TipoDocumento
///
/// Properties:
/// * [codiceDocumento]
/// * [descrizione]
/// * [codiceAntiriciclaggio]
@BuiltValue()
abstract class TipoDocumento
    implements Built<TipoDocumento, TipoDocumentoBuilder> {
  @BuiltValueField(wireName: r'codiceDocumento')
  String? get codiceDocumento;

  @BuiltValueField(wireName: r'descrizione')
  String? get descrizione;

  @BuiltValueField(wireName: r'codiceAntiriciclaggio')
  String? get codiceAntiriciclaggio;

  TipoDocumento._();

  factory TipoDocumento([void Function(TipoDocumentoBuilder b) updates]) =
      _$TipoDocumento;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TipoDocumentoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TipoDocumento> get serializer =>
      _$TipoDocumentoSerializer();
}

class _$TipoDocumentoSerializer implements PrimitiveSerializer<TipoDocumento> {
  @override
  final Iterable<Type> types = const [TipoDocumento, _$TipoDocumento];

  @override
  final String wireName = r'TipoDocumento';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TipoDocumento object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.codiceDocumento != null) {
      yield r'codiceDocumento';
      yield serializers.serialize(
        object.codiceDocumento,
        specifiedType: const FullType(String),
      );
    }
    if (object.descrizione != null) {
      yield r'descrizione';
      yield serializers.serialize(
        object.descrizione,
        specifiedType: const FullType(String),
      );
    }
    if (object.codiceAntiriciclaggio != null) {
      yield r'codiceAntiriciclaggio';
      yield serializers.serialize(
        object.codiceAntiriciclaggio,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TipoDocumento object, {
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
    required TipoDocumentoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'codiceDocumento':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.codiceDocumento = valueDes;
          break;
        case r'descrizione':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.descrizione = valueDes;
          break;
        case r'codiceAntiriciclaggio':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.codiceAntiriciclaggio = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TipoDocumento deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TipoDocumentoBuilder();
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
