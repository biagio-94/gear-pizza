//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'preventivi_ts_id_tipo_soggetto_get500_response.g.dart';

/// PreventiviTsIdTipoSoggettoGet500Response
///
/// Properties:
/// * [error]
@BuiltValue()
abstract class PreventiviTsIdTipoSoggettoGet500Response
    implements
        Built<PreventiviTsIdTipoSoggettoGet500Response,
            PreventiviTsIdTipoSoggettoGet500ResponseBuilder> {
  @BuiltValueField(wireName: r'error')
  String? get error;

  PreventiviTsIdTipoSoggettoGet500Response._();

  factory PreventiviTsIdTipoSoggettoGet500Response(
      [void Function(PreventiviTsIdTipoSoggettoGet500ResponseBuilder b)
          updates]) = _$PreventiviTsIdTipoSoggettoGet500Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PreventiviTsIdTipoSoggettoGet500ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PreventiviTsIdTipoSoggettoGet500Response> get serializer =>
      _$PreventiviTsIdTipoSoggettoGet500ResponseSerializer();
}

class _$PreventiviTsIdTipoSoggettoGet500ResponseSerializer
    implements PrimitiveSerializer<PreventiviTsIdTipoSoggettoGet500Response> {
  @override
  final Iterable<Type> types = const [
    PreventiviTsIdTipoSoggettoGet500Response,
    _$PreventiviTsIdTipoSoggettoGet500Response
  ];

  @override
  final String wireName = r'PreventiviTsIdTipoSoggettoGet500Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PreventiviTsIdTipoSoggettoGet500Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.error != null) {
      yield r'error';
      yield serializers.serialize(
        object.error,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PreventiviTsIdTipoSoggettoGet500Response object, {
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
    required PreventiviTsIdTipoSoggettoGet500ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'error':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.error = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PreventiviTsIdTipoSoggettoGet500Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PreventiviTsIdTipoSoggettoGet500ResponseBuilder();
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
