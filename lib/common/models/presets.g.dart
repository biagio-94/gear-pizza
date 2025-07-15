// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'presets.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Presets extends Presets {
  @override
  final int? id;
  @override
  final String? bookmark;
  @override
  final PresetsUser? user;
  @override
  final PresetsRole? role;
  @override
  final PresetsCollection? collection;
  @override
  final String? search;
  @override
  final String? layout;
  @override
  final JsonObject? layoutQuery;
  @override
  final JsonObject? layoutOptions;
  @override
  final int? refreshInterval;
  @override
  final JsonObject? filter;
  @override
  final String? icon;
  @override
  final String? color;

  factory _$Presets([void Function(PresetsBuilder)? updates]) =>
      (PresetsBuilder()..update(updates))._build();

  _$Presets._(
      {this.id,
      this.bookmark,
      this.user,
      this.role,
      this.collection,
      this.search,
      this.layout,
      this.layoutQuery,
      this.layoutOptions,
      this.refreshInterval,
      this.filter,
      this.icon,
      this.color})
      : super._();
  @override
  Presets rebuild(void Function(PresetsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PresetsBuilder toBuilder() => PresetsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Presets &&
        id == other.id &&
        bookmark == other.bookmark &&
        user == other.user &&
        role == other.role &&
        collection == other.collection &&
        search == other.search &&
        layout == other.layout &&
        layoutQuery == other.layoutQuery &&
        layoutOptions == other.layoutOptions &&
        refreshInterval == other.refreshInterval &&
        filter == other.filter &&
        icon == other.icon &&
        color == other.color;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, bookmark.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jc(_$hash, collection.hashCode);
    _$hash = $jc(_$hash, search.hashCode);
    _$hash = $jc(_$hash, layout.hashCode);
    _$hash = $jc(_$hash, layoutQuery.hashCode);
    _$hash = $jc(_$hash, layoutOptions.hashCode);
    _$hash = $jc(_$hash, refreshInterval.hashCode);
    _$hash = $jc(_$hash, filter.hashCode);
    _$hash = $jc(_$hash, icon.hashCode);
    _$hash = $jc(_$hash, color.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Presets')
          ..add('id', id)
          ..add('bookmark', bookmark)
          ..add('user', user)
          ..add('role', role)
          ..add('collection', collection)
          ..add('search', search)
          ..add('layout', layout)
          ..add('layoutQuery', layoutQuery)
          ..add('layoutOptions', layoutOptions)
          ..add('refreshInterval', refreshInterval)
          ..add('filter', filter)
          ..add('icon', icon)
          ..add('color', color))
        .toString();
  }
}

class PresetsBuilder implements Builder<Presets, PresetsBuilder> {
  _$Presets? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _bookmark;
  String? get bookmark => _$this._bookmark;
  set bookmark(String? bookmark) => _$this._bookmark = bookmark;

  PresetsUserBuilder? _user;
  PresetsUserBuilder get user => _$this._user ??= PresetsUserBuilder();
  set user(PresetsUserBuilder? user) => _$this._user = user;

  PresetsRoleBuilder? _role;
  PresetsRoleBuilder get role => _$this._role ??= PresetsRoleBuilder();
  set role(PresetsRoleBuilder? role) => _$this._role = role;

  PresetsCollectionBuilder? _collection;
  PresetsCollectionBuilder get collection =>
      _$this._collection ??= PresetsCollectionBuilder();
  set collection(PresetsCollectionBuilder? collection) =>
      _$this._collection = collection;

  String? _search;
  String? get search => _$this._search;
  set search(String? search) => _$this._search = search;

  String? _layout;
  String? get layout => _$this._layout;
  set layout(String? layout) => _$this._layout = layout;

  JsonObject? _layoutQuery;
  JsonObject? get layoutQuery => _$this._layoutQuery;
  set layoutQuery(JsonObject? layoutQuery) => _$this._layoutQuery = layoutQuery;

  JsonObject? _layoutOptions;
  JsonObject? get layoutOptions => _$this._layoutOptions;
  set layoutOptions(JsonObject? layoutOptions) =>
      _$this._layoutOptions = layoutOptions;

  int? _refreshInterval;
  int? get refreshInterval => _$this._refreshInterval;
  set refreshInterval(int? refreshInterval) =>
      _$this._refreshInterval = refreshInterval;

  JsonObject? _filter;
  JsonObject? get filter => _$this._filter;
  set filter(JsonObject? filter) => _$this._filter = filter;

  String? _icon;
  String? get icon => _$this._icon;
  set icon(String? icon) => _$this._icon = icon;

  String? _color;
  String? get color => _$this._color;
  set color(String? color) => _$this._color = color;

  PresetsBuilder() {
    Presets._defaults(this);
  }

  PresetsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _bookmark = $v.bookmark;
      _user = $v.user?.toBuilder();
      _role = $v.role?.toBuilder();
      _collection = $v.collection?.toBuilder();
      _search = $v.search;
      _layout = $v.layout;
      _layoutQuery = $v.layoutQuery;
      _layoutOptions = $v.layoutOptions;
      _refreshInterval = $v.refreshInterval;
      _filter = $v.filter;
      _icon = $v.icon;
      _color = $v.color;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Presets other) {
    _$v = other as _$Presets;
  }

  @override
  void update(void Function(PresetsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Presets build() => _build();

  _$Presets _build() {
    _$Presets _$result;
    try {
      _$result = _$v ??
          _$Presets._(
            id: id,
            bookmark: bookmark,
            user: _user?.build(),
            role: _role?.build(),
            collection: _collection?.build(),
            search: search,
            layout: layout,
            layoutQuery: layoutQuery,
            layoutOptions: layoutOptions,
            refreshInterval: refreshInterval,
            filter: filter,
            icon: icon,
            color: color,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
        _$failedField = 'role';
        _role?.build();
        _$failedField = 'collection';
        _collection?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'Presets', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
