///
//  Generated code. Do not modify.
//  source: protos/protos.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class BarcodeFormat extends $pb.ProtobufEnum {
  static const BarcodeFormat unknown = BarcodeFormat._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'unknown');
  static const BarcodeFormat aztec = BarcodeFormat._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'aztec');
  static const BarcodeFormat code39 = BarcodeFormat._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'code39');
  static const BarcodeFormat code93 = BarcodeFormat._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'code93');
  static const BarcodeFormat ean8 = BarcodeFormat._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ean8');
  static const BarcodeFormat ean13 = BarcodeFormat._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ean13');
  static const BarcodeFormat code128 = BarcodeFormat._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'code128');
  static const BarcodeFormat dataMatrix = BarcodeFormat._(7, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'dataMatrix');
  static const BarcodeFormat qr = BarcodeFormat._(8, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'qr');
  static const BarcodeFormat interleaved2of5 = BarcodeFormat._(9, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'interleaved2of5');
  static const BarcodeFormat upce = BarcodeFormat._(10, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'upce');
  static const BarcodeFormat pdf417 = BarcodeFormat._(11, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'pdf417');

  static const $core.List<BarcodeFormat> values = <BarcodeFormat> [
    unknown,
    aztec,
    code39,
    code93,
    ean8,
    ean13,
    code128,
    dataMatrix,
    qr,
    interleaved2of5,
    upce,
    pdf417,
  ];

  static final $core.Map<$core.int, BarcodeFormat> _byValue = $pb.ProtobufEnum.initByValue(values);
  static BarcodeFormat? valueOf($core.int value) => _byValue[value];

  const BarcodeFormat._($core.int v, $core.String n) : super(v, n);
}

class ResultType extends $pb.ProtobufEnum {
  static const ResultType Barcode = ResultType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Barcode');
  static const ResultType Cancelled = ResultType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Cancelled');
  static const ResultType Error = ResultType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Error');

  static const $core.List<ResultType> values = <ResultType> [
    Barcode,
    Cancelled,
    Error,
  ];

  static final $core.Map<$core.int, ResultType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ResultType? valueOf($core.int value) => _byValue[value];

  const ResultType._($core.int v, $core.String n) : super(v, n);
}

