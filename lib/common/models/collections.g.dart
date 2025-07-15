// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collections.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Collections extends Collections {
  @override
  final String? collection;
  @override
  final String? icon;
  @override
  final String? note;
  @override
  final String? displayTemplate;
  @override
  final bool? hidden;
  @override
  final bool? singleton;
  @override
  final JsonObject? translations;
  @override
  final String? archiveField;
  @override
  final bool? archiveAppFilter;
  @override
  final String? archiveValue;
  @override
  final String? unarchiveValue;
  @override
  final String? sortField;
  @override
  final String? accountability;
  @override
  final String? color;
  @override
  final JsonObject? itemDuplicationFields;
  @override
  final int? sort;
  @override
  final CollectionsGroup? group;
  @override
  final String? collapse;
  @override
  final String? previewUrl;
  @override
  final bool? versioning;

  factory _$Collections([void Function(CollectionsBuilder)? updates]) =>
      (CollectionsBuilder()..update(updates))._build();

  _$Collections._(
      {this.collection,
      this.icon,
      this.note,
      this.displayTemplate,
      this.hidden,
      this.singleton,
      this.translations,
      this.archiveField,
      this.archiveAppFilter,
      this.archiveValue,
      this.unarchiveValue,
      this.sortField,
      this.accountability,
      this.color,
      this.itemDuplicationFields,
      this.sort,
      this.group,
      this.collapse,
      this.previewUrl,
      this.versioning})
      : super._();
  @override
  Collections rebuild(void Function(CollectionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CollectionsBuilder toBuilder() => CollectionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Collections &&
        collection == other.collection &&
        icon == other.icon &&
        note == other.note &&
        displayTemplate == other.displayTemplate &&
        hidden == other.hidden &&
        singleton == other.singleton &&
        translations == other.translations &&
        archiveField == other.archiveField &&
        archiveAppFilter == other.archiveAppFilter &&
        archiveValue == other.archiveValue &&
        unarchiveValue == other.unarchiveValue &&
        sortField == other.sortField &&
        accountability == other.accountability &&
        color == other.color &&
        itemDuplicationFields == other.itemDuplicationFields &&
        sort == other.sort &&
        group == other.group &&
        collapse == other.collapse &&
        previewUrl == other.previewUrl &&
        versioning == other.versioning;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, collection.hashCode);
    _$hash = $jc(_$hash, icon.hashCode);
    _$hash = $jc(_$hash, note.hashCode);
    _$hash = $jc(_$hash, displayTemplate.hashCode);
    _$hash = $jc(_$hash, hidden.hashCode);
    _$hash = $jc(_$hash, singleton.hashCode);
    _$hash = $jc(_$hash, translations.hashCode);
    _$hash = $jc(_$hash, archiveField.hashCode);
    _$hash = $jc(_$hash, archiveAppFilter.hashCode);
    _$hash = $jc(_$hash, archiveValue.hashCode);
    _$hash = $jc(_$hash, unarchiveValue.hashCode);
    _$hash = $jc(_$hash, sortField.hashCode);
    _$hash = $jc(_$hash, accountability.hashCode);
    _$hash = $jc(_$hash, color.hashCode);
    _$hash = $jc(_$hash, itemDuplicationFields.hashCode);
    _$hash = $jc(_$hash, sort.hashCode);
    _$hash = $jc(_$hash, group.hashCode);
    _$hash = $jc(_$hash, collapse.hashCode);
    _$hash = $jc(_$hash, previewUrl.hashCode);
    _$hash = $jc(_$hash, versioning.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Collections')
          ..add('collection', collection)
          ..add('icon', icon)
          ..add('note', note)
          ..add('displayTemplate', displayTemplate)
          ..add('hidden', hidden)
          ..add('singleton', singleton)
          ..add('translations', translations)
          ..add('archiveField', archiveField)
          ..add('archiveAppFilter', archiveAppFilter)
          ..add('archiveValue', archiveValue)
          ..add('unarchiveValue', unarchiveValue)
          ..add('sortField', sortField)
          ..add('accountability', accountability)
          ..add('color', color)
          ..add('itemDuplicationFields', itemDuplicationFields)
          ..add('sort', sort)
          ..add('group', group)
          ..add('collapse', collapse)
          ..add('previewUrl', previewUrl)
          ..add('versioning', versioning))
        .toString();
  }
}

class CollectionsBuilder implements Builder<Collections, CollectionsBuilder> {
  _$Collections? _$v;

  String? _collection;
  String? get collection => _$this._collection;
  set collection(String? collection) => _$this._collection = collection;

  String? _icon;
  String? get icon => _$this._icon;
  set icon(String? icon) => _$this._icon = icon;

