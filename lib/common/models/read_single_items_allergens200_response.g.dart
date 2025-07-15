// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'read_single_items_allergens200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReadSingleItemsAllergens200Response
    extends ReadSingleItemsAllergens200Response {
  @override
  final ItemsAllergens? data;

  factory _$ReadSingleItemsAllergens200Response(
          [void Function(ReadSingleItemsAllergens200ResponseBuilder)?
              updates]) =>
      (ReadSingleItemsAllergens200ResponseBuilder()..update(updates))._build();

  _$ReadSingleItemsAllergens200Response._({this.data}) : super._();
  @override
  ReadSingleItemsAllergens200Response rebuild(
          void Function(ReadSingleItemsAllergens200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReadSingleItemsAllergens200ResponseBuilder toBuilder() =>
      ReadSingleItemsAllergens200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReadSingleItemsAllergens200Response && data == other.data;
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
    return (newBuiltValueToStringHelper(r'ReadSingleItemsAllergens200Response')
          ..add('data', data))
        .toString();
  }
}

class ReadSingleItemsAllergens200ResponseBuilder
    implements
        Builder<ReadSingleItemsAllergens200Response,
            ReadSingleItemsAllergens200ResponseBuilder> {
  _$ReadSingleItemsAllergens200Response? _$v;

  ItemsAllergensBuilder? _data;
  ItemsAllergensBuilder get data => _$this._data ??= ItemsAllergensBuilder();
  set data(ItemsAllergensBuilder? data) => _$this._data = data;

  ReadSingleItemsAllergens200ResponseBuilder() {
    ReadSingleItemsAllergens200Response._defaults(this);
  }

  ReadSingleItemsAllergens200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReadSingleItemsAllergens200Response other) {
    _$v = other as _$ReadSingleItemsAllergens200Response;
  }

  @override
  void update(
      void Function(ReadSingleItemsAllergens200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReadSingleItemsAllergens200Response build() => _build();

  _$ReadSingleItemsAllergens200Response _build() {
    _$ReadSingleItemsAllergens200Response _$result;
    try {
      _$result = _$v ??
          _$ReadSingleItemsAllergens200Response._(
            data: _data?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(r'ReadSingleItemsAllergens200Response',
            _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
