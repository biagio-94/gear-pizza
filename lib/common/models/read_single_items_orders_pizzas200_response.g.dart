// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'read_single_items_orders_pizzas200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReadSingleItemsOrdersPizzas200Response
    extends ReadSingleItemsOrdersPizzas200Response {
  @override
  final ItemsOrdersPizzas? data;

  factory _$ReadSingleItemsOrdersPizzas200Response(
          [void Function(ReadSingleItemsOrdersPizzas200ResponseBuilder)?
              updates]) =>
      (ReadSingleItemsOrdersPizzas200ResponseBuilder()..update(updates))
          ._build();

  _$ReadSingleItemsOrdersPizzas200Response._({this.data}) : super._();
  @override
  ReadSingleItemsOrdersPizzas200Response rebuild(
          void Function(ReadSingleItemsOrdersPizzas200ResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReadSingleItemsOrdersPizzas200ResponseBuilder toBuilder() =>
      ReadSingleItemsOrdersPizzas200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReadSingleItemsOrdersPizzas200Response &&
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
            r'ReadSingleItemsOrdersPizzas200Response')
          ..add('data', data))
        .toString();
  }
}

class ReadSingleItemsOrdersPizzas200ResponseBuilder
    implements
        Builder<ReadSingleItemsOrdersPizzas200Response,
            ReadSingleItemsOrdersPizzas200ResponseBuilder> {
  _$ReadSingleItemsOrdersPizzas200Response? _$v;

  ItemsOrdersPizzasBuilder? _data;
  ItemsOrdersPizzasBuilder get data =>
      _$this._data ??= ItemsOrdersPizzasBuilder();
  set data(ItemsOrdersPizzasBuilder? data) => _$this._data = data;

  ReadSingleItemsOrdersPizzas200ResponseBuilder() {
    ReadSingleItemsOrdersPizzas200Response._defaults(this);
  }

  ReadSingleItemsOrdersPizzas200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReadSingleItemsOrdersPizzas200Response other) {
    _$v = other as _$ReadSingleItemsOrdersPizzas200Response;
  }

  @override
  void update(
      void Function(ReadSingleItemsOrdersPizzas200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReadSingleItemsOrdersPizzas200Response build() => _build();

  _$ReadSingleItemsOrdersPizzas200Response _build() {
    _$ReadSingleItemsOrdersPizzas200Response _$result;
    try {
      _$result = _$v ??
          _$ReadSingleItemsOrdersPizzas200Response._(
            data: _data?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ReadSingleItemsOrdersPizzas200Response',
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
