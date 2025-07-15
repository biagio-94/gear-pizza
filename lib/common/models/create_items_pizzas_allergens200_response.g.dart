// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_items_pizzas_allergens200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateItemsPizzasAllergens200Response
    extends CreateItemsPizzasAllergens200Response {
  @override
  final BuiltList<ItemsPizzasAllergens>? data;

  factory _$CreateItemsPizzasAllergens200Response(
          [void Function(CreateItemsPizzasAllergens200ResponseBuilder)?
              updates]) =>
      (CreateItemsPizzasAllergens200ResponseBuilder()..update(updates))
          ._build();

  _$CreateItemsPizzasAllergens200Response._({this.data}) : super._();
  @override
  CreateItemsPizzasAllergens200Response rebuild(
          void Function(CreateItemsPizzasAllergens200ResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateItemsPizzasAllergens200ResponseBuilder toBuilder() =>
      CreateItemsPizzasAllergens200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateItemsPizzasAllergens200Response && data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'CreateItemsPizzasAllergens200Response')
          ..add('data', data))
        .toString();
  }
}

class CreateItemsPizzasAllergens200ResponseBuilder
    implements
        Builder<CreateItemsPizzasAllergens200Response,
            CreateItemsPizzasAllergens200ResponseBuilder> {
  _$CreateItemsPizzasAllergens200Response? _$v;

  ListBuilder<ItemsPizzasAllergens>? _data;
  ListBuilder<ItemsPizzasAllergens> get data =>
      _$this._data ??= ListBuilder<ItemsPizzasAllergens>();
  set data(ListBuilder<ItemsPizzasAllergens>? data) => _$this._data = data;

  CreateItemsPizzasAllergens200ResponseBuilder() {
    CreateItemsPizzasAllergens200Response._defaults(this);
  }

  CreateItemsPizzasAllergens200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateItemsPizzasAllergens200Response other) {
    _$v = other as _$CreateItemsPizzasAllergens200Response;
  }

  @override
  void update(
      void Function(CreateItemsPizzasAllergens200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateItemsPizzasAllergens200Response build() => _build();

  _$CreateItemsPizzasAllergens200Response _build() {
    _$CreateItemsPizzasAllergens200Response _$result;
    try {
      _$result = _$v ??
          _$CreateItemsPizzasAllergens200Response._(
            data: _data?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CreateItemsPizzasAllergens200Response',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
