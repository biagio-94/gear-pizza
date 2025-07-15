//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:gearpizza/common/models/roles_parent.dart';
import 'package:built_collection/built_collection.dart';
import 'package:gearpizza/common/models/roles_children_inner.dart';
import 'package:gearpizza/common/models/roles_users_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'roles.g.dart';

/// Roles
///
/// Properties:
/// * [id] - Unique identifier for the role.
/// * [name] - Name of the role.
/// * [icon] - The role's icon.
/// * [description] - Description of the role.
/// * [parent]
/// * [children] - $t:field_options.directus_roles.children_note
/// * [policies]
/// * [users]
@BuiltValue()
abstract class Roles implements Built<Roles, RolesBuilder> {
  /// Unique identifier for the role.
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// Name of the role.
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// The role's icon.
  @BuiltValueField(wireName: r'icon')
  String? get icon;

  /// Description of the role.
  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'parent')
  RolesParent? get parent;

  /// $t:field_options.directus_roles.children_note
  @BuiltValueField(wireName: r'children')
  BuiltList<RolesChildrenInner>? get children;

  @BuiltValueField(wireName: r'policies')
  String? get policies;

  @BuiltValueField(wireName: r'users')
  BuiltList<RolesUsersInner>? get users;

  Roles._();

  factory Roles([void updates(RolesBuilder b)]) = _$Roles;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RolesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Roles> get serializer => _$RolesSerializer();
}

class _$RolesSerializer implements PrimitiveSerializer<Roles> {
  @override
  final Iterable<Type> types = const [Roles, _$Roles];

  @override
  final String wireName = r'Roles';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Roles object, {
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
    if (object.icon != null) {
      yield r'icon';
      yield serializers.serialize(
        object.icon,
        specifiedType: const FullType(String),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.parent != null) {
      yield r'parent';
      yield serializers.serialize(
        object.parent,
        specifiedType: const FullType.nullable(RolesParent),
      );
    }
    if (object.children != null) {
      yield r'children';
      yield serializers.serialize(
        object.children,
        specifiedType:
            const FullType.nullable(BuiltList, [FullType(RolesChildrenInner)]),
      );
    }
    if (object.policies != null) {
      yield r'policies';
      yield serializers.serialize(
        object.policies,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.users != null) {
      yield r'users';
      yield serializers.serialize(
        object.users,
        specifiedType:
            const FullType.nullable(BuiltList, [FullType(RolesUsersInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Roles object, {
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
    required RolesBuilder result,
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
        case r'icon':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.icon = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'parent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(RolesParent),
          ) as RolesParent?;
          if (valueDes == null) continue;
          result.parent.replace(valueDes);
          break;
        case r'children':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(RolesChildrenInner)]),
          ) as BuiltList<RolesChildrenInner>?;
          if (valueDes == null) continue;
          result.children.replace(valueDes);
          break;
        case r'policies':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.policies = valueDes;
          break;
        case r'users':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(RolesUsersInner)]),
          ) as BuiltList<RolesUsersInner>?;
          if (valueDes == null) continue;
          result.users.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Roles deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RolesBuilder();
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
