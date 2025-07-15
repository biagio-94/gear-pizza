// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_preset_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreatePresetRequest extends CreatePresetRequest {
  @override
  final String collection;
  @override
  final String? title;
  @override
  final String? role;
  @override
  final String? search;
  @override
  final BuiltList<CreatePresetRequestFiltersInner>? filters;
  @override
  final String? layout;
  @override
  final String? layoutQuery;
  @override
  final String? layoutOptions;

  factory _$CreatePresetRequest(
          [void Function(CreatePresetRequestBuilder)? updates]) =>
      (CreatePresetRequestBuilder()..update(updates))._build();

  _$CreatePresetRequest._(
      {required this.collection,
      this.title,
      this.role,
      this.search,
      this.filters,
      this.layout,
      this.layoutQuery,
      this.layoutOptions})
      : super._();
  @override
  CreatePresetRequest rebuild(
          void Function(CreatePresetRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreatePresetRequestBuilder toBuilder() =>
      CreatePresetRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreatePresetRequest &&
        collection == other.collection &&
        title == other.title &&
        role == other.role &&
        search == other.search &&
        filters == other.filters &&
        layout == other.layout &&
        layoutQuery == other.layoutQuery &&
        layoutOptions == other.layoutOptions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, collection.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jc(_$hash, search.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, layout.hashCode);
    _$hash = $jc(_$hash, layoutQuery.hashCode);
    _$hash = $jc(_$hash, layoutOptions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreatePresetRequest')
          ..add('collection', collection)
          ..add('title', title)
          ..add('role', role)
          ..add('search', search)
          ..add('filters', filters)
          ..add('layout', layout)
          ..add('layoutQuery', layoutQuery)
          ..add('layoutOptions', layoutOptions))
        .toString();
  }
}

class CreatePresetRequestBuilder
    implements Builder<CreatePresetRequest, CreatePresetRequestBuilder> {
  _$CreatePresetRequest? _$v;

  String? _collection;
  String? get collection => _$this._collection;
  set collection(String? collection) => _$this._collection = collection;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _role;
  String? get role => _$this._role;
  set role(String? role) => _$this._role = role;

  String? _search;
  String? get search => _$this._search;
  set search(String? search) => _$this._search = search;

  ListBuilder<CreatePresetRequestFiltersInner>? _filters;
  ListBuilder<CreatePresetRequestFiltersInner> get filters =>
      _$this._filters ??= ListBuilder<CreatePresetRequestFiltersInner>();
  set filters(ListBuilder<CreatePresetRequestFiltersInner>? filters) =>
      _$this._filters = filters;

  String? _layout;
  String? get layout => _$this._layout;
  set layout(String? layout) => _$this._layout = layout;

  String? _layoutQuery;
  String? get layoutQuery => _$this._layoutQuery;
  set layoutQuery(String? layoutQuery) => _$this._layoutQuery = layoutQuery;

  String? _layoutOptions;
  String? get layoutOptions => _$this._layoutOptions;
  set layoutOptions(String? layoutOptions) =>
      _$this._layoutOptions = layoutOptions;

  CreatePresetRequestBuilder() {
    CreatePresetRequest._defaults(this);
  }

  CreatePresetRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _collection = $v.collection;
      _title = $v.title;
      _role = $v.role;
      _search = $v.search;
      _filters = $v.filters?.toBuilder();
      _layout = $v.layout;
      _layoutQuery = $v.layoutQuery;
      _layoutOptions = $v.layoutOptions;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreatePresetRequest other) {
    _$v = other as _$CreatePresetRequest;
  }

  @override
  void update(void Function(CreatePresetRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreatePresetRequest build() => _build();

  _$CreatePresetRequest _build() {
    _$CreatePresetRequest _$result;
    try {
      _$result = _$v ??
          _$CreatePresetRequest._(
            collection: BuiltValueNullFieldError.checkNotNull(
                collection, r'CreatePresetRequest', 'collection'),
            title: title,
            role: role,
            search: search,
            filters: _filters?.build(),
            layout: layout,
            layoutQuery: layoutQuery,
            layoutOptions: layoutOptions,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CreatePresetRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
