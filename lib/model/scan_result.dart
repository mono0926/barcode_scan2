import '../gen/protos/protos.pb.dart';

/// Represents the result of a scan
class ScanResult({
  /// Represents the type of the result
  final ResultType type = ResultType.Barcode,

  /// The barcode itself if the result type is barcode.
  /// If the result type is error it contains the error message
  final String rawContent = '',

  /// The barcode format
  final BarcodeFormat format = BarcodeFormat.unknown,

  /// If the format is unknown, this field holds additional information
  final String formatNote = '',
}) {
  /// Creates a new scan result
  this;
}
