//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_importo_commissioni_protette_request.g.dart';

/// GetImportoCommissioniProtetteRequest
///
/// Properties:
/// * [tabellaFinanziaria]
/// * [importoFinanziato]
/// * [numeroRate]
@BuiltValue()
abstract class GetImportoCommissioniProtetteRequest
    implements
        Built<GetImportoCommissioniProtetteRequest,
            GetImportoCommissioniProtetteRequestBuilder> {
  @BuiltValueField(wireName: r'tabellaFinanziaria')
  String get tabellaFinanziaria;

  @BuiltValueField(wireName: r'importoFinanziato')
  num get importoFinanziato;

  @BuiltValueField(wireName: r'numeroRate')
  String get numeroRate;

  GetImportoCommissioniProtetteRequest._();

  factory GetImportoCommissioniProtetteRequest(
      [void Function(GetImportoCommissioniProtetteRequestBuilder b)
          updates]) = _$GetImportoCommissioniProtetteRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetImportoCommissioniProtetteRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetImportoCommissioniProtetteRequest> get serializer =>
      _$GetImportoCommissioniProtetteRequestSerializer();
}

class _$GetImportoCommissioniProtetteRequestSerializer
    implements PrimitiveSerializer<GetImportoCommissioniProtetteRequest> {
  @override
  final Iterable<Type> types = const [
    GetImportoCommissioniProtetteRequest,
    _$GetImportoCommissioniProtetteRequest
  ];

  @override
  final String wireName = r'GetImportoCommissioniProtetteRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetImportoCommissioniProtetteRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'tabellaFinanziaria';
    yield serializers.serialize(
      object.tabellaFinanziaria,
      specifiedType: const FullType(String),
    );
    yield r'importoFinanziato';
    yield serializers.serialize(
      object.importoFinanziato,
      specifiedType: const FullType(num),
    );
    yield r'numeroRate';
    yield serializers.serialize(
      object.numeroRate,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    GetImportoCommissioniProtetteRequest object, {
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
    required GetImportoCommissioniProtetteRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'tabellaFinanziaria':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.tabellaFinanziaria = valueDes;
          break;
        case r'importoFinanziato':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.importoFinanziato = valueDes;
          break;
        case r'numeroRate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.numeroRate = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetImportoCommissioniProtetteRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetImportoCommissioniProtetteRequestBuilder();
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
