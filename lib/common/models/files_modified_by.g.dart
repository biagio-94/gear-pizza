// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'files_modified_by.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const FilesModifiedByStatusEnum _$filesModifiedByStatusEnum_active =
    const FilesModifiedByStatusEnum._('active');
const FilesModifiedByStatusEnum _$filesModifiedByStatusEnum_invited =
    const FilesModifiedByStatusEnum._('invited');
const FilesModifiedByStatusEnum _$filesModifiedByStatusEnum_draft =
    const FilesModifiedByStatusEnum._('draft');
const FilesModifiedByStatusEnum _$filesModifiedByStatusEnum_suspended =
    const FilesModifiedByStatusEnum._('suspended');
const FilesModifiedByStatusEnum _$filesModifiedByStatusEnum_deleted =
    const FilesModifiedByStatusEnum._('deleted');

FilesModifiedByStatusEnum _$filesModifiedByStatusEnumValueOf(String name) {
  switch (name) {
    case 'active':
      return _$filesModifiedByStatusEnum_active;
    case 'invited':
      return _$filesModifiedByStatusEnum_invited;
    case 'draft':
      return _$filesModifiedByStatusEnum_draft;
    case 'suspended':
      return _$filesModifiedByStatusEnum_suspended;
    case 'deleted':
      return _$filesModifiedByStatusEnum_deleted;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<FilesModifiedByStatusEnum> _$filesModifiedByStatusEnumValues =
    BuiltSet<FilesModifiedByStatusEnum>(const <FilesModifiedByStatusEnum>[
  _$filesModifiedByStatusEnum_active,
  _$filesModifiedByStatusEnum_invited,
  _$filesModifiedByStatusEnum_draft,
  _$filesModifiedByStatusEnum_suspended,
  _$filesModifiedByStatusEnum_deleted,
]);

Serializer<FilesModifiedByStatusEnum> _$filesModifiedByStatusEnumSerializer =
    _$FilesModifiedByStatusEnumSerializer();

class _$FilesModifiedByStatusEnumSerializer
    implements PrimitiveSerializer<FilesModifiedByStatusEnum> {
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
  final Iterable<Type> types = const <Type>[FilesModifiedByStatusEnum];
  @override
  final String wireName = 'FilesModifiedByStatusEnum';

  @override
  Object serialize(Serializers serializers, FilesModifiedByStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  FilesModifiedByStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      FilesModifiedByStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$FilesModifiedBy extends FilesModifiedBy {
  @override
  final OneOf oneOf;

  factory _$FilesModifiedBy([void Function(FilesModifiedByBuilder)? updates]) =>
      (FilesModifiedByBuilder()..update(updates))._build();

  _$FilesModifiedBy._({required this.oneOf}) : super._();
  @override
  FilesModifiedBy rebuild(void Function(FilesModifiedByBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FilesModifiedByBuilder toBuilder() => FilesModifiedByBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FilesModifiedBy && oneOf == other.oneOf;
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
    return (newBuiltValueToStringHelper(r'FilesModifiedBy')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class FilesModifiedByBuilder
    implements Builder<FilesModifiedBy, FilesModifiedByBuilder> {
  _$FilesModifiedBy? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  FilesModifiedByBuilder() {
    FilesModifiedBy._defaults(this);
  }

  FilesModifiedByBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FilesModifiedBy other) {
    _$v = other as _$FilesModifiedBy;
  }

  @override
  void update(void Function(FilesModifiedByBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FilesModifiedBy build() => _build();

  _$FilesModifiedBy _build() {
    final _$result = _$v ??
        _$FilesModifiedBy._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'FilesModifiedBy', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
