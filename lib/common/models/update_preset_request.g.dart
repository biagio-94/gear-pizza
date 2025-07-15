// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_preset_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdatePresetRequest extends UpdatePresetRequest {
  @override
  final String collection;
  @override
  final String? title;
  @override
  final int? role;
  @override
  final String? searchQuery;
  @override
  final BuiltList<UpdatePresetRequestFiltersInner>? filters;
  @override
  final String? viewType;
  @override
  final String? viewQuery;
  @override
  final String? viewOptions;
  @override
  final JsonObject? translation;

  factory _$UpdatePresetRequest(
          [void Function(UpdatePresetRequestBuilder)? updates]) =>
      (UpdatePresetRequestBuilder()..update(updates))._build();

  _$UpdatePresetRequest._(
      {required this.collection,
      this.title,
      this.role,
      this.searchQuery,
      this.filters,
      this.viewType,
      this.viewQuery,
      this.viewOptions,
      this.translation})
      : super._();
  @override
  UpdatePresetRequest rebuild(
          void Function(UpdatePresetRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdatePresetRequestBuilder toBuilder() =>
      UpdatePresetRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdatePresetRequest &&
        collection == other.collection &&
        title == other.title &&
        role == other.role &&
        searchQuery == other.searchQuery &&
        filters == other.filters &&
        viewType == other.viewType &&
        viewQuery == other.viewQuery &&
        viewOptions == other.viewOptions &&
        translation == other.translation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, collection.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jc(_$hash, searchQuery.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, viewType.hashCode);
    _$hash = $jc(_$hash, viewQuery.hashCode);
    _$hash = $jc(_$hash, viewOptions.hashCode);
    _$hash = $jc(_$hash, translation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdatePresetRequest')
          ..add('collection', collection)
          ..add('title', title)
          ..add('role', role)
          ..add('searchQuery', searchQuery)
          ..add('filters', filters)
          ..add('viewType', viewType)
          ..add('viewQuery', viewQuery)
          ..add('viewOptions', viewOptions)
          ..add('translation', translation))
        .toString();
  }
}

class UpdatePresetRequestBuilder
    implements Builder<UpdatePresetRequest, UpdatePresetRequestBuilder> {
  _$UpdatePresetRequest? _$v;

  String? _collection;
  String? get collection => _$this._collection;
  set collection(String? collection) => _$this._collection = collection;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  int? _role;
  int? get role => _$this._role;
  set role(int? role) => _$this._role = role;

  String? _searchQuery;
  String? get searchQuery => _$this._searchQuery;
  set searchQuery(String? searchQuery) => _$this._searchQuery = searchQuery;

  ListBuilder<UpdatePresetRequestFiltersInner>? _filters;
  ListBuilder<UpdatePresetRequestFiltersInner> get filters =>
      _$this._filters ??= ListBuilder<UpdatePresetRequestFiltersInner>();
  set filters(ListBuilder<UpdatePresetRequestFiltersInner>? filters) =>
      _$this._filters = filters;

  String? _viewType;
  String? get viewType => _$this._viewType;
  set viewType(String? viewType) => _$this._viewType = viewType;

  String? _viewQuery;
  String? get viewQuery => _$this._viewQuery;
  set viewQuery(String? viewQuery) => _$this._viewQuery = viewQuery;

  String? _viewOptions;
  String? get viewOptions => _$this._viewOptions;
  set viewOptions(String? viewOptions) => _$this._viewOptions = viewOptions;

  JsonObject? _translation;
  JsonObject? get translation => _$this._translation;
  set translation(JsonObject? translation) => _$this._translation = translation;

  UpdatePresetRequestBuilder() {
    UpdatePresetRequest._defaults(this);
  }

  UpdatePresetRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _collection = $v.collection;
      _title = $v.title;
      _role = $v.role;
      _searchQuery = $v.searchQuery;
      _filters = $v.filters?.toBuilder();
      _viewType = $v.viewType;
      _viewQuery = $v.viewQuery;
      _viewOptions = $v.viewOptions;
      _translation = $v.translation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdatePresetRequest other) {
    _$v = other as _$UpdatePresetRequest;
  }

  @override
  void update(void Function(UpdatePresetRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdatePresetRequest build() => _build();

  _$UpdatePresetRequest _build() {
    _$UpdatePresetRequest _$result;
    try {
      _$result = _$v ??
          _$UpdatePresetRequest._(
            collection: BuiltValueNullFieldError.checkNotNull(
                collection, r'UpdatePresetRequest', 'collection'),
            title: title,
            role: role,
            searchQuery: searchQuery,
            filters: _filters?.build(),
            viewType: viewType,
            viewQuery: viewQuery,
            viewOptions: viewOptions,
            translation: translation,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'UpdatePresetRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
