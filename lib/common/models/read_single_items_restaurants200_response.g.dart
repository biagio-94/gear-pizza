// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'read_single_items_restaurants200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReadSingleItemsRestaurants200Response
    extends ReadSingleItemsRestaurants200Response {
  @override
  final ItemsRestaurants? data;

  factory _$ReadSingleItemsRestaurants200Response(
          [void Function(ReadSingleItemsRestaurants200ResponseBuilder)?
              updates]) =>
      (ReadSingleItemsRestaurants200ResponseBuilder()..update(updates))
          ._build();

  _$ReadSingleItemsRestaurants200Response._({this.data}) : super._();
  @override
  ReadSingleItemsRestaurants200Response rebuild(
          void Function(ReadSingleItemsRestaurants200ResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReadSingleItemsRestaurants200ResponseBuilder toBuilder() =>
      ReadSingleItemsRestaurants200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReadSingleItemsRestaurants200Response && data == other.data;
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
            r'ReadSingleItemsRestaurants200Response')
          ..add('data', data))
        .toString();
  }
}

class ReadSingleItemsRestaurants200ResponseBuilder
    implements
        Builder<ReadSingleItemsRestaurants200Response,
            ReadSingleItemsRestaurants200ResponseBuilder> {
  _$ReadSingleItemsRestaurants200Response? _$v;

  ItemsRestaurantsBuilder? _data;
  ItemsRestaurantsBuilder get data =>
      _$this._data ??= ItemsRestaurantsBuilder();
  set data(ItemsRestaurantsBuilder? data) => _$this._data = data;

  ReadSingleItemsRestaurants200ResponseBuilder() {
    ReadSingleItemsRestaurants200Response._defaults(this);
  }

  ReadSingleItemsRestaurants200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReadSingleItemsRestaurants200Response other) {
    _$v = other as _$ReadSingleItemsRestaurants200Response;
  }

  @override
  void update(
      void Function(ReadSingleItemsRestaurants200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReadSingleItemsRestaurants200Response build() => _build();

  _$ReadSingleItemsRestaurants200Response _build() {
    _$ReadSingleItemsRestaurants200Response _$result;
    try {
      _$result = _$v ??
          _$ReadSingleItemsRestaurants200Response._(
            data: _data?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ReadSingleItemsRestaurants200Response',
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
