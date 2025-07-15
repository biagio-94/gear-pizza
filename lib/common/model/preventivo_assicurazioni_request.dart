//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gearpizza/common/model/servizio_preventivo.dart';

part 'preventivo_assicurazioni_request.g.dart';

/// PreventivoAssicurazioniRequest
///
/// Properties:
/// * [id]
/// * [servizi]
@BuiltValue()
abstract class PreventivoAssicurazioniRequest
    implements
        Built<PreventivoAssicurazioniRequest,
            PreventivoAssicurazioniRequestBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'servizi')
  BuiltList<ServizioPreventivo> get servizi;

  PreventivoAssicurazioniRequest._();

  factory PreventivoAssicurazioniRequest(
          [void Function(PreventivoAssicurazioniRequestBuilder b) updates]) =
      _$PreventivoAssicurazioniRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PreventivoAssicurazioniRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PreventivoAssicurazioniRequest> get serializer =>
      _$PreventivoAssicurazioniRequestSerializer();
}

class _$PreventivoAssicurazioniRequestSerializer
    implements PrimitiveSerializer<PreventivoAssicurazioniRequest> {
  @override
  final Iterable<Type> types = const [
    PreventivoAssicurazioniRequest,
    _$PreventivoAssicurazioniRequest
  ];

  @override
  final String wireName = r'PreventivoAssicurazioniRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PreventivoAssicurazioniRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'servizi';
    yield serializers.serialize(
      object.servizi,
      specifiedType: const FullType(BuiltList, [FullType(ServizioPreventivo)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PreventivoAssicurazioniRequest object, {
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
    required PreventivoAssicurazioniRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
          break;
        case r'servizi':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(ServizioPreventivo)]),
          ) as BuiltList<ServizioPreventivo>;
          result.servizi.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PreventivoAssicurazioniRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PreventivoAssicurazioniRequestBuilder();
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
