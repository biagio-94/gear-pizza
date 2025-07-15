// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_items_pizzas_allergens200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateItemsPizzasAllergens200Response
    extends UpdateItemsPizzasAllergens200Response {
  @override
  final BuiltList<ItemsPizzasAllergens>? data;

  factory _$UpdateItemsPizzasAllergens200Response(
          [void Function(UpdateItemsPizzasAllergens200ResponseBuilder)?
              updates]) =>
      (UpdateItemsPizzasAllergens200ResponseBuilder()..update(updates))
          ._build();

  _$UpdateItemsPizzasAllergens200Response._({this.data}) : super._();
  @override
  UpdateItemsPizzasAllergens200Response rebuild(
          void Function(UpdateItemsPizzasAllergens200ResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateItemsPizzasAllergens200ResponseBuilder toBuilder() =>
      UpdateItemsPizzasAllergens200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateItemsPizzasAllergens200Response && data == other.data;
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
            r'UpdateItemsPizzasAllergens200Response')
          ..add('data', data))
        .toString();
  }
}

class UpdateItemsPizzasAllergens200ResponseBuilder
    implements
        Builder<UpdateItemsPizzasAllergens200Response,
            UpdateItemsPizzasAllergens200ResponseBuilder> {
  _$UpdateItemsPizzasAllergens200Response? _$v;

  ListBuilder<ItemsPizzasAllergens>? _data;
  ListBuilder<ItemsPizzasAllergens> get data =>
      _$this._data ??= ListBuilder<ItemsPizzasAllergens>();
  set data(ListBuilder<ItemsPizzasAllergens>? data) => _$this._data = data;

  UpdateItemsPizzasAllergens200ResponseBuilder() {
    UpdateItemsPizzasAllergens200Response._defaults(this);
  }

  UpdateItemsPizzasAllergens200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateItemsPizzasAllergens200Response other) {
    _$v = other as _$UpdateItemsPizzasAllergens200Response;
  }

  @override
  void update(
      void Function(UpdateItemsPizzasAllergens200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateItemsPizzasAllergens200Response build() => _build();

  _$UpdateItemsPizzasAllergens200Response _build() {
    _$UpdateItemsPizzasAllergens200Response _$result;
    try {
      _$result = _$v ??
          _$UpdateItemsPizzasAllergens200Response._(
            data: _data?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'UpdateItemsPizzasAllergens200Response',
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
