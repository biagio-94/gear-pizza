// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'presets_user.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PresetsUserStatusEnum _$presetsUserStatusEnum_active =
    const PresetsUserStatusEnum._('active');
const PresetsUserStatusEnum _$presetsUserStatusEnum_invited =
    const PresetsUserStatusEnum._('invited');
const PresetsUserStatusEnum _$presetsUserStatusEnum_draft =
    const PresetsUserStatusEnum._('draft');
const PresetsUserStatusEnum _$presetsUserStatusEnum_suspended =
    const PresetsUserStatusEnum._('suspended');
const PresetsUserStatusEnum _$presetsUserStatusEnum_deleted =
    const PresetsUserStatusEnum._('deleted');

PresetsUserStatusEnum _$presetsUserStatusEnumValueOf(String name) {
  switch (name) {
    case 'active':
      return _$presetsUserStatusEnum_active;
    case 'invited':
      return _$presetsUserStatusEnum_invited;
    case 'draft':
      return _$presetsUserStatusEnum_draft;
    case 'suspended':
      return _$presetsUserStatusEnum_suspended;
    case 'deleted':
      return _$presetsUserStatusEnum_deleted;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PresetsUserStatusEnum> _$presetsUserStatusEnumValues =
    BuiltSet<PresetsUserStatusEnum>(const <PresetsUserStatusEnum>[
  _$presetsUserStatusEnum_active,
  _$presetsUserStatusEnum_invited,
  _$presetsUserStatusEnum_draft,
  _$presetsUserStatusEnum_suspended,
  _$presetsUserStatusEnum_deleted,
]);

Serializer<PresetsUserStatusEnum> _$presetsUserStatusEnumSerializer =
    _$PresetsUserStatusEnumSerializer();

class _$PresetsUserStatusEnumSerializer
    implements PrimitiveSerializer<PresetsUserStatusEnum> {
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
  final Iterable<Type> types = const <Type>[PresetsUserStatusEnum];
  @override
  final String wireName = 'PresetsUserStatusEnum';

  @override
  Object serialize(Serializers serializers, PresetsUserStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PresetsUserStatusEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PresetsUserStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$PresetsUser extends PresetsUser {
  @override
  final OneOf oneOf;

  factory _$PresetsUser([void Function(PresetsUserBuilder)? updates]) =>
      (PresetsUserBuilder()..update(updates))._build();

  _$PresetsUser._({required this.oneOf}) : super._();
  @override
  PresetsUser rebuild(void Function(PresetsUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PresetsUserBuilder toBuilder() => PresetsUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PresetsUser && oneOf == other.oneOf;
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
    return (newBuiltValueToStringHelper(r'PresetsUser')..add('oneOf', oneOf))
        .toString();
  }
}

class PresetsUserBuilder implements Builder<PresetsUser, PresetsUserBuilder> {
  _$PresetsUser? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  PresetsUserBuilder() {
    PresetsUser._defaults(this);
  }

  PresetsUserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PresetsUser other) {
    _$v = other as _$PresetsUser;
  }

  @override
  void update(void Function(PresetsUserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PresetsUser build() => _build();

  _$PresetsUser _build() {
    final _$result = _$v ??
        _$PresetsUser._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'PresetsUser', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
