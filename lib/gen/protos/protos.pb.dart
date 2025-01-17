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

import 'protos.pbenum.dart';

export 'protos.pbenum.dart';

/// protos/android_configuration.proto
class AndroidConfiguration extends $pb.GeneratedMessage {
  factory AndroidConfiguration({
    $core.double? aspectTolerance,
    $core.bool? useAutoFocus,
    $core.String? appBarTitle,
  }) {
    final $result = create();
    if (aspectTolerance != null) {
      $result.aspectTolerance = aspectTolerance;
    }
    if (useAutoFocus != null) {
      $result.useAutoFocus = useAutoFocus;
    }
    if (appBarTitle != null) {
      $result.appBarTitle = appBarTitle;
    }
    return $result;
  }
  AndroidConfiguration._() : super();
  factory AndroidConfiguration.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AndroidConfiguration.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AndroidConfiguration', createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'aspectTolerance', $pb.PbFieldType.OD, protoName: 'aspectTolerance')
    ..aOB(2, _omitFieldNames ? '' : 'useAutoFocus', protoName: 'useAutoFocus')
    ..aOS(3, _omitFieldNames ? '' : 'appBarTitle', protoName: 'appBarTitle')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AndroidConfiguration clone() => AndroidConfiguration()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AndroidConfiguration copyWith(void Function(AndroidConfiguration) updates) => super.copyWith((message) => updates(message as AndroidConfiguration)) as AndroidConfiguration;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AndroidConfiguration create() => AndroidConfiguration._();
  AndroidConfiguration createEmptyInstance() => create();
  static $pb.PbList<AndroidConfiguration> createRepeated() => $pb.PbList<AndroidConfiguration>();
  @$core.pragma('dart2js:noInline')
  static AndroidConfiguration getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AndroidConfiguration>(create);
  static AndroidConfiguration? _defaultInstance;