  String? _note;
  String? get note => _$this._note;
  set note(String? note) => _$this._note = note;

  String? _displayTemplate;
  String? get displayTemplate => _$this._displayTemplate;
  set displayTemplate(String? displayTemplate) =>
      _$this._displayTemplate = displayTemplate;

  bool? _hidden;
  bool? get hidden => _$this._hidden;
  set hidden(bool? hidden) => _$this._hidden = hidden;

  bool? _singleton;
  bool? get singleton => _$this._singleton;
  set singleton(bool? singleton) => _$this._singleton = singleton;

  JsonObject? _translations;
  JsonObject? get translations => _$this._translations;
  set translations(JsonObject? translations) =>
      _$this._translations = translations;

  String? _archiveField;
  String? get archiveField => _$this._archiveField;
  set archiveField(String? archiveField) => _$this._archiveField = archiveField;

  bool? _archiveAppFilter;
  bool? get archiveAppFilter => _$this._archiveAppFilter;
  set archiveAppFilter(bool? archiveAppFilter) =>
      _$this._archiveAppFilter = archiveAppFilter;

  String? _archiveValue;
  String? get archiveValue => _$this._archiveValue;
  set archiveValue(String? archiveValue) => _$this._archiveValue = archiveValue;

  String? _unarchiveValue;
  String? get unarchiveValue => _$this._unarchiveValue;
  set unarchiveValue(String? unarchiveValue) =>
      _$this._unarchiveValue = unarchiveValue;

  String? _sortField;
  String? get sortField => _$this._sortField;
  set sortField(String? sortField) => _$this._sortField = sortField;

  String? _accountability;
  String? get accountability => _$this._accountability;
  set accountability(String? accountability) =>
      _$this._accountability = accountability;

  String? _color;
  String? get color => _$this._color;
  set color(String? color) => _$this._color = color;

  JsonObject? _itemDuplicationFields;
  JsonObject? get itemDuplicationFields => _$this._itemDuplicationFields;
  set itemDuplicationFields(JsonObject? itemDuplicationFields) =>
      _$this._itemDuplicationFields = itemDuplicationFields;

  int? _sort;
  int? get sort => _$this._sort;
  set sort(int? sort) => _$this._sort = sort;

  CollectionsGroupBuilder? _group;
  CollectionsGroupBuilder get group =>
      _$this._group ??= CollectionsGroupBuilder();
  set group(CollectionsGroupBuilder? group) => _$this._group = group;

  String? _collapse;
  String? get collapse => _$this._collapse;
  set collapse(String? collapse) => _$this._collapse = collapse;

  String? _previewUrl;
  String? get previewUrl => _$this._previewUrl;
  set previewUrl(String? previewUrl) => _$this._previewUrl = previewUrl;

  bool? _versioning;
  bool? get versioning => _$this._versioning;
  set versioning(bool? versioning) => _$this._versioning = versioning;

  CollectionsBuilder() {
    Collections._defaults(this);
  }

  CollectionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _collection = $v.collection;
      _icon = $v.icon;
      _note = $v.note;
      _displayTemplate = $v.displayTemplate;
      _hidden = $v.hidden;
      _singleton = $v.singleton;
      _translations = $v.translations;
      _archiveField = $v.archiveField;
      _archiveAppFilter = $v.archiveAppFilter;
      _archiveValue = $v.archiveValue;
      _unarchiveValue = $v.unarchiveValue;
      _sortField = $v.sortField;
      _accountability = $v.accountability;
      _color = $v.color;
      _itemDuplicationFields = $v.itemDuplicationFields;
      _sort = $v.sort;
      _group = $v.group?.toBuilder();
      _collapse = $v.collapse;
      _previewUrl = $v.previewUrl;
      _versioning = $v.versioning;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Collections other) {
    _$v = other as _$Collections;
  }

  @override
  void update(void Function(CollectionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Collections build() => _build();

  _$Collections _build() {
    _$Collections _$result;
    try {
      _$result = _$v ??
          _$Collections._(
            collection: collection,
            icon: icon,
            note: note,
            displayTemplate: displayTemplate,
            hidden: hidden,
            singleton: singleton,
            translations: translations,
            archiveField: archiveField,
            archiveAppFilter: archiveAppFilter,
            archiveValue: archiveValue,
            unarchiveValue: unarchiveValue,
            sortField: sortField,
            accountability: accountability,
            color: color,
            itemDuplicationFields: itemDuplicationFields,
            sort: sort,
            group: _group?.build(),
            collapse: collapse,
            previewUrl: previewUrl,
            versioning: versioning,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'group';
        _group?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'Collections', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
