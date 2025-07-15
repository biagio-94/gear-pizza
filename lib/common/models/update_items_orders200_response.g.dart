// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_items_orders200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateItemsOrders200Response extends UpdateItemsOrders200Response {
  @override
  final BuiltList<ItemsOrders>? data;

  factory _$UpdateItemsOrders200Response(
          [void Function(UpdateItemsOrders200ResponseBuilder)? updates]) =>
      (UpdateItemsOrders200ResponseBuilder()..update(updates))._build();

  _$UpdateItemsOrders200Response._({this.data}) : super._();
  @override
  UpdateItemsOrders200Response rebuild(
          void Function(UpdateItemsOrders200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateItemsOrders200ResponseBuilder toBuilder() =>
      UpdateItemsOrders200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateItemsOrders200Response && data == other.data;
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
    return (newBuiltValueToStringHelper(r'UpdateItemsOrders200Response')
          ..add('data', data))
        .toString();
  }
}

class UpdateItemsOrders200ResponseBuilder
    implements
        Builder<UpdateItemsOrders200Response,
            UpdateItemsOrders200ResponseBuilder> {
  _$UpdateItemsOrders200Response? _$v;

  ListBuilder<ItemsOrders>? _data;
  ListBuilder<ItemsOrders> get data =>
      _$this._data ??= ListBuilder<ItemsOrders>();
  set data(ListBuilder<ItemsOrders>? data) => _$this._data = data;

  UpdateItemsOrders200ResponseBuilder() {
    UpdateItemsOrders200Response._defaults(this);
  }

  UpdateItemsOrders200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateItemsOrders200Response other) {
    _$v = other as _$UpdateItemsOrders200Response;
  }

  @override
  void update(void Function(UpdateItemsOrders200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateItemsOrders200Response build() => _build();

  _$UpdateItemsOrders200Response _build() {
    _$UpdateItemsOrders200Response _$result;
    try {
      _$result = _$v ??
          _$UpdateItemsOrders200Response._(
            data: _data?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'UpdateItemsOrders200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
