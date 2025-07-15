// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ActivityActionEnum _$activityActionEnum_create =
    const ActivityActionEnum._('create');
const ActivityActionEnum _$activityActionEnum_update =
    const ActivityActionEnum._('update');
const ActivityActionEnum _$activityActionEnum_delete =
    const ActivityActionEnum._('delete');
const ActivityActionEnum _$activityActionEnum_login =
    const ActivityActionEnum._('login');

ActivityActionEnum _$activityActionEnumValueOf(String name) {
  switch (name) {
    case 'create':
      return _$activityActionEnum_create;
    case 'update':
      return _$activityActionEnum_update;
    case 'delete':
      return _$activityActionEnum_delete;
    case 'login':
      return _$activityActionEnum_login;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ActivityActionEnum> _$activityActionEnumValues =
    BuiltSet<ActivityActionEnum>(const <ActivityActionEnum>[
  _$activityActionEnum_create,
  _$activityActionEnum_update,
  _$activityActionEnum_delete,
  _$activityActionEnum_login,
]);

Serializer<ActivityActionEnum> _$activityActionEnumSerializer =
    _$ActivityActionEnumSerializer();

class _$ActivityActionEnumSerializer
    implements PrimitiveSerializer<ActivityActionEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'create': 'create',
    'update': 'update',
    'delete': 'delete',
    'login': 'login',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'create': 'create',
    'update': 'update',
    'delete': 'delete',
    'login': 'login',
  };

  @override
  final Iterable<Type> types = const <Type>[ActivityActionEnum];
  @override
  final String wireName = 'ActivityActionEnum';

  @override
  Object serialize(Serializers serializers, ActivityActionEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ActivityActionEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ActivityActionEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$Activity extends Activity {
  @override
  final int? id;
  @override
  final ActivityActionEnum? action;
  @override
  final ActivityUser? user;
  @override
  final DateTime? timestamp;
  @override
  final String? ip;
  @override
  final String? userAgent;
  @override
  final ActivityCollection? collection;
  @override
  final String? item;
  @override
  final String? comment;
  @override
  final String? origin;
  @override
  final String? revisions;

  factory _$Activity([void Function(ActivityBuilder)? updates]) =>
      (ActivityBuilder()..update(updates))._build();

  _$Activity._(
      {this.id,
      this.action,
      this.user,
      this.timestamp,
      this.ip,
      this.userAgent,
      this.collection,
      this.item,
      this.comment,
      this.origin,
      this.revisions})
      : super._();
  @override
  Activity rebuild(void Function(ActivityBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ActivityBuilder toBuilder() => ActivityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Activity &&
        id == other.id &&
        action == other.action &&
        user == other.user &&
        timestamp == other.timestamp &&
        ip == other.ip &&
        userAgent == other.userAgent &&
        collection == other.collection &&
        item == other.item &&
        comment == other.comment &&
        origin == other.origin &&
        revisions == other.revisions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, action.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jc(_$hash, timestamp.hashCode);
    _$hash = $jc(_$hash, ip.hashCode);
    _$hash = $jc(_$hash, userAgent.hashCode);
    _$hash = $jc(_$hash, collection.hashCode);
    _$hash = $jc(_$hash, item.hashCode);
    _$hash = $jc(_$hash, comment.hashCode);
    _$hash = $jc(_$hash, origin.hashCode);
    _$hash = $jc(_$hash, revisions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Activity')
          ..add('id', id)
          ..add('action', action)
          ..add('user', user)
          ..add('timestamp', timestamp)
          ..add('ip', ip)
          ..add('userAgent', userAgent)
          ..add('collection', collection)
          ..add('item', item)
          ..add('comment', comment)
          ..add('origin', origin)
          ..add('revisions', revisions))
        .toString();
  }
}

class ActivityBuilder implements Builder<Activity, ActivityBuilder> {
  _$Activity? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  ActivityActionEnum? _action;
  ActivityActionEnum? get action => _$this._action;
  set action(ActivityActionEnum? action) => _$this._action = action;

  ActivityUserBuilder? _user;
  ActivityUserBuilder get user => _$this._user ??= ActivityUserBuilder();
  set user(ActivityUserBuilder? user) => _$this._user = user;

  DateTime? _timestamp;
  DateTime? get timestamp => _$this._timestamp;
  set timestamp(DateTime? timestamp) => _$this._timestamp = timestamp;

  String? _ip;
  String? get ip => _$this._ip;
  set ip(String? ip) => _$this._ip = ip;

  String? _userAgent;
  String? get userAgent => _$this._userAgent;
  set userAgent(String? userAgent) => _$this._userAgent = userAgent;

  ActivityCollectionBuilder? _collection;
  ActivityCollectionBuilder get collection =>
      _$this._collection ??= ActivityCollectionBuilder();
  set collection(ActivityCollectionBuilder? collection) =>
      _$this._collection = collection;

  String? _item;
  String? get item => _$this._item;
  set item(String? item) => _$this._item = item;

  String? _comment;
  String? get comment => _$this._comment;
  set comment(String? comment) => _$this._comment = comment;

  String? _origin;
  String? get origin => _$this._origin;
  set origin(String? origin) => _$this._origin = origin;

  String? _revisions;
  String? get revisions => _$this._revisions;
  set revisions(String? revisions) => _$this._revisions = revisions;

  ActivityBuilder() {
    Activity._defaults(this);
  }

  ActivityBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _action = $v.action;
      _user = $v.user?.toBuilder();
      _timestamp = $v.timestamp;
      _ip = $v.ip;
      _userAgent = $v.userAgent;
      _collection = $v.collection?.toBuilder();
      _item = $v.item;
      _comment = $v.comment;
      _origin = $v.origin;
      _revisions = $v.revisions;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Activity other) {
    _$v = other as _$Activity;
  }

  @override
  void update(void Function(ActivityBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Activity build() => _build();

  _$Activity _build() {
    _$Activity _$result;
    try {
      _$result = _$v ??
          _$Activity._(
            id: id,
            action: action,
            user: _user?.build(),
            timestamp: timestamp,
            ip: ip,
            userAgent: userAgent,
            collection: _collection?.build(),
            item: item,
            comment: comment,
            origin: origin,
            revisions: revisions,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();

        _$failedField = 'collection';
        _collection?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'Activity', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
