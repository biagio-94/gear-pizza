// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_user.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ActivityUserStatusEnum _$activityUserStatusEnum_active =
    const ActivityUserStatusEnum._('active');
const ActivityUserStatusEnum _$activityUserStatusEnum_invited =
    const ActivityUserStatusEnum._('invited');
const ActivityUserStatusEnum _$activityUserStatusEnum_draft =
    const ActivityUserStatusEnum._('draft');
const ActivityUserStatusEnum _$activityUserStatusEnum_suspended =
    const ActivityUserStatusEnum._('suspended');
const ActivityUserStatusEnum _$activityUserStatusEnum_deleted =
    const ActivityUserStatusEnum._('deleted');

ActivityUserStatusEnum _$activityUserStatusEnumValueOf(String name) {
  switch (name) {
    case 'active':
      return _$activityUserStatusEnum_active;
    case 'invited':
      return _$activityUserStatusEnum_invited;
    case 'draft':
      return _$activityUserStatusEnum_draft;
    case 'suspended':
      return _$activityUserStatusEnum_suspended;
    case 'deleted':
      return _$activityUserStatusEnum_deleted;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ActivityUserStatusEnum> _$activityUserStatusEnumValues =
    BuiltSet<ActivityUserStatusEnum>(const <ActivityUserStatusEnum>[
  _$activityUserStatusEnum_active,
  _$activityUserStatusEnum_invited,
  _$activityUserStatusEnum_draft,
  _$activityUserStatusEnum_suspended,
  _$activityUserStatusEnum_deleted,
]);

Serializer<ActivityUserStatusEnum> _$activityUserStatusEnumSerializer =
    _$ActivityUserStatusEnumSerializer();

class _$ActivityUserStatusEnumSerializer
    implements PrimitiveSerializer<ActivityUserStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'active': 'active',
    'invited': 'invited',
    'draft': 'draft',
    'suspended': 'suspended',
    'deleted': 'deleted',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'active': 'active',
    'invited': 'invited',
    'draft': 'draft',
    'suspended': 'suspended',
    'deleted': 'deleted',
  };

  @override
  final Iterable<Type> types = const <Type>[ActivityUserStatusEnum];
  @override
  final String wireName = 'ActivityUserStatusEnum';

  @override
  Object serialize(Serializers serializers, ActivityUserStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ActivityUserStatusEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ActivityUserStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ActivityUser extends ActivityUser {
  @override
  final OneOf oneOf;

  factory _$ActivityUser([void Function(ActivityUserBuilder)? updates]) =>
      (ActivityUserBuilder()..update(updates))._build();

  _$ActivityUser._({required this.oneOf}) : super._();
  @override
  ActivityUser rebuild(void Function(ActivityUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ActivityUserBuilder toBuilder() => ActivityUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ActivityUser && oneOf == other.oneOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, oneOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ActivityUser')..add('oneOf', oneOf))
        .toString();
  }
}

class ActivityUserBuilder
    implements Builder<ActivityUser, ActivityUserBuilder> {
  _$ActivityUser? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  ActivityUserBuilder() {
    ActivityUser._defaults(this);
  }

  ActivityUserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ActivityUser other) {
    _$v = other as _$ActivityUser;
  }

  @override
  void update(void Function(ActivityUserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ActivityUser build() => _build();

  _$ActivityUser _build() {
    final _$result = _$v ??
        _$ActivityUser._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'ActivityUser', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
