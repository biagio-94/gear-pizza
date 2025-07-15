// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_comment_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateCommentRequest extends CreateCommentRequest {
  @override
  final String collection;
  @override
  final int item;
  @override
  final String comment;

  factory _$CreateCommentRequest(
          [void Function(CreateCommentRequestBuilder)? updates]) =>
      (CreateCommentRequestBuilder()..update(updates))._build();

  _$CreateCommentRequest._(
      {required this.collection, required this.item, required this.comment})
      : super._();
  @override
  CreateCommentRequest rebuild(
          void Function(CreateCommentRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateCommentRequestBuilder toBuilder() =>
      CreateCommentRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateCommentRequest &&
        collection == other.collection &&
        item == other.item &&
        comment == other.comment;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, collection.hashCode);
    _$hash = $jc(_$hash, item.hashCode);
    _$hash = $jc(_$hash, comment.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateCommentRequest')
          ..add('collection', collection)
          ..add('item', item)
          ..add('comment', comment))
        .toString();
  }
}

class CreateCommentRequestBuilder
    implements Builder<CreateCommentRequest, CreateCommentRequestBuilder> {
  _$CreateCommentRequest? _$v;

  String? _collection;
  String? get collection => _$this._collection;
  set collection(String? collection) => _$this._collection = collection;

  int? _item;
  int? get item => _$this._item;
  set item(int? item) => _$this._item = item;

  String? _comment;
  String? get comment => _$this._comment;
  set comment(String? comment) => _$this._comment = comment;

  CreateCommentRequestBuilder() {
    CreateCommentRequest._defaults(this);
  }

  CreateCommentRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _collection = $v.collection;
      _item = $v.item;
      _comment = $v.comment;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateCommentRequest other) {
    _$v = other as _$CreateCommentRequest;
  }

  @override
  void update(void Function(CreateCommentRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateCommentRequest build() => _build();

  _$CreateCommentRequest _build() {
    final _$result = _$v ??
        _$CreateCommentRequest._(
          collection: BuiltValueNullFieldError.checkNotNull(
              collection, r'CreateCommentRequest', 'collection'),
          item: BuiltValueNullFieldError.checkNotNull(
              item, r'CreateCommentRequest', 'item'),
          comment: BuiltValueNullFieldError.checkNotNull(
              comment, r'CreateCommentRequest', 'comment'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
