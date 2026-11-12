import 'package:barcode_scan2/barcode_scan2.dart';
import 'package:barcode_scan2/gen/protos/protos.pb.dart' as proto;
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  const channel = MethodChannel('de.mintware.barcode_scan');

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(channel, null);
  });

  group('Model classes', () {
    test('ScanOptions has expected defaults', () {
      const options = ScanOptions();
      expect(options.restrictFormat, isEmpty);
      expect(options.useCamera, -1);
      expect(options.autoEnableFlash, isFalse);
      expect(options.android.aspectTolerance, 0.5);
      expect(options.android.useAutoFocus, isTrue);
      expect(options.android.appBarTitle, isEmpty);
      expect(options.strings['cancel'], 'Cancel');
      expect(options.strings['flash_on'], 'Flash on');
      expect(options.strings['flash_off'], 'Flash off');
    });

    test('ScanResult has expected defaults', () {
      final result = ScanResult();
      expect(result.type, ResultType.Barcode);
      expect(result.rawContent, isEmpty);
      expect(result.format, BarcodeFormat.unknown);
      expect(result.formatNote, isEmpty);
    });
  });

  group('BarcodeScanner', () {
    test('numberOfCameras invokes platform method', () async {
      TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
          .setMockMethodCallHandler(channel, (call) async {
            if (call.method == 'numberOfCameras') {
              return 2;
            }
            return null;
          });

      expect(await BarcodeScanner.numberOfCameras, 2);
    });

    test(
      'scan decodes protobuf result when permission already granted',
      () async {
        TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
            .setMockMethodCallHandler(channel, (call) async {
              switch (call.method) {
                case 'requestCameraPermission':
                  return false;
                case 'scan':
                  final response = proto.ScanResult()
                    ..type = ResultType.Barcode
                    ..rawContent = 'https://example.com'
                    ..format = BarcodeFormat.qr
                    ..formatNote = '';
                  return response.writeToBuffer();
                default:
                  return null;
              }
            });

        final result = await BarcodeScanner.scan(
          options: const ScanOptions(
            restrictFormat: [BarcodeFormat.qr],
            autoEnableFlash: true,
          ),
        );

        expect(result.type, ResultType.Barcode);
        expect(result.rawContent, 'https://example.com');
        expect(result.format, BarcodeFormat.qr);
      },
    );
  });
}
