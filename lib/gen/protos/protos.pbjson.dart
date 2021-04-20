///
//  Generated code. Do not modify.
//  source: protos/protos.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use barcodeFormatDescriptor instead')
const BarcodeFormat$json = {
  '1': 'BarcodeFormat',
  '2': [
    {'1': 'unknown', '2': 0},
    {'1': 'aztec', '2': 1},
    {'1': 'code39', '2': 2},
    {'1': 'code93', '2': 3},
    {'1': 'ean8', '2': 4},
    {'1': 'ean13', '2': 5},
    {'1': 'code128', '2': 6},
    {'1': 'dataMatrix', '2': 7},
    {'1': 'qr', '2': 8},
    {'1': 'interleaved2of5', '2': 9},
    {'1': 'upce', '2': 10},
    {'1': 'pdf417', '2': 11},
  ],
};

/// Descriptor for `BarcodeFormat`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List barcodeFormatDescriptor = $convert.base64Decode(
    'Cg1CYXJjb2RlRm9ybWF0EgsKB3Vua25vd24QABIJCgVhenRlYxABEgoKBmNvZGUzORACEgoKBmNvZGU5MxADEggKBGVhbjgQBBIJCgVlYW4xMxAFEgsKB2NvZGUxMjgQBhIOCgpkYXRhTWF0cml4EAcSBgoCcXIQCBITCg9pbnRlcmxlYXZlZDJvZjUQCRIICgR1cGNlEAoSCgoGcGRmNDE3EAs=');
@$core.Deprecated('Use resultTypeDescriptor instead')
const ResultType$json = {
  '1': 'ResultType',
  '2': [
    {'1': 'Barcode', '2': 0},
    {'1': 'Cancelled', '2': 1},
    {'1': 'Error', '2': 2},
  ],
};

/// Descriptor for `ResultType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List resultTypeDescriptor = $convert.base64Decode(
    'CgpSZXN1bHRUeXBlEgsKB0JhcmNvZGUQABINCglDYW5jZWxsZWQQARIJCgVFcnJvchAC');
@$core.Deprecated('Use androidConfigurationDescriptor instead')
const AndroidConfiguration$json = {
  '1': 'AndroidConfiguration',
  '2': [
    {'1': 'aspectTolerance', '3': 1, '4': 1, '5': 1, '10': 'aspectTolerance'},
    {'1': 'useAutoFocus', '3': 2, '4': 1, '5': 8, '10': 'useAutoFocus'},
  ],
};

/// Descriptor for `AndroidConfiguration`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List androidConfigurationDescriptor = $convert.base64Decode(
    'ChRBbmRyb2lkQ29uZmlndXJhdGlvbhIoCg9hc3BlY3RUb2xlcmFuY2UYASABKAFSD2FzcGVjdFRvbGVyYW5jZRIiCgx1c2VBdXRvRm9jdXMYAiABKAhSDHVzZUF1dG9Gb2N1cw==');
@$core.Deprecated('Use configurationDescriptor instead')
const Configuration$json = {
  '1': 'Configuration',
  '2': [
    {
      '1': 'strings',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.Configuration.StringsEntry',
      '10': 'strings'
    },
    {
      '1': 'restrictFormat',
      '3': 2,
      '4': 3,
      '5': 14,
      '6': '.BarcodeFormat',
      '10': 'restrictFormat'
    },
    {'1': 'useCamera', '3': 3, '4': 1, '5': 5, '10': 'useCamera'},
    {
      '1': 'android',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.AndroidConfiguration',
      '10': 'android'
    },
    {'1': 'autoEnableFlash', '3': 5, '4': 1, '5': 8, '10': 'autoEnableFlash'},
  ],
  '3': [Configuration_StringsEntry$json],
};

@$core.Deprecated('Use configurationDescriptor instead')
const Configuration_StringsEntry$json = {
  '1': 'StringsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `Configuration`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List configurationDescriptor = $convert.base64Decode(
    'Cg1Db25maWd1cmF0aW9uEjUKB3N0cmluZ3MYASADKAsyGy5Db25maWd1cmF0aW9uLlN0cmluZ3NFbnRyeVIHc3RyaW5ncxI2Cg5yZXN0cmljdEZvcm1hdBgCIAMoDjIOLkJhcmNvZGVGb3JtYXRSDnJlc3RyaWN0Rm9ybWF0EhwKCXVzZUNhbWVyYRgDIAEoBVIJdXNlQ2FtZXJhEi8KB2FuZHJvaWQYBCABKAsyFS5BbmRyb2lkQ29uZmlndXJhdGlvblIHYW5kcm9pZBIoCg9hdXRvRW5hYmxlRmxhc2gYBSABKAhSD2F1dG9FbmFibGVGbGFzaBo6CgxTdHJpbmdzRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVlOgI4AQ==');
@$core.Deprecated('Use scanResultDescriptor instead')
const ScanResult$json = {
  '1': 'ScanResult',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.ResultType', '10': 'type'},
    {'1': 'rawContent', '3': 2, '4': 1, '5': 9, '10': 'rawContent'},
    {
      '1': 'format',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.BarcodeFormat',
      '10': 'format'
    },
    {'1': 'formatNote', '3': 4, '4': 1, '5': 9, '10': 'formatNote'},
  ],
};

/// Descriptor for `ScanResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List scanResultDescriptor = $convert.base64Decode(
    'CgpTY2FuUmVzdWx0Eh8KBHR5cGUYASABKA4yCy5SZXN1bHRUeXBlUgR0eXBlEh4KCnJhd0NvbnRlbnQYAiABKAlSCnJhd0NvbnRlbnQSJgoGZm9ybWF0GAMgASgOMg4uQmFyY29kZUZvcm1hdFIGZm9ybWF0Eh4KCmZvcm1hdE5vdGUYBCABKAlSCmZvcm1hdE5vdGU=');
