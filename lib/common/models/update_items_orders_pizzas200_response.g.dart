// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_items_orders_pizzas200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateItemsOrdersPizzas200Response
    extends UpdateItemsOrdersPizzas200Response {
  @override
  final BuiltList<ItemsOrdersPizzas>? data;

  factory _$UpdateItemsOrdersPizzas200Response(
          [void Function(UpdateItemsOrdersPizzas200ResponseBuilder)?
              updates]) =>
      (UpdateItemsOrdersPizzas200ResponseBuilder()..update(updates))._build();

  _$UpdateItemsOrdersPizzas200Response._({this.data}) : super._();
  @override
  UpdateItemsOrdersPizzas200Response rebuild(
          void Function(UpdateItemsOrdersPizzas200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateItemsOrdersPizzas200ResponseBuilder toBuilder() =>
      UpdateItemsOrdersPizzas200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateItemsOrdersPizzas200Response && data == other.data;
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
    return (newBuiltValueToStringHelper(r'UpdateItemsOrdersPizzas200Response')
          ..add('data', data))
        .toString();
  }
}

class UpdateItemsOrdersPizzas200ResponseBuilder
    implements
        Builder<UpdateItemsOrdersPizzas200Response,
            UpdateItemsOrdersPizzas200ResponseBuilder> {
  _$UpdateItemsOrdersPizzas200Response? _$v;

  ListBuilder<ItemsOrdersPizzas>? _data;
  ListBuilder<ItemsOrdersPizzas> get data =>
      _$this._data ??= ListBuilder<ItemsOrdersPizzas>();
  set data(ListBuilder<ItemsOrdersPizzas>? data) => _$this._data = data;

  UpdateItemsOrdersPizzas200ResponseBuilder() {
    UpdateItemsOrdersPizzas200Response._defaults(this);
  }

  UpdateItemsOrdersPizzas200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateItemsOrdersPizzas200Response other) {
    _$v = other as _$UpdateItemsOrdersPizzas200Response;
  }

  @override
  void update(
      void Function(UpdateItemsOrdersPizzas200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateItemsOrdersPizzas200Response build() => _build();

  _$UpdateItemsOrdersPizzas200Response _build() {
    _$UpdateItemsOrdersPizzas200Response _$result;
    try {
      _$result = _$v ??
          _$UpdateItemsOrdersPizzas200Response._(
            data: _data?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'UpdateItemsOrdersPizzas200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
