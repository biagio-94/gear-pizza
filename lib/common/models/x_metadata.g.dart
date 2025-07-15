// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'x_metadata.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$XMetadata extends XMetadata {
  @override
  final int? totalCount;
  @override
  final int? filterCount;

  factory _$XMetadata([void Function(XMetadataBuilder)? updates]) =>
      (XMetadataBuilder()..update(updates))._build();

  _$XMetadata._({this.totalCount, this.filterCount}) : super._();
  @override
  XMetadata rebuild(void Function(XMetadataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  XMetadataBuilder toBuilder() => XMetadataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is XMetadata &&
        totalCount == other.totalCount &&
        filterCount == other.filterCount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, totalCount.hashCode);
    _$hash = $jc(_$hash, filterCount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'XMetadata')
          ..add('totalCount', totalCount)
          ..add('filterCount', filterCount))
        .toString();
  }
}

class XMetadataBuilder implements Builder<XMetadata, XMetadataBuilder> {
  _$XMetadata? _$v;

  int? _totalCount;
  int? get totalCount => _$this._totalCount;
  set totalCount(int? totalCount) => _$this._totalCount = totalCount;

  int? _filterCount;
  int? get filterCount => _$this._filterCount;
  set filterCount(int? filterCount) => _$this._filterCount = filterCount;

  XMetadataBuilder() {
    XMetadata._defaults(this);
  }

  XMetadataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _totalCount = $v.totalCount;
      _filterCount = $v.filterCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(XMetadata other) {
    _$v = other as _$XMetadata;
  }

  @override
  void update(void Function(XMetadataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  XMetadata build() => _build();

  _$XMetadata _build() {
    final _$result = _$v ??
        _$XMetadata._(
          totalCount: totalCount,
          filterCount: filterCount,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
