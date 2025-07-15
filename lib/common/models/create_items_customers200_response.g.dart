// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_items_customers200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateItemsCustomers200Response
    extends CreateItemsCustomers200Response {
  @override
  final BuiltList<ItemsCustomers>? data;

  factory _$CreateItemsCustomers200Response(
          [void Function(CreateItemsCustomers200ResponseBuilder)? updates]) =>
      (CreateItemsCustomers200ResponseBuilder()..update(updates))._build();

  _$CreateItemsCustomers200Response._({this.data}) : super._();
  @override
  CreateItemsCustomers200Response rebuild(
          void Function(CreateItemsCustomers200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateItemsCustomers200ResponseBuilder toBuilder() =>
      CreateItemsCustomers200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateItemsCustomers200Response && data == other.data;
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
    return (newBuiltValueToStringHelper(r'CreateItemsCustomers200Response')
          ..add('data', data))
        .toString();
  }
}

class CreateItemsCustomers200ResponseBuilder
    implements
        Builder<CreateItemsCustomers200Response,
            CreateItemsCustomers200ResponseBuilder> {
  _$CreateItemsCustomers200Response? _$v;

  ListBuilder<ItemsCustomers>? _data;
  ListBuilder<ItemsCustomers> get data =>
      _$this._data ??= ListBuilder<ItemsCustomers>();
  set data(ListBuilder<ItemsCustomers>? data) => _$this._data = data;

  CreateItemsCustomers200ResponseBuilder() {
    CreateItemsCustomers200Response._defaults(this);
  }

  CreateItemsCustomers200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateItemsCustomers200Response other) {
    _$v = other as _$CreateItemsCustomers200Response;
  }

  @override
  void update(void Function(CreateItemsCustomers200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateItemsCustomers200Response build() => _build();

  _$CreateItemsCustomers200Response _build() {
    _$CreateItemsCustomers200Response _$result;
    try {
      _$result = _$v ??
          _$CreateItemsCustomers200Response._(
            data: _data?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CreateItemsCustomers200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
