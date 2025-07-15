// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_items_customers_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateItemsCustomersRequest extends CreateItemsCustomersRequest {
  @override
  final OneOf oneOf;

  factory _$CreateItemsCustomersRequest(
          [void Function(CreateItemsCustomersRequestBuilder)? updates]) =>
      (CreateItemsCustomersRequestBuilder()..update(updates))._build();

  _$CreateItemsCustomersRequest._({required this.oneOf}) : super._();
  @override
  CreateItemsCustomersRequest rebuild(
          void Function(CreateItemsCustomersRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateItemsCustomersRequestBuilder toBuilder() =>
      CreateItemsCustomersRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateItemsCustomersRequest && oneOf == other.oneOf;
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
    return (newBuiltValueToStringHelper(r'CreateItemsCustomersRequest')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class CreateItemsCustomersRequestBuilder
    implements
        Builder<CreateItemsCustomersRequest,
            CreateItemsCustomersRequestBuilder> {
  _$CreateItemsCustomersRequest? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  CreateItemsCustomersRequestBuilder() {
    CreateItemsCustomersRequest._defaults(this);
  }

  CreateItemsCustomersRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateItemsCustomersRequest other) {
    _$v = other as _$CreateItemsCustomersRequest;
  }

  @override
  void update(void Function(CreateItemsCustomersRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateItemsCustomersRequest build() => _build();

  _$CreateItemsCustomersRequest _build() {
    final _$result = _$v ??
        _$CreateItemsCustomersRequest._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'CreateItemsCustomersRequest', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
