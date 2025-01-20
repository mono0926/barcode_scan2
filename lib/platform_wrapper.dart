import 'dart:async';
import 'dart:io' show Platform;

import 'package:flutter/services.dart';

import './model/model.dart';
import 'gen/protos/protos.pb.dart' as proto;

// ignore: avoid_classes_with_only_static_members
/// Barcode scanner plugin
/// Simply call `var barcode = await BarcodeScanner.scan()` to scan a barcode
class BarcodeScanner {
  /// If the user has granted the access to the camera this code is returned.
  static const cameraAccessGranted = 'PERMISSION_GRANTED';

  /// If the user has not granted the access to the camera this code is thrown.
  static const cameraAccessDenied = 'PERMISSION_NOT_GRANTED';

  /// The method channel
  static const MethodChannel _channel =
      MethodChannel('de.mintware.barcode_scan');

  /// The event channel
  static const EventChannel _eventChannel =
      EventChannel('de.mintware.barcode_scan/events');

  /// Starts the camera for scanning the barcode, shows a preview window and
  /// returns the barcode if one was scanned.
  /// Can throw an exception.
  /// See also [cameraAccessDenied]
  static Future<ScanResult> scan({
    ScanOptions options = const ScanOptions(),
  }) async {
    if (Platform.isIOS) {
      return _doScan(options);
    }

    final events = _eventChannel.receiveBroadcastStream();
    final completer = Completer<ScanResult>();

    late StreamSubscription<dynamic> subscription;
    subscription = events.listen((dynamic event) async {
      if (event is String) {
        if (event == cameraAccessGranted) {
          // ignore: unawaited_futures
          subscription.cancel();
          completer.complete(await _doScan(options));
        } else if (event == cameraAccessDenied) {
          // ignore: unawaited_futures
          subscription.cancel();
          completer.completeError(PlatformException(code: event));
        }
      }
    });

    final permissionsRequested =
        (await _channel.invokeMethod<bool>('requestCameraPermission'))!;

    if (permissionsRequested) {
      return completer.future;
    } else {
      await subscription.cancel();
      return _doScan(options);
    }
  }

  static Future<ScanResult> _doScan(ScanOptions options) async {
    final config = proto.Configuration()
      ..useCamera = options.useCamera
      ..restrictFormat.addAll(options.restrictFormat)
      ..autoEnableFlash = options.autoEnableFlash
      ..strings.addAll(options.strings)
      ..android = (proto.AndroidConfiguration()
        ..useAutoFocus = options.android.useAutoFocus
        ..aspectTolerance = options.android.aspectTolerance
        ..appBarTitle = options.android.appBarTitle);
    final buffer = (await _channel.invokeMethod<List<int>>(
      'scan',
      config.writeToBuffer(),
    ))!;
    final tmpResult = proto.ScanResult.fromBuffer(buffer);
    return ScanResult(
      format: tmpResult.format,
      formatNote: tmpResult.formatNote,
      rawContent: tmpResult.rawContent,
      type: tmpResult.type,
    );
  }

  /// Returns the number of cameras which are available
  /// Use n-1 as the index of the camera which should be used.
  static Future<int> get numberOfCameras async {
    return (await _channel.invokeMethod<int>('numberOfCameras'))!;
  }
}
