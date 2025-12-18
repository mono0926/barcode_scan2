// This is a generated file - do not edit.
//
// Generated from protos/protos.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'protos.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'protos.pbenum.dart';

/// protos/android_configuration.proto
class AndroidConfiguration extends $pb.GeneratedMessage {
  factory AndroidConfiguration({
    $core.double? aspectTolerance,
    $core.bool? useAutoFocus,
    $core.String? appBarTitle,
  }) {
    final result = create();
    if (aspectTolerance != null) result.aspectTolerance = aspectTolerance;
    if (useAutoFocus != null) result.useAutoFocus = useAutoFocus;
    if (appBarTitle != null) result.appBarTitle = appBarTitle;
    return result;
  }

  AndroidConfiguration._();

  factory AndroidConfiguration.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AndroidConfiguration.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AndroidConfiguration',
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'aspectTolerance',
        protoName: 'aspectTolerance')
    ..aOB(2, _omitFieldNames ? '' : 'useAutoFocus', protoName: 'useAutoFocus')
    ..aOS(3, _omitFieldNames ? '' : 'appBarTitle', protoName: 'appBarTitle')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AndroidConfiguration clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AndroidConfiguration copyWith(void Function(AndroidConfiguration) updates) =>
      super.copyWith((message) => updates(message as AndroidConfiguration))
          as AndroidConfiguration;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AndroidConfiguration create() => AndroidConfiguration._();
  @$core.override
  AndroidConfiguration createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AndroidConfiguration getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AndroidConfiguration>(create);
  static AndroidConfiguration? _defaultInstance;

  /// You can optionally set aspect ratio tolerance level
  /// that is used in calculating the optimal Camera preview size.
  /// On several Huawei devices you need to set this to 0.5.
  /// This parameter is only supported on Android devices.
  @$pb.TagNumber(1)
  $core.double get aspectTolerance => $_getN(0);
  @$pb.TagNumber(1)
  set aspectTolerance($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAspectTolerance() => $_has(0);
  @$pb.TagNumber(1)
  void clearAspectTolerance() => $_clearField(1);

  /// Set to true to enable auto focus
  /// This parameter is only supported on Android devices.
  @$pb.TagNumber(2)
  $core.bool get useAutoFocus => $_getBF(1);
  @$pb.TagNumber(2)
  set useAutoFocus($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasUseAutoFocus() => $_has(1);
  @$pb.TagNumber(2)
  void clearUseAutoFocus() => $_clearField(2);

  /// This sets the string in the appBar (Android only)
  @$pb.TagNumber(3)
  $core.String get appBarTitle => $_getSZ(2);
  @$pb.TagNumber(3)
  set appBarTitle($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasAppBarTitle() => $_has(2);
  @$pb.TagNumber(3)
  void clearAppBarTitle() => $_clearField(3);
}

/// protos/configuration.proto
class Configuration extends $pb.GeneratedMessage {
  factory Configuration({
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? strings,
    $core.Iterable<BarcodeFormat>? restrictFormat,
    $core.int? useCamera,
    AndroidConfiguration? android,
    $core.bool? autoEnableFlash,
  }) {
    final result = create();
    if (strings != null) result.strings.addEntries(strings);
    if (restrictFormat != null) result.restrictFormat.addAll(restrictFormat);
    if (useCamera != null) result.useCamera = useCamera;
    if (android != null) result.android = android;
    if (autoEnableFlash != null) result.autoEnableFlash = autoEnableFlash;
    return result;
  }

  Configuration._();

  factory Configuration.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Configuration.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Configuration',
      createEmptyInstance: create)
    ..m<$core.String, $core.String>(1, _omitFieldNames ? '' : 'strings',
        entryClassName: 'Configuration.StringsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS)
    ..pc<BarcodeFormat>(
        2, _omitFieldNames ? '' : 'restrictFormat', $pb.PbFieldType.KE,
        protoName: 'restrictFormat',
        valueOf: BarcodeFormat.valueOf,
        enumValues: BarcodeFormat.values,
        defaultEnumValue: BarcodeFormat.unknown)
    ..aI(3, _omitFieldNames ? '' : 'useCamera', protoName: 'useCamera')
    ..aOM<AndroidConfiguration>(4, _omitFieldNames ? '' : 'android',
        subBuilder: AndroidConfiguration.create)
    ..aOB(5, _omitFieldNames ? '' : 'autoEnableFlash',
        protoName: 'autoEnableFlash')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Configuration clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Configuration copyWith(void Function(Configuration) updates) =>
      super.copyWith((message) => updates(message as Configuration))
          as Configuration;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Configuration create() => Configuration._();
  @$core.override
  Configuration createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Configuration getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Configuration>(create);
  static Configuration? _defaultInstance;

  /// Strings which are displayed to the user
  @$pb.TagNumber(1)
  $pb.PbMap<$core.String, $core.String> get strings => $_getMap(0);

  /// Restricts the barcode format which should be read
  @$pb.TagNumber(2)
  $pb.PbList<BarcodeFormat> get restrictFormat => $_getList(1);

  /// Index of the camera which should used. -1 uses the default camera
  @$pb.TagNumber(3)
  $core.int get useCamera => $_getIZ(2);
  @$pb.TagNumber(3)
  set useCamera($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasUseCamera() => $_has(2);
  @$pb.TagNumber(3)
  void clearUseCamera() => $_clearField(3);

  /// Android specific configuration
  @$pb.TagNumber(4)
  AndroidConfiguration get android => $_getN(3);
  @$pb.TagNumber(4)
  set android(AndroidConfiguration value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasAndroid() => $_has(3);
  @$pb.TagNumber(4)
  void clearAndroid() => $_clearField(4);
  @$pb.TagNumber(4)
  AndroidConfiguration ensureAndroid() => $_ensure(3);

  /// Set to true to automatically enable flash on camera start
  @$pb.TagNumber(5)
  $core.bool get autoEnableFlash => $_getBF(4);
  @$pb.TagNumber(5)
  set autoEnableFlash($core.bool value) => $_setBool(4, value);
  @$pb.TagNumber(5)
  $core.bool hasAutoEnableFlash() => $_has(4);
  @$pb.TagNumber(5)
  void clearAutoEnableFlash() => $_clearField(5);
}

class ScanResult extends $pb.GeneratedMessage {
  factory ScanResult({
    ResultType? type,
    $core.String? rawContent,
    BarcodeFormat? format,
    $core.String? formatNote,
  }) {
    final result = create();
    if (type != null) result.type = type;
    if (rawContent != null) result.rawContent = rawContent;
    if (format != null) result.format = format;
    if (formatNote != null) result.formatNote = formatNote;
    return result;
  }

  ScanResult._();

  factory ScanResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ScanResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ScanResult',
      createEmptyInstance: create)
    ..aE<ResultType>(1, _omitFieldNames ? '' : 'type',
        enumValues: ResultType.values)
    ..aOS(2, _omitFieldNames ? '' : 'rawContent', protoName: 'rawContent')
    ..aE<BarcodeFormat>(3, _omitFieldNames ? '' : 'format',
        enumValues: BarcodeFormat.values)
    ..aOS(4, _omitFieldNames ? '' : 'formatNote', protoName: 'formatNote')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ScanResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ScanResult copyWith(void Function(ScanResult) updates) =>
      super.copyWith((message) => updates(message as ScanResult)) as ScanResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ScanResult create() => ScanResult._();
  @$core.override
  ScanResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ScanResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ScanResult>(create);
  static ScanResult? _defaultInstance;

  /// Represents the type of the result
  @$pb.TagNumber(1)
  ResultType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(ResultType value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  /// The barcode itself if the result type is barcode.
  /// If the result type is error it contains the error message
  @$pb.TagNumber(2)
  $core.String get rawContent => $_getSZ(1);
  @$pb.TagNumber(2)
  set rawContent($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRawContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearRawContent() => $_clearField(2);

  /// The barcode format
  @$pb.TagNumber(3)
  BarcodeFormat get format => $_getN(2);
  @$pb.TagNumber(3)
  set format(BarcodeFormat value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasFormat() => $_has(2);
  @$pb.TagNumber(3)
  void clearFormat() => $_clearField(3);

  /// If the format is unknown, this field holds additional information
  @$pb.TagNumber(4)
  $core.String get formatNote => $_getSZ(3);
  @$pb.TagNumber(4)
  set formatNote($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasFormatNote() => $_has(3);
  @$pb.TagNumber(4)
  void clearFormatNote() => $_clearField(4);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
