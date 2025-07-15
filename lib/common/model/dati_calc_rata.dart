//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'dati_calc_rata.g.dart';

/// DatiCalcRata
///
/// Properties:
/// * [codiceErrore]
/// * [codiceIndice]
/// * [cpi]
/// * [error]
/// * [importoMaxiRata]
/// * [importoRata]
/// * [importoRata2]
/// * [importoTotaleAltraAssicurazione]
/// * [importoTotaleSalvarata]
/// * [interessiDilazione]
/// * [numRate1asInt]
/// * [numRate2asInt]
/// * [numeroRate]
/// * [numeroRate2]
/// * [rateConAssicurazione]
/// * [speseIcassiRata]
/// * [spreadContr]
/// * [taeg]
/// * [taeg1]
/// * [taeg2]
/// * [taegCpi]
/// * [taegTot]
/// * [tan]
/// * [tan1]
/// * [tan2]
/// * [tassoCap]
/// * [valoreIndice]
@BuiltValue()
abstract class DatiCalcRata
    implements Built<DatiCalcRata, DatiCalcRataBuilder> {
  @BuiltValueField(wireName: r'codiceErrore')
  int? get codiceErrore;

  @BuiltValueField(wireName: r'codiceIndice')
  String? get codiceIndice;

  @BuiltValueField(wireName: r'cpi')
  num? get cpi;

  @BuiltValueField(wireName: r'error')
  String? get error;

  @BuiltValueField(wireName: r'importoMaxiRata')
  num? get importoMaxiRata;

  @BuiltValueField(wireName: r'importoRata')
  num? get importoRata;

  @BuiltValueField(wireName: r'importoRata2')
  num? get importoRata2;

  @BuiltValueField(wireName: r'importoTotaleAltraAssicurazione')
  num? get importoTotaleAltraAssicurazione;

  @BuiltValueField(wireName: r'importoTotaleSalvarata')
  num? get importoTotaleSalvarata;

  @BuiltValueField(wireName: r'interessiDilazione')
  num? get interessiDilazione;

  @BuiltValueField(wireName: r'numRate1asInt')
  int? get numRate1asInt;

  @BuiltValueField(wireName: r'numRate2asInt')
  int? get numRate2asInt;

  @BuiltValueField(wireName: r'numeroRate')
  String? get numeroRate;

  @BuiltValueField(wireName: r'numeroRate2')
  String? get numeroRate2;

  @BuiltValueField(wireName: r'rateConAssicurazione')
  num? get rateConAssicurazione;

  @BuiltValueField(wireName: r'speseIcassiRata')
  num? get speseIcassiRata;

  @BuiltValueField(wireName: r'spreadContr')
  num? get spreadContr;

  @BuiltValueField(wireName: r'taeg')
  num? get taeg;

  @BuiltValueField(wireName: r'taeg1')
  num? get taeg1;

  @BuiltValueField(wireName: r'taeg2')
  num? get taeg2;

  @BuiltValueField(wireName: r'taegCpi')
  num? get taegCpi;

  @BuiltValueField(wireName: r'taegTot')
  num? get taegTot;

  @BuiltValueField(wireName: r'tan')
  num? get tan;

  @BuiltValueField(wireName: r'tan1')
  num? get tan1;

  @BuiltValueField(wireName: r'tan2')
  num? get tan2;

  @BuiltValueField(wireName: r'tassoCap')
  num? get tassoCap;

  @BuiltValueField(wireName: r'valoreIndice')
  num? get valoreIndice;

  DatiCalcRata._();

  factory DatiCalcRata([void Function(DatiCalcRataBuilder b) updates]) =
      _$DatiCalcRata;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DatiCalcRataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DatiCalcRata> get serializer => _$DatiCalcRataSerializer();
}

class _$DatiCalcRataSerializer implements PrimitiveSerializer<DatiCalcRata> {
  @override
  final Iterable<Type> types = const [DatiCalcRata, _$DatiCalcRata];

