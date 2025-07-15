//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'modello.g.dart';

/// Modello
///
/// Properties:
/// * [marca]
/// * [name]
/// * [descrizione]
/// * [tipo]
/// * [livelloRischio]
/// * [descrizioneAgg]
/// * [flagAutoMoto]
/// * [infocarModello]
/// * [modello]
@BuiltValue()
abstract class Modello implements Built<Modello, ModelloBuilder> {
  @BuiltValueField(wireName: r'marca')
  String? get marca;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'descrizione')
  String? get descrizione;

  @BuiltValueField(wireName: r'tipo')
  String? get tipo;

  @BuiltValueField(wireName: r'livelloRischio')
  String? get livelloRischio;

  @BuiltValueField(wireName: r'descrizioneAgg')
  String? get descrizioneAgg;

  @BuiltValueField(wireName: r'flagAutoMoto')
  String? get flagAutoMoto;

  @BuiltValueField(wireName: r'infocarModello')
  int? get infocarModello;

  @BuiltValueField(wireName: r'modello')
  String? get modello;

  Modello._();

  factory Modello([void Function(ModelloBuilder b) updates]) = _$Modello;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ModelloBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Modello> get serializer => _$ModelloSerializer();
}

class _$ModelloSerializer implements PrimitiveSerializer<Modello> {
  @override
  final Iterable<Type> types = const [Modello, _$Modello];

  @override
  final String wireName = r'Modello';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Modello object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.marca != null) {
      yield r'marca';
      yield serializers.serialize(
        object.marca,
        specifiedType: const FullType(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
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
    if (object.tipo != null) {
      yield r'tipo';
      yield serializers.serialize(
        object.tipo,
        specifiedType: const FullType(String),
      );
    }
    if (object.livelloRischio != null) {
      yield r'livelloRischio';
      yield serializers.serialize(
        object.livelloRischio,
        specifiedType: const FullType(String),
      );
    }
    if (object.descrizioneAgg != null) {
      yield r'descrizioneAgg';
      yield serializers.serialize(
        object.descrizioneAgg,
        specifiedType: const FullType(String),
      );
    }
    if (object.flagAutoMoto != null) {
      yield r'flagAutoMoto';
      yield serializers.serialize(
        object.flagAutoMoto,
        specifiedType: const FullType(String),
      );
    }
    if (object.infocarModello != null) {
      yield r'infocarModello';
      yield serializers.serialize(
        object.infocarModello,
        specifiedType: const FullType(int),
      );
    }
    if (object.modello != null) {
      yield r'modello';
      yield serializers.serialize(
        object.modello,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Modello object, {
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
    required ModelloBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'marca':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.marca = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'descrizione':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.descrizione = valueDes;
          break;
        case r'tipo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.tipo = valueDes;
          break;
        case r'livelloRischio':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.livelloRischio = valueDes;
          break;
        case r'descrizioneAgg':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.descrizioneAgg = valueDes;
          break;
        case r'flagAutoMoto':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.flagAutoMoto = valueDes;
          break;
        case r'infocarModello':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.infocarModello = valueDes;
          break;
        case r'modello':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.modello = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Modello deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModelloBuilder();
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
