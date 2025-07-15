// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'roles_users_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RolesUsersInnerStatusEnum _$rolesUsersInnerStatusEnum_active =
    const RolesUsersInnerStatusEnum._('active');
const RolesUsersInnerStatusEnum _$rolesUsersInnerStatusEnum_invited =
    const RolesUsersInnerStatusEnum._('invited');
const RolesUsersInnerStatusEnum _$rolesUsersInnerStatusEnum_draft =
    const RolesUsersInnerStatusEnum._('draft');
const RolesUsersInnerStatusEnum _$rolesUsersInnerStatusEnum_suspended =
    const RolesUsersInnerStatusEnum._('suspended');
const RolesUsersInnerStatusEnum _$rolesUsersInnerStatusEnum_deleted =
    const RolesUsersInnerStatusEnum._('deleted');

RolesUsersInnerStatusEnum _$rolesUsersInnerStatusEnumValueOf(String name) {
  switch (name) {
    case 'active':
      return _$rolesUsersInnerStatusEnum_active;
    case 'invited':
      return _$rolesUsersInnerStatusEnum_invited;
    case 'draft':
      return _$rolesUsersInnerStatusEnum_draft;
    case 'suspended':
      return _$rolesUsersInnerStatusEnum_suspended;
    case 'deleted':
      return _$rolesUsersInnerStatusEnum_deleted;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<RolesUsersInnerStatusEnum> _$rolesUsersInnerStatusEnumValues =
    BuiltSet<RolesUsersInnerStatusEnum>(const <RolesUsersInnerStatusEnum>[
  _$rolesUsersInnerStatusEnum_active,
  _$rolesUsersInnerStatusEnum_invited,
  _$rolesUsersInnerStatusEnum_draft,
  _$rolesUsersInnerStatusEnum_suspended,
  _$rolesUsersInnerStatusEnum_deleted,
]);

Serializer<RolesUsersInnerStatusEnum> _$rolesUsersInnerStatusEnumSerializer =
    _$RolesUsersInnerStatusEnumSerializer();

class _$RolesUsersInnerStatusEnumSerializer
    implements PrimitiveSerializer<RolesUsersInnerStatusEnum> {
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
  final Iterable<Type> types = const <Type>[RolesUsersInnerStatusEnum];
  @override
  final String wireName = 'RolesUsersInnerStatusEnum';

  @override
  Object serialize(Serializers serializers, RolesUsersInnerStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  RolesUsersInnerStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      RolesUsersInnerStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$RolesUsersInner extends RolesUsersInner {
  @override
  final OneOf oneOf;

  factory _$RolesUsersInner([void Function(RolesUsersInnerBuilder)? updates]) =>
      (RolesUsersInnerBuilder()..update(updates))._build();

  _$RolesUsersInner._({required this.oneOf}) : super._();
  @override
  RolesUsersInner rebuild(void Function(RolesUsersInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RolesUsersInnerBuilder toBuilder() => RolesUsersInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RolesUsersInner && oneOf == other.oneOf;
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
    return (newBuiltValueToStringHelper(r'RolesUsersInner')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class RolesUsersInnerBuilder
    implements Builder<RolesUsersInner, RolesUsersInnerBuilder> {
  _$RolesUsersInner? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  RolesUsersInnerBuilder() {
    RolesUsersInner._defaults(this);
  }

  RolesUsersInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RolesUsersInner other) {
    _$v = other as _$RolesUsersInner;
  }

  @override
  void update(void Function(RolesUsersInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RolesUsersInner build() => _build();

  _$RolesUsersInner _build() {
    final _$result = _$v ??
        _$RolesUsersInner._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'RolesUsersInner', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
