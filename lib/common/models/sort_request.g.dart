// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sort_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SortRequest extends SortRequest {
  @override
  final num? item;
  @override
  final num? to;

  factory _$SortRequest([void Function(SortRequestBuilder)? updates]) =>
      (SortRequestBuilder()..update(updates))._build();

  _$SortRequest._({this.item, this.to}) : super._();
  @override
  SortRequest rebuild(void Function(SortRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SortRequestBuilder toBuilder() => SortRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SortRequest && item == other.item && to == other.to;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, item.hashCode);
    _$hash = $jc(_$hash, to.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SortRequest')
          ..add('item', item)
          ..add('to', to))
        .toString();
  }
}

class SortRequestBuilder implements Builder<SortRequest, SortRequestBuilder> {
  _$SortRequest? _$v;

  num? _item;
  num? get item => _$this._item;
  set item(num? item) => _$this._item = item;

  num? _to;
  num? get to => _$this._to;
  set to(num? to) => _$this._to = to;

  SortRequestBuilder() {
    SortRequest._defaults(this);
  }

  SortRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _item = $v.item;
      _to = $v.to;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SortRequest other) {
    _$v = other as _$SortRequest;
  }

  @override
  void update(void Function(SortRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SortRequest build() => _build();

  _$SortRequest _build() {
    final _$result = _$v ??
        _$SortRequest._(
          item: item,
          to: to,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
