//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'settings_public_background.g.dart';

/// The background of the project.
///
/// Properties:
/// * [id]
/// * [type]
@BuiltValue()
abstract class SettingsPublicBackground
    implements
        Built<SettingsPublicBackground, SettingsPublicBackgroundBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'type')
  String? get type;

  SettingsPublicBackground._();

  factory SettingsPublicBackground(
          [void updates(SettingsPublicBackgroundBuilder b)]) =
      _$SettingsPublicBackground;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SettingsPublicBackgroundBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SettingsPublicBackground> get serializer =>
      _$SettingsPublicBackgroundSerializer();
}

class _$SettingsPublicBackgroundSerializer
    implements PrimitiveSerializer<SettingsPublicBackground> {
  @override
  final Iterable<Type> types = const [
    SettingsPublicBackground,
    _$SettingsPublicBackground
  ];

  @override
  final String wireName = r'SettingsPublicBackground';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SettingsPublicBackground object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SettingsPublicBackground object, {
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
    required SettingsPublicBackgroundBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SettingsPublicBackground deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SettingsPublicBackgroundBuilder();
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