  /// You can optionally set aspect ratio tolerance level
  /// that is used in calculating the optimal Camera preview size.
  /// On several Huawei devices you need to set this to 0.5.
  /// This parameter is only supported on Android devices.
  @$pb.TagNumber(1)
  $core.double get aspectTolerance => $_getN(0);
  @$pb.TagNumber(1)
  set aspectTolerance($core.double v) { $_setDouble(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAspectTolerance() => $_has(0);
  @$pb.TagNumber(1)
  void clearAspectTolerance() => clearField(1);

  /// Set to true to enable auto focus
  /// This parameter is only supported on Android devices.
  @$pb.TagNumber(2)
  $core.bool get useAutoFocus => $_getBF(1);
  @$pb.TagNumber(2)
  set useAutoFocus($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUseAutoFocus() => $_has(1);
  @$pb.TagNumber(2)
  void clearUseAutoFocus() => clearField(2);

  /// This sets the string in the appBar (Android only)
  @$pb.TagNumber(3)
  $core.String get appBarTitle => $_getSZ(2);
  @$pb.TagNumber(3)
  set appBarTitle($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAppBarTitle() => $_has(2);
  @$pb.TagNumber(3)
  void clearAppBarTitle() => clearField(3);
}

/// protos/configuration.proto
class Configuration extends $pb.GeneratedMessage {
  factory Configuration({
    $core.Map<$core.String, $core.String>? strings,
    $core.Iterable<BarcodeFormat>? restrictFormat,
    $core.int? useCamera,
    AndroidConfiguration? android,
    $core.bool? autoEnableFlash,
  }) {
    final $result = create();
    if (strings != null) {
      $result.strings.addAll(strings);
    }
    if (restrictFormat != null) {
      $result.restrictFormat.addAll(restrictFormat);
    }
    if (useCamera != null) {
      $result.useCamera = useCamera;
    }
    if (android != null) {
      $result.android = android;
    }
    if (autoEnableFlash != null) {
      $result.autoEnableFlash = autoEnableFlash;
    }
    return $result;
  }
  Configuration._() : super();
  factory Configuration.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Configuration.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Configuration', createEmptyInstance: create)
    ..m<$core.String, $core.String>(1, _omitFieldNames ? '' : 'strings', entryClassName: 'Configuration.StringsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS)
    ..pc<BarcodeFormat>(2, _omitFieldNames ? '' : 'restrictFormat', $pb.PbFieldType.KE, protoName: 'restrictFormat', valueOf: BarcodeFormat.valueOf, enumValues: BarcodeFormat.values, defaultEnumValue: BarcodeFormat.unknown)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'useCamera', $pb.PbFieldType.O3, protoName: 'useCamera')
    ..aOM<AndroidConfiguration>(4, _omitFieldNames ? '' : 'android', subBuilder: AndroidConfiguration.create)
    ..aOB(5, _omitFieldNames ? '' : 'autoEnableFlash', protoName: 'autoEnableFlash')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Configuration clone() => Configuration()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Configuration copyWith(void Function(Configuration) updates) => super.copyWith((message) => updates(message as Configuration)) as Configuration;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Configuration create() => Configuration._();
  Configuration createEmptyInstance() => create();
  static $pb.PbList<Configuration> createRepeated() => $pb.PbList<Configuration>();
  @$core.pragma('dart2js:noInline')
  static Configuration getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Configuration>(create);
  static Configuration? _defaultInstance;

  /// Strings which are displayed to the user
  @$pb.TagNumber(1)
  $core.Map<$core.String, $core.String> get strings => $_getMap(0);

  /// Restricts the barcode format which should be read
  @$pb.TagNumber(2)
  $core.List<BarcodeFormat> get restrictFormat => $_getList(1);

  /// Index of the camera which should used. -1 uses the default camera
  @$pb.TagNumber(3)
  $core.int get useCamera => $_getIZ(2);
  @$pb.TagNumber(3)
  set useCamera($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUseCamera() => $_has(2);
  @$pb.TagNumber(3)
  void clearUseCamera() => clearField(3);

  /// Android specific configuration
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

  /// Set to true to automatically enable flash on camera start
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
  factory ScanResult({
    ResultType? type,
    $core.String? rawContent,
    BarcodeFormat? format,
    $core.String? formatNote,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (rawContent != null) {
      $result.rawContent = rawContent;
    }
    if (format != null) {
      $result.format = format;
    }
    if (formatNote != null) {
      $result.formatNote = formatNote;
    }
    return $result;
  }
  ScanResult._() : super();
  factory ScanResult.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ScanResult.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ScanResult', createEmptyInstance: create)
    ..e<ResultType>(1, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: ResultType.Barcode, valueOf: ResultType.valueOf, enumValues: ResultType.values)
    ..aOS(2, _omitFieldNames ? '' : 'rawContent', protoName: 'rawContent')
    ..e<BarcodeFormat>(3, _omitFieldNames ? '' : 'format', $pb.PbFieldType.OE, defaultOrMaker: BarcodeFormat.unknown, valueOf: BarcodeFormat.valueOf, enumValues: BarcodeFormat.values)
    ..aOS(4, _omitFieldNames ? '' : 'formatNote', protoName: 'formatNote')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ScanResult clone() => ScanResult()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ScanResult copyWith(void Function(ScanResult) updates) => super.copyWith((message) => updates(message as ScanResult)) as ScanResult;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ScanResult create() => ScanResult._();
  ScanResult createEmptyInstance() => create();
  static $pb.PbList<ScanResult> createRepeated() => $pb.PbList<ScanResult>();
  @$core.pragma('dart2js:noInline')
  static ScanResult getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ScanResult>(create);
  static ScanResult? _defaultInstance;

  /// Represents the type of the result
  @$pb.TagNumber(1)
  ResultType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(ResultType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  /// The barcode itself if the result type is barcode.
  /// If the result type is error it contains the error message
  @$pb.TagNumber(2)
  $core.String get rawContent => $_getSZ(1);
  @$pb.TagNumber(2)
  set rawContent($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRawContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearRawContent() => clearField(2);

  /// The barcode format
  @$pb.TagNumber(3)
  BarcodeFormat get format => $_getN(2);
  @$pb.TagNumber(3)
  set format(BarcodeFormat v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasFormat() => $_has(2);
  @$pb.TagNumber(3)
  void clearFormat() => clearField(3);

  /// If the format is unknown, this field holds additional information
  @$pb.TagNumber(4)
  $core.String get formatNote => $_getSZ(3);
  @$pb.TagNumber(4)
  set formatNote($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFormatNote() => $_has(3);
  @$pb.TagNumber(4)
  void clearFormatNote() => clearField(4);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
