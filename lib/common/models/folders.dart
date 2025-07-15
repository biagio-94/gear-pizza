//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:gearpizza/common/models/folders_parent.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'folders.g.dart';

/// Folders
///
/// Properties:
/// * [id] - Unique identifier for the folder.
/// * [name] - Name of the folder.
/// * [parent]
@BuiltValue()
abstract class Folders implements Built<Folders, FoldersBuilder> {
  /// Unique identifier for the folder.
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// Name of the folder.
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'parent')
  FoldersParent? get parent;

  Folders._();

  factory Folders([void updates(FoldersBuilder b)]) = _$Folders;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FoldersBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Folders> get serializer => _$FoldersSerializer();
}

class _$FoldersSerializer implements PrimitiveSerializer<Folders> {
  @override
  final Iterable<Type> types = const [Folders, _$Folders];

  @override
  final String wireName = r'Folders';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Folders object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
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
    if (object.parent != null) {
      yield r'parent';
      yield serializers.serialize(
        object.parent,
        specifiedType: const FullType.nullable(FoldersParent),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Folders object, {
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
    required FoldersBuilder result,
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
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'parent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(FoldersParent),
          ) as FoldersParent?;
          if (valueDes == null) continue;
          result.parent.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Folders deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FoldersBuilder();
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
