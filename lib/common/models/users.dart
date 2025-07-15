//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:gearpizza/common/models/users_avatar.dart';
import 'package:gearpizza/common/models/users_role.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'users.g.dart';

/// Users
///
/// Properties:
/// * [id] - Unique identifier for the user.
/// * [firstName] - First name of the user.
/// * [lastName] - Last name of the user.
/// * [email] - Unique email address for the user.
/// * [password] - Password of the user.
/// * [location] - The user's location.
/// * [title] - The user's title.
/// * [description] - The user's description.
/// * [tags] - The user's tags.
/// * [avatar]
/// * [language] - The user's language used in Directus.
/// * [tfaSecret] - The 2FA secret string that's used to generate one time passwords.
/// * [status] - Status of the user.
/// * [role]
/// * [lastPage] - Last page that the user was on.
/// * [appearance]
/// * [themeDark]
/// * [themeLight]
@BuiltValue()
abstract class Users implements Built<Users, UsersBuilder> {
  /// Unique identifier for the user.
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// First name of the user.
  @BuiltValueField(wireName: r'first_name')
  String? get firstName;

  /// Last name of the user.
  @BuiltValueField(wireName: r'last_name')
  String? get lastName;

  /// Unique email address for the user.
  @BuiltValueField(wireName: r'email')
  String? get email;

  /// Password of the user.
  @BuiltValueField(wireName: r'password')
  String? get password;

  /// The user's location.
  @BuiltValueField(wireName: r'location')
  String? get location;

  /// The user's title.
  @BuiltValueField(wireName: r'title')
  String? get title;

  /// The user's description.
  @BuiltValueField(wireName: r'description')
  String? get description;

  /// The user's tags.
  @BuiltValueField(wireName: r'tags')
  BuiltList<String>? get tags;

  @BuiltValueField(wireName: r'avatar')
  UsersAvatar? get avatar;

  /// The user's language used in Directus.
  @BuiltValueField(wireName: r'language')
  String? get language;

  /// The 2FA secret string that's used to generate one time passwords.
  @BuiltValueField(wireName: r'tfa_secret')
  String? get tfaSecret;

  /// Status of the user.
  @BuiltValueField(wireName: r'status')
  UsersStatusEnum? get status;
  // enum statusEnum {  active,  invited,  draft,  suspended,  deleted,  };

  @BuiltValueField(wireName: r'role')
  UsersRole? get role;

  /// Last page that the user was on.
  @BuiltValueField(wireName: r'last_page')
  String? get lastPage;

  @BuiltValueField(wireName: r'appearance')
  String? get appearance;

  @BuiltValueField(wireName: r'theme_dark')
  String? get themeDark;

  @BuiltValueField(wireName: r'theme_light')
  String? get themeLight;

  Users._();

  factory Users([void updates(UsersBuilder b)]) = _$Users;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UsersBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Users> get serializer => _$UsersSerializer();
}

class _$UsersSerializer implements PrimitiveSerializer<Users> {
  @override
  final Iterable<Type> types = const [Users, _$Users];

  @override
  final String wireName = r'Users';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Users object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.firstName != null) {
      yield r'first_name';
      yield serializers.serialize(
        object.firstName,
        specifiedType: const FullType(String),
      );
    }
    if (object.lastName != null) {
      yield r'last_name';
      yield serializers.serialize(
        object.lastName,
        specifiedType: const FullType(String),
      );
    }
    if (object.email != null) {
      yield r'email';
      yield serializers.serialize(
        object.email,
        specifiedType: const FullType(String),
      );
    }
    if (object.password != null) {
      yield r'password';
      yield serializers.serialize(
        object.password,
        specifiedType: const FullType(String),
      );
    }
    if (object.location != null) {
      yield r'location';
      yield serializers.serialize(
        object.location,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.tags != null) {
      yield r'tags';
      yield serializers.serialize(
        object.tags,
        specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
      );
    }
    if (object.avatar != null) {
      yield r'avatar';
      yield serializers.serialize(
        object.avatar,
        specifiedType: const FullType.nullable(UsersAvatar),
      );
    }
    if (object.language != null) {
      yield r'language';
      yield serializers.serialize(
        object.language,
        specifiedType: const FullType(String),
      );
    }
    if (object.tfaSecret != null) {
      yield r'tfa_secret';
      yield serializers.serialize(
        object.tfaSecret,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(UsersStatusEnum),
      );
    }
    if (object.role != null) {
      yield r'role';
      yield serializers.serialize(
        object.role,
        specifiedType: const FullType(UsersRole),
      );
    }
    if (object.lastPage != null) {
      yield r'last_page';
      yield serializers.serialize(
        object.lastPage,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.appearance != null) {
      yield r'appearance';
      yield serializers.serialize(
        object.appearance,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.themeDark != null) {
      yield r'theme_dark';
      yield serializers.serialize(
        object.themeDark,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.themeLight != null) {
      yield r'theme_light';
      yield serializers.serialize(
        object.themeLight,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Users object, {
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
    required UsersBuilder result,
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
        case r'first_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.firstName = valueDes;
          break;
        case r'last_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.lastName = valueDes;
          break;
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        case r'password':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.password = valueDes;
          break;
        case r'location':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.location = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'tags':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.tags.replace(valueDes);
          break;
        case r'avatar':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(UsersAvatar),
          ) as UsersAvatar?;
          if (valueDes == null) continue;
          result.avatar.replace(valueDes);
          break;
        case r'language':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.language = valueDes;
          break;
        case r'tfa_secret':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.tfaSecret = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UsersStatusEnum),
          ) as UsersStatusEnum;
          result.status = valueDes;
          break;
        case r'role':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UsersRole),
          ) as UsersRole;
          result.role.replace(valueDes);
          break;
        case r'last_page':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.lastPage = valueDes;
          break;
        case r'appearance':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.appearance = valueDes;
          break;
        case r'theme_dark':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.themeDark = valueDes;
          break;
        case r'theme_light':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.themeLight = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Users deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UsersBuilder();
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

class UsersStatusEnum extends EnumClass {
  /// Status of the user.
  @BuiltValueEnumConst(wireName: r'active')
  static const UsersStatusEnum active = _$usersStatusEnum_active;

  /// Status of the user.
  @BuiltValueEnumConst(wireName: r'invited')
  static const UsersStatusEnum invited = _$usersStatusEnum_invited;

  /// Status of the user.
  @BuiltValueEnumConst(wireName: r'draft')
  static const UsersStatusEnum draft = _$usersStatusEnum_draft;

  /// Status of the user.
  @BuiltValueEnumConst(wireName: r'suspended')
  static const UsersStatusEnum suspended = _$usersStatusEnum_suspended;

  /// Status of the user.
  @BuiltValueEnumConst(wireName: r'deleted')
  static const UsersStatusEnum deleted = _$usersStatusEnum_deleted;

  static Serializer<UsersStatusEnum> get serializer =>
      _$usersStatusEnumSerializer;

  const UsersStatusEnum._(String name) : super(name);

  static BuiltSet<UsersStatusEnum> get values => _$usersStatusEnumValues;
  static UsersStatusEnum valueOf(String name) => _$usersStatusEnumValueOf(name);
}
