---
name: barcode_scan2-scanning
description: >-
  Use when scanning 2D barcodes or QR codes, configuring camera permissions,
  or filtering barcode formats in Flutter using barcode_scan2.
---

# barcode_scan2 Barcode & QR Scanning Guide

`barcode_scan2` is a Flutter camera plugin for scanning 2D barcodes and QR codes with sound null safety support, built-in flashlight control, and customizable scanning options.

## Guidelines

- **Native Permission Configuration (Mandatory)**:
  - **iOS (`Info.plist`)**: Always add `NSCameraUsageDescription` with a user-facing explanation:
    ```xml
    <key>NSCameraUsageDescription</key>
    <string>Camera access is required to scan barcodes and QR codes.</string>
    ```
  - **Android (`AndroidManifest.xml`)**: Ensure camera permission is declared:
    ```xml
    <uses-permission android:name="android.permission.CAMERA" />
    ```
- **Initiating Scan**:
  - Call `final result = await BarcodeScanner.scan(options: ...);`.
- **Handling Scan Results**:
  - Check `result.type`:
    - `ResultType.Barcode`: Successful scan. Access `result.rawContent` and `result.format`.
    - `ResultType.Cancelled`: User dismissed or backed out of the scanner. Do not treat as an error.
    - `ResultType.Error`: Access `result.rawContent` for error diagnostic information.
- **Handling Permission Exceptions**:
  - Wrap `BarcodeScanner.scan()` in a `try-catch` block catching `PlatformException`.
  - Check `if (e.code == BarcodeScanner.cameraAccessDenied)` to present a permissions dialog directing the user to system settings.
- **Format Restrictions & Performance**:
  - When scanning only QR codes, set `restrictFormat: [BarcodeFormat.qr]` in `ScanOptions` to speed up recognition.

## Examples

### 1. Basic Barcode / QR Code Scanner

```dart
import 'package:barcode_scan2/barcode_scan2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future<String?> scanCode(BuildContext context) async {
  try {
    final result = await BarcodeScanner.scan(
      options: const ScanOptions(
        strings: {
          'cancel': 'Cancel',
          'flash_on': 'Flash on',
          'flash_off': 'Flash off',
        },
        restrictFormat: [BarcodeFormat.qr],
        useCamera: -1, // Back camera default
        autoEnableFlash: false,
        android: AndroidOptions(
          aspectTolerance: 0.5,
          useAutoFocus: true,
        ),
      ),
    );

    switch (result.type) {
      case ResultType.Barcode:
        return result.rawContent;
      case ResultType.Cancelled:
        return null;
      case ResultType.Error:
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Scan error: ${result.rawContent}')),
        );
        return null;
    }
  } on PlatformException catch (e) {
    if (e.code == BarcodeScanner.cameraAccessDenied) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Camera permission was denied.')),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Unexpected error: ${e.message}')),
      );
    }
    return null;
  }
}
```

## Common Pitfalls & Anti-Patterns

- ❌ **Anti-pattern**: Forgetting `NSCameraUsageDescription` in `ios/Runner/Info.plist`, causing immediate app crash on iOS when camera opens.
  - ✔️ **Correct**: Add the description string before calling `BarcodeScanner.scan()`.
- ❌ **Anti-pattern**: Assuming `result.rawContent` is non-empty without checking `result.type == ResultType.Barcode`.
  - ✔️ **Correct**: Always verify `result.type` first.
