///
//  Generated code. Do not modify.
//  source: protos/protos.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'protos.pbenum.dart';

export 'protos.pbenum.dart';

class AndroidConfiguration extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AndroidConfiguration', createEmptyInstance: create)
    ..a<$core.double>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'aspectTolerance', $pb.PbFieldType.OD, protoName: 'aspectTolerance')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'useAutoFocus', protoName: 'useAutoFocus')
    ..hasRequiredFields = false
  ;

  AndroidConfiguration._() : super();
  factory AndroidConfiguration({
    $core.double? aspectTolerance,
    $core.bool? useAutoFocus,
  }) {
    final _result = create();
    if (aspectTolerance != null) {
      _result.aspectTolerance = aspectTolerance;
    }
    if (useAutoFocus != null) {
      _result.useAutoFocus = useAutoFocus;
    }
    return _result;
  }
  factory AndroidConfiguration.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AndroidConfiguration.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AndroidConfiguration clone() => AndroidConfiguration()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AndroidConfiguration copyWith(void Function(AndroidConfiguration) updates) => super.copyWith((message) => updates(message as AndroidConfiguration)) as AndroidConfiguration; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AndroidConfiguration create() => AndroidConfiguration._();
  AndroidConfiguration createEmptyInstance() => create();
  static $pb.PbList<AndroidConfiguration> createRepeated() => $pb.PbList<AndroidConfiguration>();
  @$core.pragma('dart2js:noInline')
  static AndroidConfiguration getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AndroidConfiguration>(create);
  static AndroidConfiguration? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get aspectTolerance => $_getN(0);
  @$pb.TagNumber(1)
  set aspectTolerance($core.double v) { $_setDouble(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAspectTolerance() => $_has(0);
  @$pb.TagNumber(1)
  void clearAspectTolerance() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get useAutoFocus => $_getBF(1);
  @$pb.TagNumber(2)
  set useAutoFocus($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUseAutoFocus() => $_has(1);
  @$pb.TagNumber(2)
  void clearUseAutoFocus() => clearField(2);
}

class Configuration extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Configuration', createEmptyInstance: create)
    ..m<$core.String, $core.String>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'strings', entryClassName: 'Configuration.StringsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS)
    ..pc<BarcodeFormat>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'restrictFormat', $pb.PbFieldType.PE, protoName: 'restrictFormat', valueOf: BarcodeFormat.valueOf, enumValues: BarcodeFormat.values)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'useCamera', $pb.PbFieldType.O3, protoName: 'useCamera')
    ..aOM<AndroidConfiguration>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'android', subBuilder: AndroidConfiguration.create)
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'autoEnableFlash', protoName: 'autoEnableFlash')
    ..hasRequiredFields = false
  ;

  Configuration._() : super();
  factory Configuration({
    $core.Map<$core.String, $core.String>? strings,
    $core.Iterable<BarcodeFormat>? restrictFormat,
    $core.int? useCamera,
    AndroidConfiguration? android,
    $core.bool? autoEnableFlash,
  }) {
    final _result = create();
    if (strings != null) {
      _result.strings.addAll(strings);
    }
    if (restrictFormat != null) {
      _result.restrictFormat.addAll(restrictFormat);
    }
    if (useCamera != null) {
      _result.useCamera = useCamera;
    }
    if (android != null) {
      _result.android = android;
    }
    if (autoEnableFlash != null) {
      _result.autoEnableFlash = autoEnableFlash;
    }
    return _result;
  }
  factory Configuration.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Configuration.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Configuration clone() => Configuration()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Configuration copyWith(void Function(Configuration) updates) => super.copyWith((message) => updates(message as Configuration)) as Configuration; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Configuration create() => Configuration._();
  Configuration createEmptyInstance() => create();
  static $pb.PbList<Configuration> createRepeated() => $pb.PbList<Configuration>();
  @$core.pragma('dart2js:noInline')
  static Configuration getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Configuration>(create);
  static Configuration? _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.String, $core.String> get strings => $_getMap(0);

  @$pb.TagNumber(2)
  $core.List<BarcodeFormat> get restrictFormat => $_getList(1);

  @$pb.TagNumber(3)
  $core.int get useCamera => $_getIZ(2);
  @$pb.TagNumber(3)
  set useCamera($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUseCamera() => $_has(2);
  @$pb.TagNumber(3)
  void clearUseCamera() => clearField(3);

  @$pb.TagNumber(4)
  AndroidConfiguration get android => $_getN(3);
  @$pb.TagNumber(4)
  set android(AndroidConfiguration v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasAndroid() => $_has(3);
  @$pb.TagNumber(4)
  void clearAndroid() => clearField(4);
  @$pb.TagNumber(4)
  AndroidConfiguration ensureAndroid() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.bool get autoEnableFlash => $_getBF(4);
  @$pb.TagNumber(5)
  set autoEnableFlash($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAutoEnableFlash() => $_has(4);
  @$pb.TagNumber(5)
  void clearAutoEnableFlash() => clearField(5);
}

class ScanResult extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ScanResult', createEmptyInstance: create)
    ..e<ResultType>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: ResultType.Barcode, valueOf: ResultType.valueOf, enumValues: ResultType.values)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rawContent', protoName: 'rawContent')
    ..e<BarcodeFormat>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'format', $pb.PbFieldType.OE, defaultOrMaker: BarcodeFormat.unknown, valueOf: BarcodeFormat.valueOf, enumValues: BarcodeFormat.values)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'formatNote', protoName: 'formatNote')
    ..hasRequiredFields = false
  ;

  ScanResult._() : super();
  factory ScanResult({
    ResultType? type,
    $core.String? rawContent,
    BarcodeFormat? format,
    $core.String? formatNote,
  }) {
    final _result = create();
    if (type != null) {
      _result.type = type;
    }
    if (rawContent != null) {
      _result.rawContent = rawContent;
    }
    if (format != null) {
      _result.format = format;
    }
    if (formatNote != null) {
      _result.formatNote = formatNote;
    }
    return _result;
  }
  factory ScanResult.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ScanResult.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ScanResult clone() => ScanResult()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ScanResult copyWith(void Function(ScanResult) updates) => super.copyWith((message) => updates(message as ScanResult)) as ScanResult; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ScanResult create() => ScanResult._();
  ScanResult createEmptyInstance() => create();
  static $pb.PbList<ScanResult> createRepeated() => $pb.PbList<ScanResult>();
  @$core.pragma('dart2js:noInline')
  static ScanResult getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ScanResult>(create);
  static ScanResult? _defaultInstance;

  @$pb.TagNumber(1)
  ResultType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(ResultType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get rawContent => $_getSZ(1);
  @$pb.TagNumber(2)
  set rawContent($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRawContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearRawContent() => clearField(2);

  @$pb.TagNumber(3)
  BarcodeFormat get format => $_getN(2);
  @$pb.TagNumber(3)
  set format(BarcodeFormat v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasFormat() => $_has(2);
  @$pb.TagNumber(3)
  void clearFormat() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get formatNote => $_getSZ(3);
  @$pb.TagNumber(4)
  set formatNote($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFormatNote() => $_has(3);
  @$pb.TagNumber(4)
  void clearFormatNote() => clearField(4);
}

