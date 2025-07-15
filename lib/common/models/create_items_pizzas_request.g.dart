// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_items_pizzas_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateItemsPizzasRequest extends CreateItemsPizzasRequest {
  @override
  final OneOf oneOf;

  factory _$CreateItemsPizzasRequest(
          [void Function(CreateItemsPizzasRequestBuilder)? updates]) =>
      (CreateItemsPizzasRequestBuilder()..update(updates))._build();

  _$CreateItemsPizzasRequest._({required this.oneOf}) : super._();
  @override
  CreateItemsPizzasRequest rebuild(
          void Function(CreateItemsPizzasRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateItemsPizzasRequestBuilder toBuilder() =>
      CreateItemsPizzasRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateItemsPizzasRequest && oneOf == other.oneOf;
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
    return (newBuiltValueToStringHelper(r'CreateItemsPizzasRequest')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class CreateItemsPizzasRequestBuilder
    implements
        Builder<CreateItemsPizzasRequest, CreateItemsPizzasRequestBuilder> {
  _$CreateItemsPizzasRequest? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  CreateItemsPizzasRequestBuilder() {
    CreateItemsPizzasRequest._defaults(this);
  }

  CreateItemsPizzasRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateItemsPizzasRequest other) {
    _$v = other as _$CreateItemsPizzasRequest;
  }

  @override
  void update(void Function(CreateItemsPizzasRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateItemsPizzasRequest build() => _build();

  _$CreateItemsPizzasRequest _build() {
    final _$result = _$v ??
        _$CreateItemsPizzasRequest._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'CreateItemsPizzasRequest', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
