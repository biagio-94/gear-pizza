// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'read_single_items_customers200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReadSingleItemsCustomers200Response
    extends ReadSingleItemsCustomers200Response {
  @override
  final ItemsCustomers? data;

  factory _$ReadSingleItemsCustomers200Response(
          [void Function(ReadSingleItemsCustomers200ResponseBuilder)?
              updates]) =>
      (ReadSingleItemsCustomers200ResponseBuilder()..update(updates))._build();

  _$ReadSingleItemsCustomers200Response._({this.data}) : super._();
  @override
  ReadSingleItemsCustomers200Response rebuild(
          void Function(ReadSingleItemsCustomers200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReadSingleItemsCustomers200ResponseBuilder toBuilder() =>
      ReadSingleItemsCustomers200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReadSingleItemsCustomers200Response && data == other.data;
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
    return (newBuiltValueToStringHelper(r'ReadSingleItemsCustomers200Response')
          ..add('data', data))
        .toString();
  }
}

class ReadSingleItemsCustomers200ResponseBuilder
    implements
        Builder<ReadSingleItemsCustomers200Response,
            ReadSingleItemsCustomers200ResponseBuilder> {
  _$ReadSingleItemsCustomers200Response? _$v;

  ItemsCustomersBuilder? _data;
  ItemsCustomersBuilder get data => _$this._data ??= ItemsCustomersBuilder();
  set data(ItemsCustomersBuilder? data) => _$this._data = data;

  ReadSingleItemsCustomers200ResponseBuilder() {
    ReadSingleItemsCustomers200Response._defaults(this);
  }

  ReadSingleItemsCustomers200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReadSingleItemsCustomers200Response other) {
    _$v = other as _$ReadSingleItemsCustomers200Response;
  }

  @override
  void update(
      void Function(ReadSingleItemsCustomers200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReadSingleItemsCustomers200Response build() => _build();

  _$ReadSingleItemsCustomers200Response _build() {
    _$ReadSingleItemsCustomers200Response _$result;
    try {
      _$result = _$v ??
          _$ReadSingleItemsCustomers200Response._(
            data: _data?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(r'ReadSingleItemsCustomers200Response',
            _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
