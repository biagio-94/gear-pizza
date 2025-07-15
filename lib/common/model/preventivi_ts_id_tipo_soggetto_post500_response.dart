//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'preventivi_ts_id_tipo_soggetto_post500_response.g.dart';

/// PreventiviTsIdTipoSoggettoPost500Response
///
/// Properties:
/// * [error]
@BuiltValue()
abstract class PreventiviTsIdTipoSoggettoPost500Response
    implements
        Built<PreventiviTsIdTipoSoggettoPost500Response,
            PreventiviTsIdTipoSoggettoPost500ResponseBuilder> {
  @BuiltValueField(wireName: r'error')
  String? get error;

  PreventiviTsIdTipoSoggettoPost500Response._();

  factory PreventiviTsIdTipoSoggettoPost500Response(
      [void Function(PreventiviTsIdTipoSoggettoPost500ResponseBuilder b)
          updates]) = _$PreventiviTsIdTipoSoggettoPost500Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PreventiviTsIdTipoSoggettoPost500ResponseBuilder b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PreventiviTsIdTipoSoggettoPost500Response> get serializer =>
      _$PreventiviTsIdTipoSoggettoPost500ResponseSerializer();
}

class _$PreventiviTsIdTipoSoggettoPost500ResponseSerializer
    implements PrimitiveSerializer<PreventiviTsIdTipoSoggettoPost500Response> {
  @override
  final Iterable<Type> types = const [
    PreventiviTsIdTipoSoggettoPost500Response,
    _$PreventiviTsIdTipoSoggettoPost500Response
  ];

  @override
  final String wireName = r'PreventiviTsIdTipoSoggettoPost500Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PreventiviTsIdTipoSoggettoPost500Response object, {
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
    PreventiviTsIdTipoSoggettoPost500Response object, {
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
    required PreventiviTsIdTipoSoggettoPost500ResponseBuilder result,
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
  PreventiviTsIdTipoSoggettoPost500Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PreventiviTsIdTipoSoggettoPost500ResponseBuilder();
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
