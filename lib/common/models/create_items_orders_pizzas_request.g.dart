// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_items_orders_pizzas_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateItemsOrdersPizzasRequest extends CreateItemsOrdersPizzasRequest {
  @override
  final OneOf oneOf;

  factory _$CreateItemsOrdersPizzasRequest(
          [void Function(CreateItemsOrdersPizzasRequestBuilder)? updates]) =>
      (CreateItemsOrdersPizzasRequestBuilder()..update(updates))._build();

  _$CreateItemsOrdersPizzasRequest._({required this.oneOf}) : super._();
  @override
  CreateItemsOrdersPizzasRequest rebuild(
          void Function(CreateItemsOrdersPizzasRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateItemsOrdersPizzasRequestBuilder toBuilder() =>
      CreateItemsOrdersPizzasRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateItemsOrdersPizzasRequest && oneOf == other.oneOf;
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
    return (newBuiltValueToStringHelper(r'CreateItemsOrdersPizzasRequest')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class CreateItemsOrdersPizzasRequestBuilder
    implements
        Builder<CreateItemsOrdersPizzasRequest,
            CreateItemsOrdersPizzasRequestBuilder> {
  _$CreateItemsOrdersPizzasRequest? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  CreateItemsOrdersPizzasRequestBuilder() {
    CreateItemsOrdersPizzasRequest._defaults(this);
  }

  CreateItemsOrdersPizzasRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateItemsOrdersPizzasRequest other) {
    _$v = other as _$CreateItemsOrdersPizzasRequest;
  }

  @override
  void update(void Function(CreateItemsOrdersPizzasRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateItemsOrdersPizzasRequest build() => _build();

  _$CreateItemsOrdersPizzasRequest _build() {
    final _$result = _$v ??
        _$CreateItemsOrdersPizzasRequest._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'CreateItemsOrdersPizzasRequest', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
