//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gearpizza/common/model/api_error.dart';

part 'get_importo_commissioni_protette_response.g.dart';

/// GetImportoCommissioniProtetteResponse
///
/// Properties:
/// * [importoCommissioniProtette]
/// * [errors]
@BuiltValue()
abstract class GetImportoCommissioniProtetteResponse
    implements
        Built<GetImportoCommissioniProtetteResponse,
            GetImportoCommissioniProtetteResponseBuilder> {
  @BuiltValueField(wireName: r'importoCommissioniProtette')
  num? get importoCommissioniProtette;

  @BuiltValueField(wireName: r'errors')
  BuiltList<ApiError>? get errors;

  GetImportoCommissioniProtetteResponse._();

  factory GetImportoCommissioniProtetteResponse(
      [void Function(GetImportoCommissioniProtetteResponseBuilder b)
          updates]) = _$GetImportoCommissioniProtetteResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetImportoCommissioniProtetteResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetImportoCommissioniProtetteResponse> get serializer =>
      _$GetImportoCommissioniProtetteResponseSerializer();
}

class _$GetImportoCommissioniProtetteResponseSerializer
    implements PrimitiveSerializer<GetImportoCommissioniProtetteResponse> {
  @override
  final Iterable<Type> types = const [
    GetImportoCommissioniProtetteResponse,
    _$GetImportoCommissioniProtetteResponse
  ];

  @override
  final String wireName = r'GetImportoCommissioniProtetteResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetImportoCommissioniProtetteResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.importoCommissioniProtette != null) {
      yield r'importoCommissioniProtette';
      yield serializers.serialize(
        object.importoCommissioniProtette,
        specifiedType: const FullType(num),
      );
    }
    if (object.errors != null) {
      yield r'errors';
      yield serializers.serialize(
        object.errors,
        specifiedType: const FullType(BuiltList, [FullType(ApiError)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetImportoCommissioniProtetteResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetImportoCommissioniProtetteResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'importoCommissioniProtette':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.importoCommissioniProtette = valueDes;
          break;
        case r'errors':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ApiError)]),
          ) as BuiltList<ApiError>;
          result.errors.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetImportoCommissioniProtetteResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetImportoCommissioniProtetteResponseBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}
