import 'dart:async';
import 'dart:io' show Platform;

import 'package:barcode_scan2/barcode_scan2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(_MyApp());
}

class _MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<_MyApp> {
  ScanResult? scanResult;

  final _flashOnController = TextEditingController(text: 'Flash on');
  final _flashOffController = TextEditingController(text: 'Flash off');
  final _cancelController = TextEditingController(text: 'Cancel');

  var _aspectTolerance = 0.00;
  var _numberOfCameras = 0;
  var _selectedCamera = -1;
  var _useAutoFocus = true;
  var _autoEnableFlash = false;

  static final _possibleFormats = BarcodeFormat.values.toList()
    ..removeWhere((e) => e == BarcodeFormat.unknown);

  List<BarcodeFormat> selectedFormats = [..._possibleFormats];

  @override
  // ignore: type_annotate_public_apis
  initState() {
    super.initState();

    Future.delayed(Duration.zero, () async {
      _numberOfCameras = await BarcodeScanner.numberOfCameras;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    final scanResult = this.scanResult;
    final contentList = <Widget>[
      if (scanResult != null)
        Card(
          child: Column(
            children: <Widget>[
              ListTile(
                title: const Text('Result Type'),
                subtitle: Text(scanResult.type.toString()),
              ),
              ListTile(
                title: const Text('Raw Content'),
                subtitle: Text(scanResult.rawContent),
              ),
              ListTile(
                title: const Text('Format'),
                subtitle: Text(scanResult.format.toString()),
              ),
              ListTile(
                title: const Text('Format note'),
                subtitle: Text(scanResult.formatNote),
              ),
            ],
          ),
        ),
      const ListTile(
        title: Text('Camera selection'),
        dense: true,
        enabled: false,
      ),
      RadioListTile(
        onChanged: (v) => setState(() => _selectedCamera = -1),
        value: -1,
        title: const Text('Default camera'),
        groupValue: _selectedCamera,
      ),
    ];

    for (var i = 0; i < _numberOfCameras; i++) {
      contentList.add(RadioListTile(
        onChanged: (v) => setState(() => _selectedCamera = i),
        value: i,
        title: Text('Camera ${i + 1}'),
        groupValue: _selectedCamera,
      ));
    }

    contentList.addAll([
      const ListTile(
        title: Text('Button Texts'),
        dense: true,
        enabled: false,
      ),
      ListTile(
        title: TextField(
          decoration: const InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'Flash On',
          ),
          controller: _flashOnController,
        ),
      ),
      ListTile(
        title: TextField(
          decoration: const InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'Flash Off',
          ),
          controller: _flashOffController,
        ),
      ),
      ListTile(
        title: TextField(
          decoration: const InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'Cancel',
          ),
          controller: _cancelController,
        ),
      ),
    ]);

    if (Platform.isAndroid) {
      contentList.addAll([
        const ListTile(
          title: Text('Android specific options'),
          dense: true,
          enabled: false,
        ),
        ListTile(
          title:
              Text('Aspect tolerance (${_aspectTolerance.toStringAsFixed(2)})'),
          subtitle: Slider(
            min: -1,
            max: 1,
            value: _aspectTolerance,
            onChanged: (value) {
              setState(() {
                _aspectTolerance = value;
              });
            },
          ),
        ),
        CheckboxListTile(
          title: const Text('Use autofocus'),
          value: _useAutoFocus,
          onChanged: (checked) {
            setState(() {
              _useAutoFocus = checked!;
            });
          },
        )
      ]);
    }

    contentList
      ..addAll([
        const ListTile(
          title: Text('Other options'),
          dense: true,
          enabled: false,
        ),
        CheckboxListTile(
          title: const Text('Start with flash'),
          value: _autoEnableFlash,
          onChanged: (checked) {
            setState(() {
              _autoEnableFlash = checked!;
            });
          },
        )
      ])
      ..addAll([
        const ListTile(
          title: Text('Barcode formats'),
          dense: true,
          enabled: false,
        ),
        ListTile(
          trailing: Checkbox(
            tristate: true,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            value: selectedFormats.length == _possibleFormats.length
                ? true
                : selectedFormats.isEmpty
                    ? false
                    : null,
            onChanged: (checked) {
              setState(() {
                selectedFormats = [
                  if (checked ?? false) ..._possibleFormats,
                ];
              });
            },
          ),
          dense: true,
          enabled: false,
          title: const Text('Detect barcode formats'),
          subtitle: const Text(
            'If all are unselected, all possible platform formats will be used',
          ),
        ),
      ])
      ..addAll(_possibleFormats.map(
        (format) => CheckboxListTile(
          value: selectedFormats.contains(format),
          onChanged: (i) {
            setState(() => selectedFormats.contains(format)
                ? selectedFormats.remove(format)
                : selectedFormats.add(format));
          },
          title: Text(format.toString()),
        ),
      ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Barcode Scanner Example'),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.camera),
              tooltip: 'Scan',
              onPressed: scan,
            )
          ],
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: contentList,
        ),
      ),
    );
  }

  Future scan() async {
    try {
      final options = ScanOptions(
        strings: {
          'cancel': _cancelController.text,
          'flash_on': _flashOnController.text,
          'flash_off': _flashOffController.text,
        },
        restrictFormat: selectedFormats,
        useCamera: _selectedCamera,
        autoEnableFlash: _autoEnableFlash,
        android: AndroidOptions(
          aspectTolerance: _aspectTolerance,
          useAutoFocus: _useAutoFocus,
        ),
      );

      final result = await BarcodeScanner.scan(options: options);

      setState(() => scanResult = result);
    } on PlatformException catch (e) {
      final result = ScanResult(
        type: ResultType.Error,
        format: BarcodeFormat.unknown,
      );

      if (e.code == BarcodeScanner.cameraAccessDenied) {
        setState(() {
          result.rawContent = 'The user did not grant the camera permission!';
        });
      } else {
        result.rawContent = 'Unknown error: $e';
      }
      setState(() {
        scanResult = result;
      });
    }
  }
}
