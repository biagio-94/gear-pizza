// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_items_orders_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateItemsOrdersRequest extends CreateItemsOrdersRequest {
  @override
  final OneOf oneOf;

  factory _$CreateItemsOrdersRequest(
          [void Function(CreateItemsOrdersRequestBuilder)? updates]) =>
      (CreateItemsOrdersRequestBuilder()..update(updates))._build();

  _$CreateItemsOrdersRequest._({required this.oneOf}) : super._();
  @override
  CreateItemsOrdersRequest rebuild(
          void Function(CreateItemsOrdersRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateItemsOrdersRequestBuilder toBuilder() =>
      CreateItemsOrdersRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateItemsOrdersRequest && oneOf == other.oneOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, oneOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateItemsOrdersRequest')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class CreateItemsOrdersRequestBuilder
    implements
        Builder<CreateItemsOrdersRequest, CreateItemsOrdersRequestBuilder> {
  _$CreateItemsOrdersRequest? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  CreateItemsOrdersRequestBuilder() {
    CreateItemsOrdersRequest._defaults(this);
  }

  CreateItemsOrdersRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateItemsOrdersRequest other) {
    _$v = other as _$CreateItemsOrdersRequest;
  }

  @override
  void update(void Function(CreateItemsOrdersRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateItemsOrdersRequest build() => _build();

  _$CreateItemsOrdersRequest _build() {
    final _$result = _$v ??
        _$CreateItemsOrdersRequest._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'CreateItemsOrdersRequest', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
