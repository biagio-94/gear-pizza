// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'files_uploaded_by.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const FilesUploadedByStatusEnum _$filesUploadedByStatusEnum_active =
    const FilesUploadedByStatusEnum._('active');
const FilesUploadedByStatusEnum _$filesUploadedByStatusEnum_invited =
    const FilesUploadedByStatusEnum._('invited');
const FilesUploadedByStatusEnum _$filesUploadedByStatusEnum_draft =
    const FilesUploadedByStatusEnum._('draft');
const FilesUploadedByStatusEnum _$filesUploadedByStatusEnum_suspended =
    const FilesUploadedByStatusEnum._('suspended');
const FilesUploadedByStatusEnum _$filesUploadedByStatusEnum_deleted =
    const FilesUploadedByStatusEnum._('deleted');

FilesUploadedByStatusEnum _$filesUploadedByStatusEnumValueOf(String name) {
  switch (name) {
    case 'active':
      return _$filesUploadedByStatusEnum_active;
    case 'invited':
      return _$filesUploadedByStatusEnum_invited;
    case 'draft':
      return _$filesUploadedByStatusEnum_draft;
    case 'suspended':
      return _$filesUploadedByStatusEnum_suspended;
    case 'deleted':
      return _$filesUploadedByStatusEnum_deleted;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<FilesUploadedByStatusEnum> _$filesUploadedByStatusEnumValues =
    BuiltSet<FilesUploadedByStatusEnum>(const <FilesUploadedByStatusEnum>[
  _$filesUploadedByStatusEnum_active,
  _$filesUploadedByStatusEnum_invited,
  _$filesUploadedByStatusEnum_draft,
  _$filesUploadedByStatusEnum_suspended,
  _$filesUploadedByStatusEnum_deleted,
]);

Serializer<FilesUploadedByStatusEnum> _$filesUploadedByStatusEnumSerializer =
    _$FilesUploadedByStatusEnumSerializer();

class _$FilesUploadedByStatusEnumSerializer
    implements PrimitiveSerializer<FilesUploadedByStatusEnum> {
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
  final Iterable<Type> types = const <Type>[FilesUploadedByStatusEnum];
  @override
  final String wireName = 'FilesUploadedByStatusEnum';

  @override
  Object serialize(Serializers serializers, FilesUploadedByStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  FilesUploadedByStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      FilesUploadedByStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$FilesUploadedBy extends FilesUploadedBy {
  @override
  final OneOf oneOf;

  factory _$FilesUploadedBy([void Function(FilesUploadedByBuilder)? updates]) =>
      (FilesUploadedByBuilder()..update(updates))._build();

  _$FilesUploadedBy._({required this.oneOf}) : super._();
  @override
  FilesUploadedBy rebuild(void Function(FilesUploadedByBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FilesUploadedByBuilder toBuilder() => FilesUploadedByBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FilesUploadedBy && oneOf == other.oneOf;
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
    return (newBuiltValueToStringHelper(r'FilesUploadedBy')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class FilesUploadedByBuilder
    implements Builder<FilesUploadedBy, FilesUploadedByBuilder> {
  _$FilesUploadedBy? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  FilesUploadedByBuilder() {
    FilesUploadedBy._defaults(this);
  }

  FilesUploadedByBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FilesUploadedBy other) {
    _$v = other as _$FilesUploadedBy;
  }

  @override
  void update(void Function(FilesUploadedByBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FilesUploadedBy build() => _build();

  _$FilesUploadedBy _build() {
    final _$result = _$v ??
        _$FilesUploadedBy._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'FilesUploadedBy', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
