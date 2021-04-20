import '../gen/protos/protos.pb.dart';

/// Represents the result of a scan
class ScanResult {
  /// Creates a new scan result
  ScanResult({
    this.type = ResultType.Barcode,
    this.rawContent = '',
    this.format = BarcodeFormat.unknown,
    this.formatNote = '',
  });

  /// Represents the type of the result
  final ResultType type;

  /// The barcode itself if the result type is barcode.
  /// If the result type is error it contains the error message
  final String rawContent;

  /// The barcode format
  final BarcodeFormat format;

  /// If the format is unknown, this field holds additional information
  final String formatNote;
}
