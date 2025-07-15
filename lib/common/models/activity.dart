//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:gearpizza/common/models/activity_collection.dart';
import 'package:gearpizza/common/models/activity_user.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'activity.g.dart';

/// Activity
///
/// Properties:
/// * [id] - Unique identifier for the object.
/// * [action] - Action that was performed.
/// * [user]
/// * [timestamp] - When the action happened.
/// * [ip]
/// * [userAgent] - User agent string of the browser the user used when the action took place.
/// * [collection]
/// * [item] - Unique identifier for the item the action applied to. This is always a string, even for integer primary keys.
/// * [comment] - User comment. This will store the comments that show up in the right sidebar of the item edit page in the admin app.
/// * [origin] - Origin of the request when the action took place.
/// * [revisions]
@BuiltValue()
abstract class Activity implements Built<Activity, ActivityBuilder> {
  /// Unique identifier for the object.
  @BuiltValueField(wireName: r'id')
  int? get id;

  /// Action that was performed.
  @BuiltValueField(wireName: r'action')
  ActivityActionEnum? get action;
  // enum actionEnum {  create,  update,  delete,  login,  };

  @BuiltValueField(wireName: r'user')
  ActivityUser? get user;

  /// When the action happened.
  @BuiltValueField(wireName: r'timestamp')
  DateTime? get timestamp;

  @BuiltValueField(wireName: r'ip')
  String? get ip;

  /// User agent string of the browser the user used when the action took place.
  @BuiltValueField(wireName: r'user_agent')
  String? get userAgent;

  @BuiltValueField(wireName: r'collection')
  ActivityCollection? get collection;

  /// Unique identifier for the item the action applied to. This is always a string, even for integer primary keys.
  @BuiltValueField(wireName: r'item')
  String? get item;

  /// User comment. This will store the comments that show up in the right sidebar of the item edit page in the admin app.
  @BuiltValueField(wireName: r'comment')
  String? get comment;

  /// Origin of the request when the action took place.
  @BuiltValueField(wireName: r'origin')
  String? get origin;

  @BuiltValueField(wireName: r'revisions')
  String? get revisions;

  Activity._();

  factory Activity([void updates(ActivityBuilder b)]) = _$Activity;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ActivityBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Activity> get serializer => _$ActivitySerializer();
}

class _$ActivitySerializer implements PrimitiveSerializer<Activity> {
  @override
  final Iterable<Type> types = const [Activity, _$Activity];

  @override
  final String wireName = r'Activity';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Activity object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.action != null) {
      yield r'action';
      yield serializers.serialize(
        object.action,
        specifiedType: const FullType(ActivityActionEnum),
      );
    }
    if (object.user != null) {
      yield r'user';
      yield serializers.serialize(
        object.user,
        specifiedType: const FullType.nullable(ActivityUser),
      );
    }
    if (object.timestamp != null) {
      yield r'timestamp';
      yield serializers.serialize(
        object.timestamp,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.ip != null) {
      yield r'ip';
      yield serializers.serialize(
        object.ip,
        specifiedType: const FullType(String),
      );
    }
    if (object.userAgent != null) {
      yield r'user_agent';
      yield serializers.serialize(
        object.userAgent,
        specifiedType: const FullType(String),
      );
    }
    if (object.collection != null) {
      yield r'collection';
      yield serializers.serialize(
        object.collection,
        specifiedType: const FullType(ActivityCollection),
      );
    }
    if (object.item != null) {
      yield r'item';
      yield serializers.serialize(
        object.item,
        specifiedType: const FullType(String),
      );
    }
    if (object.comment != null) {
      yield r'comment';
      yield serializers.serialize(
        object.comment,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.origin != null) {
      yield r'origin';
      yield serializers.serialize(
        object.origin,
        specifiedType: const FullType(String),
      );
    }
    if (object.revisions != null) {
      yield r'revisions';
      yield serializers.serialize(
        object.revisions,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Activity object, {
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
    required ActivityBuilder result,
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
        case r'action':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ActivityActionEnum),
          ) as ActivityActionEnum;
          result.action = valueDes;
          break;
        case r'user':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ActivityUser),
          ) as ActivityUser?;
          if (valueDes == null) continue;
          result.user.replace(valueDes);
          break;
        case r'timestamp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.timestamp = valueDes;
          break;
        case r'ip':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ip = valueDes;
          break;
        case r'user_agent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.userAgent = valueDes;
          break;
        case r'collection':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ActivityCollection),
          ) as ActivityCollection;
          result.collection.replace(valueDes);
          break;
        case r'item':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.item = valueDes;
          break;
        case r'comment':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.comment = valueDes;
          break;
        case r'origin':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.origin = valueDes;
          break;
        case r'revisions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.revisions = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Activity deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ActivityBuilder();
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

class ActivityActionEnum extends EnumClass {
  /// Action that was performed.
  @BuiltValueEnumConst(wireName: r'create')
  static const ActivityActionEnum create = _$activityActionEnum_create;

  /// Action that was performed.
  @BuiltValueEnumConst(wireName: r'update')
  static const ActivityActionEnum update = _$activityActionEnum_update;

  /// Action that was performed.
  @BuiltValueEnumConst(wireName: r'delete')
  static const ActivityActionEnum delete = _$activityActionEnum_delete;

  /// Action that was performed.
  @BuiltValueEnumConst(wireName: r'login')
  static const ActivityActionEnum login = _$activityActionEnum_login;

  static Serializer<ActivityActionEnum> get serializer =>
      _$activityActionEnumSerializer;

  const ActivityActionEnum._(String name) : super(name);

  static BuiltSet<ActivityActionEnum> get values => _$activityActionEnumValues;
  static ActivityActionEnum valueOf(String name) =>
      _$activityActionEnumValueOf(name);
}
