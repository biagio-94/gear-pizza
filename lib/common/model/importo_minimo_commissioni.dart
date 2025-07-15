//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'importo_minimo_commissioni.g.dart';

/// ImportoMinimoCommissioni
///
/// Properties:
/// * [importoMinimoCommissioni]
@BuiltValue()
abstract class ImportoMinimoCommissioni
    implements
        Built<ImportoMinimoCommissioni, ImportoMinimoCommissioniBuilder> {
  @BuiltValueField(wireName: r'importoMinimoCommissioni')
  num? get importoMinimoCommissioni;

  ImportoMinimoCommissioni._();

  factory ImportoMinimoCommissioni(
          [void Function(ImportoMinimoCommissioniBuilder b) updates]) =
      _$ImportoMinimoCommissioni;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ImportoMinimoCommissioniBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ImportoMinimoCommissioni> get serializer =>
      _$ImportoMinimoCommissioniSerializer();
}

class _$ImportoMinimoCommissioniSerializer
    implements PrimitiveSerializer<ImportoMinimoCommissioni> {
  @override
  final Iterable<Type> types = const [
    ImportoMinimoCommissioni,
    _$ImportoMinimoCommissioni
  ];

  @override
  final String wireName = r'ImportoMinimoCommissioni';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ImportoMinimoCommissioni object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.importoMinimoCommissioni != null) {
      yield r'importoMinimoCommissioni';
      yield serializers.serialize(
        object.importoMinimoCommissioni,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ImportoMinimoCommissioni object, {
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
    required ImportoMinimoCommissioniBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'importoMinimoCommissioni':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.importoMinimoCommissioni = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ImportoMinimoCommissioni deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ImportoMinimoCommissioniBuilder();
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
