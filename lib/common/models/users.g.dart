// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const UsersStatusEnum _$usersStatusEnum_active =
    const UsersStatusEnum._('active');
const UsersStatusEnum _$usersStatusEnum_invited =
    const UsersStatusEnum._('invited');
const UsersStatusEnum _$usersStatusEnum_draft =
    const UsersStatusEnum._('draft');
const UsersStatusEnum _$usersStatusEnum_suspended =
    const UsersStatusEnum._('suspended');
const UsersStatusEnum _$usersStatusEnum_deleted =
    const UsersStatusEnum._('deleted');

UsersStatusEnum _$usersStatusEnumValueOf(String name) {
  switch (name) {
    case 'active':
      return _$usersStatusEnum_active;
    case 'invited':
      return _$usersStatusEnum_invited;
    case 'draft':
      return _$usersStatusEnum_draft;
    case 'suspended':
      return _$usersStatusEnum_suspended;
    case 'deleted':
      return _$usersStatusEnum_deleted;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<UsersStatusEnum> _$usersStatusEnumValues =
    BuiltSet<UsersStatusEnum>(const <UsersStatusEnum>[
  _$usersStatusEnum_active,
  _$usersStatusEnum_invited,
  _$usersStatusEnum_draft,
  _$usersStatusEnum_suspended,
  _$usersStatusEnum_deleted,
]);

Serializer<UsersStatusEnum> _$usersStatusEnumSerializer =
    _$UsersStatusEnumSerializer();

class _$UsersStatusEnumSerializer
    implements PrimitiveSerializer<UsersStatusEnum> {
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
  final Iterable<Type> types = const <Type>[UsersStatusEnum];
  @override
  final String wireName = 'UsersStatusEnum';

  @override
  Object serialize(Serializers serializers, UsersStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  UsersStatusEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      UsersStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$Users extends Users {
  @override
  final String? id;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? email;
  @override
  final String? password;
  @override
  final String? location;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final BuiltList<String>? tags;
  @override
  final UsersAvatar? avatar;
  @override
  final String? language;
  @override
  final String? tfaSecret;
  @override
  final UsersStatusEnum? status;
  @override
  final UsersRole? role;
  @override
  final String? lastPage;
  @override
  final String? appearance;
  @override
  final String? themeDark;
  @override
  final String? themeLight;

  factory _$Users([void Function(UsersBuilder)? updates]) =>
      (UsersBuilder()..update(updates))._build();

  _$Users._(
      {this.id,
      this.firstName,
      this.lastName,
      this.email,
      this.password,
      this.location,
      this.title,
      this.description,
      this.tags,
      this.avatar,
      this.language,
      this.tfaSecret,
      this.status,
      this.role,
      this.lastPage,
      this.appearance,
      this.themeDark,
      this.themeLight})
      : super._();
  @override
  Users rebuild(void Function(UsersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsersBuilder toBuilder() => UsersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Users &&
        id == other.id &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        email == other.email &&
        password == other.password &&
        location == other.location &&
        title == other.title &&
        description == other.description &&
        tags == other.tags &&
        avatar == other.avatar &&
        language == other.language &&
        tfaSecret == other.tfaSecret &&
        status == other.status &&
        role == other.role &&
        lastPage == other.lastPage &&
        appearance == other.appearance &&
        themeDark == other.themeDark &&
        themeLight == other.themeLight;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, location.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, avatar.hashCode);
    _$hash = $jc(_$hash, language.hashCode);
    _$hash = $jc(_$hash, tfaSecret.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jc(_$hash, lastPage.hashCode);
    _$hash = $jc(_$hash, appearance.hashCode);
    _$hash = $jc(_$hash, themeDark.hashCode);
    _$hash = $jc(_$hash, themeLight.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Users')
          ..add('id', id)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('email', email)
          ..add('password', password)
          ..add('location', location)
          ..add('title', title)
          ..add('description', description)
          ..add('tags', tags)
          ..add('avatar', avatar)
          ..add('language', language)
          ..add('tfaSecret', tfaSecret)
          ..add('status', status)
          ..add('role', role)
          ..add('lastPage', lastPage)
          ..add('appearance', appearance)
          ..add('themeDark', themeDark)
          ..add('themeLight', themeLight))
        .toString();
  }
}

class UsersBuilder implements Builder<Users, UsersBuilder> {
  _$Users? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _location;
  String? get location => _$this._location;
  set location(String? location) => _$this._location = location;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  ListBuilder<String>? _tags;
  ListBuilder<String> get tags => _$this._tags ??= ListBuilder<String>();
  set tags(ListBuilder<String>? tags) => _$this._tags = tags;

  UsersAvatarBuilder? _avatar;
  UsersAvatarBuilder get avatar => _$this._avatar ??= UsersAvatarBuilder();
  set avatar(UsersAvatarBuilder? avatar) => _$this._avatar = avatar;

  String? _language;
  String? get language => _$this._language;
  set language(String? language) => _$this._language = language;

  String? _tfaSecret;
  String? get tfaSecret => _$this._tfaSecret;
  set tfaSecret(String? tfaSecret) => _$this._tfaSecret = tfaSecret;

  UsersStatusEnum? _status;
  UsersStatusEnum? get status => _$this._status;
  set status(UsersStatusEnum? status) => _$this._status = status;

  UsersRoleBuilder? _role;
  UsersRoleBuilder get role => _$this._role ??= UsersRoleBuilder();
  set role(UsersRoleBuilder? role) => _$this._role = role;

  String? _lastPage;
  String? get lastPage => _$this._lastPage;
  set lastPage(String? lastPage) => _$this._lastPage = lastPage;

  String? _appearance;
  String? get appearance => _$this._appearance;
  set appearance(String? appearance) => _$this._appearance = appearance;

  String? _themeDark;
  String? get themeDark => _$this._themeDark;
  set themeDark(String? themeDark) => _$this._themeDark = themeDark;

  String? _themeLight;
  String? get themeLight => _$this._themeLight;
  set themeLight(String? themeLight) => _$this._themeLight = themeLight;

  UsersBuilder() {
    Users._defaults(this);
  }

  UsersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _email = $v.email;
      _password = $v.password;
      _location = $v.location;
      _title = $v.title;
      _description = $v.description;
      _tags = $v.tags?.toBuilder();
      _avatar = $v.avatar?.toBuilder();
      _language = $v.language;
      _tfaSecret = $v.tfaSecret;
      _status = $v.status;
      _role = $v.role?.toBuilder();
      _lastPage = $v.lastPage;
      _appearance = $v.appearance;
      _themeDark = $v.themeDark;
      _themeLight = $v.themeLight;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Users other) {
    _$v = other as _$Users;
  }

  @override
  void update(void Function(UsersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Users build() => _build();

  _$Users _build() {
    _$Users _$result;
    try {
      _$result = _$v ??
          _$Users._(
            id: id,
            firstName: firstName,
            lastName: lastName,
            email: email,
            password: password,
            location: location,
            title: title,
            description: description,
            tags: _tags?.build(),
            avatar: _avatar?.build(),
            language: language,
            tfaSecret: tfaSecret,
            status: status,
            role: _role?.build(),
            lastPage: lastPage,
            appearance: appearance,
            themeDark: themeDark,
            themeLight: themeLight,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
        _$failedField = 'avatar';
        _avatar?.build();

        _$failedField = 'role';
        _role?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(r'Users', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
