//
//  Generated code. Do not modify.
//  source: protos/protos.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// protos/barcode_format.proto
class BarcodeFormat extends $pb.ProtobufEnum {
  static const BarcodeFormat unknown = BarcodeFormat._(0, _omitEnumNames ? '' : 'unknown');
  static const BarcodeFormat aztec = BarcodeFormat._(1, _omitEnumNames ? '' : 'aztec');
  static const BarcodeFormat code39 = BarcodeFormat._(2, _omitEnumNames ? '' : 'code39');
  static const BarcodeFormat code93 = BarcodeFormat._(3, _omitEnumNames ? '' : 'code93');
  static const BarcodeFormat ean8 = BarcodeFormat._(4, _omitEnumNames ? '' : 'ean8');
  static const BarcodeFormat ean13 = BarcodeFormat._(5, _omitEnumNames ? '' : 'ean13');
  static const BarcodeFormat code128 = BarcodeFormat._(6, _omitEnumNames ? '' : 'code128');
  static const BarcodeFormat dataMatrix = BarcodeFormat._(7, _omitEnumNames ? '' : 'dataMatrix');
  static const BarcodeFormat qr = BarcodeFormat._(8, _omitEnumNames ? '' : 'qr');
  static const BarcodeFormat interleaved2of5 = BarcodeFormat._(9, _omitEnumNames ? '' : 'interleaved2of5');
  static const BarcodeFormat upce = BarcodeFormat._(10, _omitEnumNames ? '' : 'upce');
  static const BarcodeFormat pdf417 = BarcodeFormat._(11, _omitEnumNames ? '' : 'pdf417');

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

/// protos/scan_result.proto
class ResultType extends $pb.ProtobufEnum {
  static const ResultType Barcode = ResultType._(0, _omitEnumNames ? '' : 'Barcode');
  static const ResultType Cancelled = ResultType._(1, _omitEnumNames ? '' : 'Cancelled');
  static const ResultType Error = ResultType._(2, _omitEnumNames ? '' : 'Error');

  static const $core.List<ResultType> values = <ResultType> [
    Barcode,
    Cancelled,
    Error,
  ];

  static final $core.Map<$core.int, ResultType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ResultType? valueOf($core.int value) => _byValue[value];

  const ResultType._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
