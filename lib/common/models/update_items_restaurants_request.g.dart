// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_items_restaurants_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateItemsRestaurantsRequest extends UpdateItemsRestaurantsRequest {
  @override
  final OneOf oneOf;

  factory _$UpdateItemsRestaurantsRequest(
          [void Function(UpdateItemsRestaurantsRequestBuilder)? updates]) =>
      (UpdateItemsRestaurantsRequestBuilder()..update(updates))._build();

  _$UpdateItemsRestaurantsRequest._({required this.oneOf}) : super._();
  @override
  UpdateItemsRestaurantsRequest rebuild(
          void Function(UpdateItemsRestaurantsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateItemsRestaurantsRequestBuilder toBuilder() =>
      UpdateItemsRestaurantsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateItemsRestaurantsRequest && oneOf == other.oneOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, oneOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateItemsRestaurantsRequest')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class UpdateItemsRestaurantsRequestBuilder
    implements
        Builder<UpdateItemsRestaurantsRequest,
            UpdateItemsRestaurantsRequestBuilder> {
  _$UpdateItemsRestaurantsRequest? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  UpdateItemsRestaurantsRequestBuilder() {
    UpdateItemsRestaurantsRequest._defaults(this);
  }

  UpdateItemsRestaurantsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateItemsRestaurantsRequest other) {
    _$v = other as _$UpdateItemsRestaurantsRequest;
  }

  @override
  void update(void Function(UpdateItemsRestaurantsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateItemsRestaurantsRequest build() => _build();

  _$UpdateItemsRestaurantsRequest _build() {
    final _$result = _$v ??
        _$UpdateItemsRestaurantsRequest._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'UpdateItemsRestaurantsRequest', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
