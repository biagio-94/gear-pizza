// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_items_pizzas_allergens_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateItemsPizzasAllergensRequest
    extends CreateItemsPizzasAllergensRequest {
  @override
  final OneOf oneOf;

  factory _$CreateItemsPizzasAllergensRequest(
          [void Function(CreateItemsPizzasAllergensRequestBuilder)? updates]) =>
      (CreateItemsPizzasAllergensRequestBuilder()..update(updates))._build();

  _$CreateItemsPizzasAllergensRequest._({required this.oneOf}) : super._();
  @override
  CreateItemsPizzasAllergensRequest rebuild(
          void Function(CreateItemsPizzasAllergensRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateItemsPizzasAllergensRequestBuilder toBuilder() =>
      CreateItemsPizzasAllergensRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateItemsPizzasAllergensRequest && oneOf == other.oneOf;
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
    return (newBuiltValueToStringHelper(r'CreateItemsPizzasAllergensRequest')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class CreateItemsPizzasAllergensRequestBuilder
    implements
        Builder<CreateItemsPizzasAllergensRequest,
            CreateItemsPizzasAllergensRequestBuilder> {
  _$CreateItemsPizzasAllergensRequest? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  CreateItemsPizzasAllergensRequestBuilder() {
    CreateItemsPizzasAllergensRequest._defaults(this);
  }

  CreateItemsPizzasAllergensRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateItemsPizzasAllergensRequest other) {
    _$v = other as _$CreateItemsPizzasAllergensRequest;
  }

  @override
  void update(
      void Function(CreateItemsPizzasAllergensRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateItemsPizzasAllergensRequest build() => _build();

  _$CreateItemsPizzasAllergensRequest _build() {
    final _$result = _$v ??
        _$CreateItemsPizzasAllergensRequest._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'CreateItemsPizzasAllergensRequest', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
