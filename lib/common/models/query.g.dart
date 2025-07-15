// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Query extends Query {
  @override
  final BuiltList<String>? fields;
  @override
  final JsonObject? filter;
  @override
  final String? search;
  @override
  final BuiltList<String>? sort;
  @override
  final num? limit;
  @override
  final num? offset;
  @override
  final num? page;
  @override
  final JsonObject? deep;

  factory _$Query([void Function(QueryBuilder)? updates]) =>
      (QueryBuilder()..update(updates))._build();

  _$Query._(
      {this.fields,
      this.filter,
      this.search,
      this.sort,
      this.limit,
      this.offset,
      this.page,
      this.deep})
      : super._();
  @override
  Query rebuild(void Function(QueryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QueryBuilder toBuilder() => QueryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Query &&
        fields == other.fields &&
        filter == other.filter &&
        search == other.search &&
        sort == other.sort &&
        limit == other.limit &&
        offset == other.offset &&
        page == other.page &&
        deep == other.deep;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, fields.hashCode);
    _$hash = $jc(_$hash, filter.hashCode);
    _$hash = $jc(_$hash, search.hashCode);
    _$hash = $jc(_$hash, sort.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, offset.hashCode);
    _$hash = $jc(_$hash, page.hashCode);
    _$hash = $jc(_$hash, deep.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Query')
          ..add('fields', fields)
          ..add('filter', filter)
          ..add('search', search)
          ..add('sort', sort)
          ..add('limit', limit)
          ..add('offset', offset)
          ..add('page', page)
          ..add('deep', deep))
        .toString();
  }
}

class QueryBuilder implements Builder<Query, QueryBuilder> {
  _$Query? _$v;

  ListBuilder<String>? _fields;
  ListBuilder<String> get fields => _$this._fields ??= ListBuilder<String>();
  set fields(ListBuilder<String>? fields) => _$this._fields = fields;

  JsonObject? _filter;
  JsonObject? get filter => _$this._filter;
  set filter(JsonObject? filter) => _$this._filter = filter;

  String? _search;
  String? get search => _$this._search;
  set search(String? search) => _$this._search = search;

  ListBuilder<String>? _sort;
  ListBuilder<String> get sort => _$this._sort ??= ListBuilder<String>();
  set sort(ListBuilder<String>? sort) => _$this._sort = sort;

  num? _limit;
  num? get limit => _$this._limit;
  set limit(num? limit) => _$this._limit = limit;

  num? _offset;
  num? get offset => _$this._offset;
  set offset(num? offset) => _$this._offset = offset;

  num? _page;
  num? get page => _$this._page;
  set page(num? page) => _$this._page = page;

  JsonObject? _deep;
  JsonObject? get deep => _$this._deep;
  set deep(JsonObject? deep) => _$this._deep = deep;

  QueryBuilder() {
    Query._defaults(this);
  }

  QueryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fields = $v.fields?.toBuilder();
      _filter = $v.filter;
      _search = $v.search;
      _sort = $v.sort?.toBuilder();
      _limit = $v.limit;
      _offset = $v.offset;
      _page = $v.page;
      _deep = $v.deep;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Query other) {
    _$v = other as _$Query;
  }

  @override
  void update(void Function(QueryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Query build() => _build();

  _$Query _build() {
    _$Query _$result;
    try {
      _$result = _$v ??
          _$Query._(
            fields: _fields?.build(),
            filter: filter,
            search: search,
            sort: _sort?.build(),
            limit: limit,
            offset: offset,
            page: page,
            deep: deep,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'fields';
        _fields?.build();

        _$failedField = 'sort';
        _sort?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(r'Query', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
