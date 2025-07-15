// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'relations.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Relations extends Relations {
  @override
  final int? id;
  @override
  final String? manyCollection;
  @override
  final String? manyField;
  @override
  final String? oneCollection;
  @override
  final String? oneField;
  @override
  final String? oneCollectionField;
  @override
  final BuiltList<String>? oneAllowedCollections;
  @override
  final String? junctionField;
  @override
  final String? sortField;
  @override
  final String? oneDeselectAction;

  factory _$Relations([void Function(RelationsBuilder)? updates]) =>
      (RelationsBuilder()..update(updates))._build();

  _$Relations._(
      {this.id,
      this.manyCollection,
      this.manyField,
      this.oneCollection,
      this.oneField,
      this.oneCollectionField,
      this.oneAllowedCollections,
      this.junctionField,
      this.sortField,
      this.oneDeselectAction})
      : super._();
  @override
  Relations rebuild(void Function(RelationsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RelationsBuilder toBuilder() => RelationsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Relations &&
        id == other.id &&
        manyCollection == other.manyCollection &&
        manyField == other.manyField &&
        oneCollection == other.oneCollection &&
        oneField == other.oneField &&
        oneCollectionField == other.oneCollectionField &&
        oneAllowedCollections == other.oneAllowedCollections &&
        junctionField == other.junctionField &&
        sortField == other.sortField &&
        oneDeselectAction == other.oneDeselectAction;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, manyCollection.hashCode);
    _$hash = $jc(_$hash, manyField.hashCode);
    _$hash = $jc(_$hash, oneCollection.hashCode);
    _$hash = $jc(_$hash, oneField.hashCode);
    _$hash = $jc(_$hash, oneCollectionField.hashCode);
    _$hash = $jc(_$hash, oneAllowedCollections.hashCode);
    _$hash = $jc(_$hash, junctionField.hashCode);
    _$hash = $jc(_$hash, sortField.hashCode);
    _$hash = $jc(_$hash, oneDeselectAction.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Relations')
          ..add('id', id)
          ..add('manyCollection', manyCollection)
          ..add('manyField', manyField)
          ..add('oneCollection', oneCollection)
          ..add('oneField', oneField)
          ..add('oneCollectionField', oneCollectionField)
          ..add('oneAllowedCollections', oneAllowedCollections)
          ..add('junctionField', junctionField)
          ..add('sortField', sortField)
          ..add('oneDeselectAction', oneDeselectAction))
        .toString();
  }
}

class RelationsBuilder implements Builder<Relations, RelationsBuilder> {
  _$Relations? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _manyCollection;
  String? get manyCollection => _$this._manyCollection;
  set manyCollection(String? manyCollection) =>
      _$this._manyCollection = manyCollection;

  String? _manyField;
  String? get manyField => _$this._manyField;
  set manyField(String? manyField) => _$this._manyField = manyField;

  String? _oneCollection;
  String? get oneCollection => _$this._oneCollection;
  set oneCollection(String? oneCollection) =>
      _$this._oneCollection = oneCollection;

  String? _oneField;
  String? get oneField => _$this._oneField;
  set oneField(String? oneField) => _$this._oneField = oneField;

  String? _oneCollectionField;
  String? get oneCollectionField => _$this._oneCollectionField;
  set oneCollectionField(String? oneCollectionField) =>
      _$this._oneCollectionField = oneCollectionField;

  ListBuilder<String>? _oneAllowedCollections;
  ListBuilder<String> get oneAllowedCollections =>
      _$this._oneAllowedCollections ??= ListBuilder<String>();
  set oneAllowedCollections(ListBuilder<String>? oneAllowedCollections) =>
      _$this._oneAllowedCollections = oneAllowedCollections;

  String? _junctionField;
  String? get junctionField => _$this._junctionField;
  set junctionField(String? junctionField) =>
      _$this._junctionField = junctionField;

  String? _sortField;
  String? get sortField => _$this._sortField;
  set sortField(String? sortField) => _$this._sortField = sortField;

  String? _oneDeselectAction;
  String? get oneDeselectAction => _$this._oneDeselectAction;
  set oneDeselectAction(String? oneDeselectAction) =>
      _$this._oneDeselectAction = oneDeselectAction;

  RelationsBuilder() {
    Relations._defaults(this);
  }

  RelationsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _manyCollection = $v.manyCollection;
      _manyField = $v.manyField;
      _oneCollection = $v.oneCollection;
      _oneField = $v.oneField;
      _oneCollectionField = $v.oneCollectionField;
      _oneAllowedCollections = $v.oneAllowedCollections?.toBuilder();
      _junctionField = $v.junctionField;
      _sortField = $v.sortField;
      _oneDeselectAction = $v.oneDeselectAction;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Relations other) {
    _$v = other as _$Relations;
  }

  @override
  void update(void Function(RelationsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Relations build() => _build();

  _$Relations _build() {
    _$Relations _$result;
    try {
      _$result = _$v ??
          _$Relations._(
            id: id,
            manyCollection: manyCollection,
            manyField: manyField,
            oneCollection: oneCollection,
            oneField: oneField,
            oneCollectionField: oneCollectionField,
            oneAllowedCollections: _oneAllowedCollections?.build(),
            junctionField: junctionField,
            sortField: sortField,
            oneDeselectAction: oneDeselectAction,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'oneAllowedCollections';
        _oneAllowedCollections?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'Relations', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
