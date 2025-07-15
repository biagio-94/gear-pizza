//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:gearpizza/common/models/fields_group.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'fields.g.dart';

/// Fields
///
/// Properties:
/// * [id]
/// * [collection] - Unique name of the collection this field is in.
/// * [field] - Unique name of the field. Field name is unique within the collection.
/// * [special]
/// * [interface_]
/// * [options]
/// * [display]
/// * [displayOptions]
/// * [readonly]
/// * [hidden]
/// * [sort]
/// * [width]
/// * [translations]
/// * [note]
/// * [conditions]
/// * [required_]
/// * [group]
/// * [validation]
/// * [validationMessage]
@BuiltValue()
abstract class Fields implements Built<Fields, FieldsBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  /// Unique name of the collection this field is in.
  @BuiltValueField(wireName: r'collection')
  String? get collection;

  /// Unique name of the field. Field name is unique within the collection.
  @BuiltValueField(wireName: r'field')
  String? get field;

  @BuiltValueField(wireName: r'special')
  BuiltList<String>? get special;

  @BuiltValueField(wireName: r'interface')
  String? get interface_;

  @BuiltValueField(wireName: r'options')
  JsonObject? get options;

  @BuiltValueField(wireName: r'display')
  String? get display;

  @BuiltValueField(wireName: r'display_options')
  JsonObject? get displayOptions;

  @BuiltValueField(wireName: r'readonly')
  bool? get readonly;

  @BuiltValueField(wireName: r'hidden')
  bool? get hidden;

  @BuiltValueField(wireName: r'sort')
  int? get sort;

  @BuiltValueField(wireName: r'width')
  String? get width;

  @BuiltValueField(wireName: r'translations')
  JsonObject? get translations;

  @BuiltValueField(wireName: r'note')
  String? get note;

  @BuiltValueField(wireName: r'conditions')
  JsonObject? get conditions;

  @BuiltValueField(wireName: r'required')
  bool? get required_;

  @BuiltValueField(wireName: r'group')
  FieldsGroup? get group;

  @BuiltValueField(wireName: r'validation')
  JsonObject? get validation;

  @BuiltValueField(wireName: r'validation_message')
  String? get validationMessage;

  Fields._();

  factory Fields([void updates(FieldsBuilder b)]) = _$Fields;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FieldsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Fields> get serializer => _$FieldsSerializer();
}

class _$FieldsSerializer implements PrimitiveSerializer<Fields> {
  @override
  final Iterable<Type> types = const [Fields, _$Fields];

  @override
  final String wireName = r'Fields';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Fields object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.collection != null) {
      yield r'collection';
      yield serializers.serialize(
        object.collection,
        specifiedType: const FullType(String),
      );
    }
    if (object.field != null) {
      yield r'field';
      yield serializers.serialize(
        object.field,
        specifiedType: const FullType(String),
      );
    }
    if (object.special != null) {
      yield r'special';
      yield serializers.serialize(
        object.special,
        specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
      );
    }
    if (object.interface_ != null) {
      yield r'interface';
      yield serializers.serialize(
        object.interface_,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.options != null) {
      yield r'options';
      yield serializers.serialize(
        object.options,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.display != null) {
      yield r'display';
      yield serializers.serialize(
        object.display,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.displayOptions != null) {
      yield r'display_options';
      yield serializers.serialize(
        object.displayOptions,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.readonly != null) {
      yield r'readonly';
      yield serializers.serialize(
        object.readonly,
        specifiedType: const FullType(bool),
      );
    }
    if (object.hidden != null) {
      yield r'hidden';
      yield serializers.serialize(
        object.hidden,
        specifiedType: const FullType(bool),
      );
    }
    if (object.sort != null) {
      yield r'sort';
      yield serializers.serialize(
        object.sort,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.width != null) {
      yield r'width';
      yield serializers.serialize(
        object.width,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.translations != null) {
      yield r'translations';
      yield serializers.serialize(
        object.translations,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.note != null) {
      yield r'note';
      yield serializers.serialize(
        object.note,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.conditions != null) {
      yield r'conditions';
      yield serializers.serialize(
        object.conditions,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.required_ != null) {
      yield r'required';
      yield serializers.serialize(
        object.required_,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.group != null) {
      yield r'group';
      yield serializers.serialize(
        object.group,
        specifiedType: const FullType.nullable(FieldsGroup),
      );
    }
    if (object.validation != null) {
      yield r'validation';
      yield serializers.serialize(
        object.validation,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.validationMessage != null) {
      yield r'validation_message';
      yield serializers.serialize(
        object.validationMessage,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Fields object, {
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
    required FieldsBuilder result,
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
        case r'collection':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.collection = valueDes;
          break;
        case r'field':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.field = valueDes;
          break;
        case r'special':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.special.replace(valueDes);
          break;
        case r'interface':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.interface_ = valueDes;
          break;
        case r'options':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.options = valueDes;
          break;
        case r'display':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.display = valueDes;
          break;
        case r'display_options':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.displayOptions = valueDes;
          break;
        case r'readonly':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.readonly = valueDes;
          break;
        case r'hidden':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hidden = valueDes;
          break;
        case r'sort':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.sort = valueDes;
          break;
        case r'width':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.width = valueDes;
          break;
        case r'translations':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.translations = valueDes;
          break;
        case r'note':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.note = valueDes;
          break;
        case r'conditions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.conditions = valueDes;
          break;
        case r'required':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.required_ = valueDes;
          break;
        case r'group':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(FieldsGroup),
          ) as FieldsGroup?;
          if (valueDes == null) continue;
          result.group.replace(valueDes);
          break;
        case r'validation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.validation = valueDes;
          break;
        case r'validation_message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.validationMessage = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Fields deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FieldsBuilder();
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
