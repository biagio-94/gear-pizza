import 'dart:convert';

class DirectusQueryBuilder {
  final Map<String, dynamic> _params = {};

  DirectusQueryBuilder fields(dynamic value) {
    if (value is String) {
      _params['fields'] = value;
    } else if (value is List<String>) {
      _params['fields'] = value.join(',');
    } else {
      throw ArgumentError('fields() accetta solo String o List<String>');
    }
    return this;
  }

  DirectusQueryBuilder populate(dynamic value) {
    if (value is String) {
      _params['populate'] = value;
    } else if (value is List<String>) {
      _params['populate'] = value.join(',');
    } else {
      throw ArgumentError('populate() accetta solo String o List<String>');
    }
    return this;
  }

  DirectusQueryBuilder filter(Map<String, dynamic> filter) {
    _params['filter'] = filter;
    return this;
  }

  DirectusQueryBuilder sort(String sort) {
    _params['sort'] = sort;
    return this;
  }

  DirectusQueryBuilder limit(int value) {
    _params['limit'] = value;
    return this;
  }

  DirectusQueryBuilder page(int value) {
    _params['page'] = value;
    return this;
  }

  String build() {
    if (_params.isEmpty) return '';
    final queryString = _params.entries.map((entry) {
      final key = Uri.encodeQueryComponent(entry.key);
      final value = Uri.encodeQueryComponent(_encodeValue(entry.value));
      return '$key=$value';
    }).join('&');
    return '?$queryString';
  }

  String _encodeValue(dynamic value) {
    if (value is List<String>) {
      // Per evitare JSON encoding: usiamo join
      return value.join(',');
    } else if (value is Map || value is List) {
      return jsonEncode(value);
    }
    return value.toString();
  }
}
