import '../gen/protos/protos.pb.dart';
import 'android_options.dart';

/// Provides options to configure the barcode scanner
class const ScanOptions({
  /// Restrict the supported barcode formats
  final List<BarcodeFormat> restrictFormat = const [],

  /// Index of the camera which should used. -1 uses the default camera
  final int useCamera = -1,

  /// Android specific configuration
  final AndroidOptions android = const AndroidOptions(),

  /// Set to true to automatically enable flash on camera start
  final bool autoEnableFlash = false,

  /// This map contains strings which are displayed to the user
  ///
  /// Possible pairs:
  /// - cancel : The text of the cancel button (iOS only)
  /// - flash_on : The text of the flash on button
  /// - flash_off : The Text of the flash off button
  final Map<String, String> strings = const {
    'cancel': 'Cancel',
    'flash_on': 'Flash on',
    'flash_off': 'Flash off',
  },
}) {
  /// Create a object which represents the scanner options
  this : assert(useCamera >= -1);
}