  @override
  final String wireName = r'DatiCalcRata';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DatiCalcRata object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.codiceErrore != null) {
      yield r'codiceErrore';
      yield serializers.serialize(
        object.codiceErrore,
        specifiedType: const FullType(int),
      );
    }
    if (object.codiceIndice != null) {
      yield r'codiceIndice';
      yield serializers.serialize(
        object.codiceIndice,
        specifiedType: const FullType(String),
      );
    }
    if (object.cpi != null) {
      yield r'cpi';
      yield serializers.serialize(
        object.cpi,
        specifiedType: const FullType(num),
      );
    }
    if (object.error != null) {
      yield r'error';
      yield serializers.serialize(
        object.error,
        specifiedType: const FullType(String),
      );
    }
    if (object.importoMaxiRata != null) {
      yield r'importoMaxiRata';
      yield serializers.serialize(
        object.importoMaxiRata,
        specifiedType: const FullType(num),
      );
    }
    if (object.importoRata != null) {
      yield r'importoRata';
      yield serializers.serialize(
        object.importoRata,
        specifiedType: const FullType(num),
      );
    }
    if (object.importoRata2 != null) {
      yield r'importoRata2';
      yield serializers.serialize(
        object.importoRata2,
        specifiedType: const FullType(num),
      );
    }
    if (object.importoTotaleAltraAssicurazione != null) {
      yield r'importoTotaleAltraAssicurazione';
      yield serializers.serialize(
        object.importoTotaleAltraAssicurazione,
        specifiedType: const FullType(num),
      );
    }
    if (object.importoTotaleSalvarata != null) {
      yield r'importoTotaleSalvarata';
      yield serializers.serialize(
        object.importoTotaleSalvarata,
        specifiedType: const FullType(num),
      );
    }
    if (object.interessiDilazione != null) {
      yield r'interessiDilazione';
      yield serializers.serialize(
        object.interessiDilazione,
        specifiedType: const FullType(num),
      );
    }
    if (object.numRate1asInt != null) {
      yield r'numRate1asInt';
      yield serializers.serialize(
        object.numRate1asInt,
        specifiedType: const FullType(int),
      );
    }
    if (object.numRate2asInt != null) {
      yield r'numRate2asInt';
      yield serializers.serialize(
        object.numRate2asInt,
        specifiedType: const FullType(int),
      );
    }
    if (object.numeroRate != null) {
      yield r'numeroRate';
      yield serializers.serialize(
        object.numeroRate,
        specifiedType: const FullType(String),
      );
    }
    if (object.numeroRate2 != null) {
      yield r'numeroRate2';
      yield serializers.serialize(
        object.numeroRate2,
        specifiedType: const FullType(String),
      );
    }
    if (object.rateConAssicurazione != null) {
      yield r'rateConAssicurazione';
      yield serializers.serialize(
        object.rateConAssicurazione,
        specifiedType: const FullType(num),
      );
    }
    if (object.speseIcassiRata != null) {
      yield r'speseIcassiRata';
      yield serializers.serialize(
        object.speseIcassiRata,
        specifiedType: const FullType(num),
      );
    }
    if (object.spreadContr != null) {
      yield r'spreadContr';
      yield serializers.serialize(
        object.spreadContr,
        specifiedType: const FullType(num),
      );
    }
    if (object.taeg != null) {
      yield r'taeg';
      yield serializers.serialize(
        object.taeg,
        specifiedType: const FullType(num),
      );
    }
    if (object.taeg1 != null) {
      yield r'taeg1';
      yield serializers.serialize(
        object.taeg1,
        specifiedType: const FullType(num),
      );
    }
    if (object.taeg2 != null) {
      yield r'taeg2';
      yield serializers.serialize(
        object.taeg2,
        specifiedType: const FullType(num),
      );
    }
    if (object.taegCpi != null) {
      yield r'taegCpi';
      yield serializers.serialize(
        object.taegCpi,
        specifiedType: const FullType(num),
      );
    }
    if (object.taegTot != null) {
      yield r'taegTot';
      yield serializers.serialize(
        object.taegTot,
        specifiedType: const FullType(num),
      );
    }
    if (object.tan != null) {
      yield r'tan';
      yield serializers.serialize(
        object.tan,
        specifiedType: const FullType(num),
      );
    }
    if (object.tan1 != null) {
      yield r'tan1';
      yield serializers.serialize(
        object.tan1,
        specifiedType: const FullType(num),
      );
    }
    if (object.tan2 != null) {
      yield r'tan2';
      yield serializers.serialize(
        object.tan2,
        specifiedType: const FullType(num),
      );
    }
    if (object.tassoCap != null) {
      yield r'tassoCap';
      yield serializers.serialize(
        object.tassoCap,
        specifiedType: const FullType(num),
      );
    }
    if (object.valoreIndice != null) {
      yield r'valoreIndice';
      yield serializers.serialize(
        object.valoreIndice,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DatiCalcRata object, {
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
    required DatiCalcRataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'codiceErrore':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.codiceErrore = valueDes;
          break;
        case r'codiceIndice':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.codiceIndice = valueDes;
          break;
        case r'cpi':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.cpi = valueDes;
          break;
        case r'error':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.error = valueDes;
          break;
        case r'importoMaxiRata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.importoMaxiRata = valueDes;
          break;
        case r'importoRata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.importoRata = valueDes;
          break;
        case r'importoRata2':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.importoRata2 = valueDes;
          break;
        case r'importoTotaleAltraAssicurazione':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.importoTotaleAltraAssicurazione = valueDes;
          break;
        case r'importoTotaleSalvarata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.importoTotaleSalvarata = valueDes;
          break;
        case r'interessiDilazione':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.interessiDilazione = valueDes;
          break;
        case r'numRate1asInt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.numRate1asInt = valueDes;
          break;
        case r'numRate2asInt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.numRate2asInt = valueDes;
          break;
        case r'numeroRate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.numeroRate = valueDes;
          break;
        case r'numeroRate2':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.numeroRate2 = valueDes;
          break;
        case r'rateConAssicurazione':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.rateConAssicurazione = valueDes;
          break;
        case r'speseIcassiRata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.speseIcassiRata = valueDes;
          break;
        case r'spreadContr':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.spreadContr = valueDes;
          break;
        case r'taeg':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.taeg = valueDes;
          break;
        case r'taeg1':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.taeg1 = valueDes;
          break;
        case r'taeg2':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.taeg2 = valueDes;
          break;
        case r'taegCpi':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.taegCpi = valueDes;
          break;
        case r'taegTot':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.taegTot = valueDes;
          break;
        case r'tan':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.tan = valueDes;
          break;
        case r'tan1':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.tan1 = valueDes;
          break;
        case r'tan2':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.tan2 = valueDes;
          break;
        case r'tassoCap':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.tassoCap = valueDes;
          break;
        case r'valoreIndice':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.valoreIndice = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DatiCalcRata deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DatiCalcRataBuilder();
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
