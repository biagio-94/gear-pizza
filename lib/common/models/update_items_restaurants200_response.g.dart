// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_items_restaurants200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateItemsRestaurants200Response
    extends UpdateItemsRestaurants200Response {
  @override
  final BuiltList<ItemsRestaurants>? data;

  factory _$UpdateItemsRestaurants200Response(
          [void Function(UpdateItemsRestaurants200ResponseBuilder)? updates]) =>
      (UpdateItemsRestaurants200ResponseBuilder()..update(updates))._build();

  _$UpdateItemsRestaurants200Response._({this.data}) : super._();
  @override
  UpdateItemsRestaurants200Response rebuild(
          void Function(UpdateItemsRestaurants200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateItemsRestaurants200ResponseBuilder toBuilder() =>
      UpdateItemsRestaurants200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateItemsRestaurants200Response && data == other.data;
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
    return (newBuiltValueToStringHelper(r'UpdateItemsRestaurants200Response')
          ..add('data', data))
        .toString();
  }
}

class UpdateItemsRestaurants200ResponseBuilder
    implements
        Builder<UpdateItemsRestaurants200Response,
            UpdateItemsRestaurants200ResponseBuilder> {
  _$UpdateItemsRestaurants200Response? _$v;

  ListBuilder<ItemsRestaurants>? _data;
  ListBuilder<ItemsRestaurants> get data =>
      _$this._data ??= ListBuilder<ItemsRestaurants>();
  set data(ListBuilder<ItemsRestaurants>? data) => _$this._data = data;

  UpdateItemsRestaurants200ResponseBuilder() {
    UpdateItemsRestaurants200Response._defaults(this);
  }

  UpdateItemsRestaurants200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateItemsRestaurants200Response other) {
    _$v = other as _$UpdateItemsRestaurants200Response;
  }

  @override
  void update(
      void Function(UpdateItemsRestaurants200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateItemsRestaurants200Response build() => _build();

  _$UpdateItemsRestaurants200Response _build() {
    _$UpdateItemsRestaurants200Response _$result;
    try {
      _$result = _$v ??
          _$UpdateItemsRestaurants200Response._(
            data: _data?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'UpdateItemsRestaurants200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
