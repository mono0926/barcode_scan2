/// Android specific scan options
class AndroidOptions {
  /// Create Android specific scan options
  const AndroidOptions({
    this.aspectTolerance = 0.5,
    this.useAutoFocus = true,
    this.appBarTitle = '',
  });

  /// You can optionally set aspect ratio tolerance level
  /// that is used in calculating the optimal Camera preview size.
  /// This parameter is only supported on Android devices.
  final double aspectTolerance;

  /// Set to true to enable auto focus
  /// This parameter is only supported on Android devices.
  final bool useAutoFocus;

  /// This sets the string in the appBar (Android only)
  final String appBarTitle;
}
