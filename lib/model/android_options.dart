/// Android specific scan options
class const AndroidOptions({
  /// You can optionally set aspect ratio tolerance level
  /// that is used in calculating the optimal Camera preview size.
  /// This parameter is only supported on Android devices.
  final double aspectTolerance = 0.5,

  /// Set to true to enable auto focus
  /// This parameter is only supported on Android devices.
  final bool useAutoFocus = true,

  /// This sets the string in the appBar (Android only)
  final String appBarTitle = '',
}) {
  /// Create Android specific scan options
  this;
}
