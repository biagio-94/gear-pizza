// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'roles.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Roles extends Roles {
  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? icon;
  @override
  final String? description;
  @override
  final RolesParent? parent;
  @override
  final BuiltList<RolesChildrenInner>? children;
  @override
  final String? policies;
  @override
  final BuiltList<RolesUsersInner>? users;

  factory _$Roles([void Function(RolesBuilder)? updates]) =>
      (RolesBuilder()..update(updates))._build();

  _$Roles._(
      {this.id,
      this.name,
      this.icon,
      this.description,
      this.parent,
      this.children,
      this.policies,
      this.users})
      : super._();
  @override
  Roles rebuild(void Function(RolesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RolesBuilder toBuilder() => RolesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Roles &&
        id == other.id &&
        name == other.name &&
        icon == other.icon &&
        description == other.description &&
        parent == other.parent &&
        children == other.children &&
        policies == other.policies &&
        users == other.users;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, icon.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, parent.hashCode);
    _$hash = $jc(_$hash, children.hashCode);
    _$hash = $jc(_$hash, policies.hashCode);
    _$hash = $jc(_$hash, users.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Roles')
          ..add('id', id)
          ..add('name', name)
          ..add('icon', icon)
          ..add('description', description)
          ..add('parent', parent)
          ..add('children', children)
          ..add('policies', policies)
          ..add('users', users))
        .toString();
  }
}

class RolesBuilder implements Builder<Roles, RolesBuilder> {
  _$Roles? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _icon;
  String? get icon => _$this._icon;
  set icon(String? icon) => _$this._icon = icon;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  RolesParentBuilder? _parent;
  RolesParentBuilder get parent => _$this._parent ??= RolesParentBuilder();
  set parent(RolesParentBuilder? parent) => _$this._parent = parent;

  ListBuilder<RolesChildrenInner>? _children;
  ListBuilder<RolesChildrenInner> get children =>
      _$this._children ??= ListBuilder<RolesChildrenInner>();
  set children(ListBuilder<RolesChildrenInner>? children) =>
      _$this._children = children;

  String? _policies;
  String? get policies => _$this._policies;
  set policies(String? policies) => _$this._policies = policies;

  ListBuilder<RolesUsersInner>? _users;
  ListBuilder<RolesUsersInner> get users =>
      _$this._users ??= ListBuilder<RolesUsersInner>();
  set users(ListBuilder<RolesUsersInner>? users) => _$this._users = users;

  RolesBuilder() {
    Roles._defaults(this);
  }

  RolesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _icon = $v.icon;
      _description = $v.description;
      _parent = $v.parent?.toBuilder();
      _children = $v.children?.toBuilder();
      _policies = $v.policies;
      _users = $v.users?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Roles other) {
    _$v = other as _$Roles;
  }

  @override
  void update(void Function(RolesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Roles build() => _build();

  _$Roles _build() {
    _$Roles _$result;
    try {
      _$result = _$v ??
          _$Roles._(
            id: id,
            name: name,
            icon: icon,
            description: description,
            parent: _parent?.build(),
            children: _children?.build(),
            policies: policies,
            users: _users?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'parent';
        _parent?.build();
        _$failedField = 'children';
        _children?.build();

        _$failedField = 'users';
        _users?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(r'Roles', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
