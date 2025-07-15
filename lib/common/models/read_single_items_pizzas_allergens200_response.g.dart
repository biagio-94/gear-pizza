// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'read_single_items_pizzas_allergens200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReadSingleItemsPizzasAllergens200Response
    extends ReadSingleItemsPizzasAllergens200Response {
  @override
  final ItemsPizzasAllergens? data;

  factory _$ReadSingleItemsPizzasAllergens200Response(
          [void Function(ReadSingleItemsPizzasAllergens200ResponseBuilder)?
              updates]) =>
      (ReadSingleItemsPizzasAllergens200ResponseBuilder()..update(updates))
          ._build();

  _$ReadSingleItemsPizzasAllergens200Response._({this.data}) : super._();
  @override
  ReadSingleItemsPizzasAllergens200Response rebuild(
          void Function(ReadSingleItemsPizzasAllergens200ResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReadSingleItemsPizzasAllergens200ResponseBuilder toBuilder() =>
      ReadSingleItemsPizzasAllergens200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReadSingleItemsPizzasAllergens200Response &&
        data == other.data;
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
            r'ReadSingleItemsPizzasAllergens200Response')
          ..add('data', data))
        .toString();
  }
}

class ReadSingleItemsPizzasAllergens200ResponseBuilder
    implements
        Builder<ReadSingleItemsPizzasAllergens200Response,
            ReadSingleItemsPizzasAllergens200ResponseBuilder> {
  _$ReadSingleItemsPizzasAllergens200Response? _$v;

  ItemsPizzasAllergensBuilder? _data;
  ItemsPizzasAllergensBuilder get data =>
      _$this._data ??= ItemsPizzasAllergensBuilder();
  set data(ItemsPizzasAllergensBuilder? data) => _$this._data = data;

  ReadSingleItemsPizzasAllergens200ResponseBuilder() {
    ReadSingleItemsPizzasAllergens200Response._defaults(this);
  }

  ReadSingleItemsPizzasAllergens200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReadSingleItemsPizzasAllergens200Response other) {
    _$v = other as _$ReadSingleItemsPizzasAllergens200Response;
  }

  @override
  void update(
      void Function(ReadSingleItemsPizzasAllergens200ResponseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ReadSingleItemsPizzasAllergens200Response build() => _build();

  _$ReadSingleItemsPizzasAllergens200Response _build() {
    _$ReadSingleItemsPizzasAllergens200Response _$result;
    try {
      _$result = _$v ??
          _$ReadSingleItemsPizzasAllergens200Response._(
            data: _data?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ReadSingleItemsPizzasAllergens200Response',
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
