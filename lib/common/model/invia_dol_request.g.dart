// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invia_dol_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InviaDolRequest extends InviaDolRequest {
  @override
  final int id;

  factory _$InviaDolRequest([void Function(InviaDolRequestBuilder)? updates]) =>
      (new InviaDolRequestBuilder()..update(updates))._build();

  _$InviaDolRequest._({required this.id}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'InviaDolRequest', 'id');
  }

  @override
  InviaDolRequest rebuild(void Function(InviaDolRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InviaDolRequestBuilder toBuilder() =>
      new InviaDolRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InviaDolRequest && id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InviaDolRequest')..add('id', id))
        .toString();
  }
}

class InviaDolRequestBuilder
    implements Builder<InviaDolRequest, InviaDolRequestBuilder> {
  _$InviaDolRequest? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  InviaDolRequestBuilder() {
    InviaDolRequest._defaults(this);
  }

  InviaDolRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InviaDolRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InviaDolRequest;
  }

  @override
  void update(void Function(InviaDolRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InviaDolRequest build() => _build();

  _$InviaDolRequest _build() {
    final _$result = _$v ??
        new _$InviaDolRequest._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'InviaDolRequest', 'id'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
