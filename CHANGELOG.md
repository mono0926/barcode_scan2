## 4.2.4

- Update Kotlin Gradle plugin version 1.5.20 (#65)

## 4.2.3

- zxing version 1.9.13 does not exist in the mavenCentral (#60)

## 4.2.2

- Migrate from JCenter to Maven Central for gradle dependencies (#57)

## 4.2.1+1

- Fix README (#59)

## 4.2.1

- Fix compile error (#48, #49)

## 4.2.0

- Changed protobuf_version and compileSdkVersion to support Android 12 / SDK 31

## 4.1.4

- Broken artifact fixes for Apple Silicon M1 (#28)

## 4.1.3

- Fix Error in release mode properly (#9)
  - Previously, it was fixed by reverting https://github.com/mono0926/barcode_scan2/commit/cea32818174b62326d3f798c264f0e78f1a05aae , but it caused another error when using with cloud_firestore etc. So that change is applied again and fixed original issue by https://github.com/mono0926/barcode_scan2/commit/d540aef8eaf693fb2628449d00aa7a422c6e1d65

## 4.1.2

- Fix Error in release mode (#9)

## 4.1.1

- Fix After flutter plugin register, the topViewController may changed, present Scan ViewController failed! (#10)

## 4.1.0

- Lock screen rotation when scanner is shown (#7)

## 4.0.1

- Fix When ViewController whose view is not in the window hierarchy, present Scan ViewController failed will failed. (#5)

## 4.0.0

- Original [barcode_scan](https://pub.dev/packages/barcode_scan) was discontinued, so [barcode_scan2](https://pub.dev/packages/barcode_scan) was borned with sound null safety support🎉

---

Prior to 3.0.1, see the CHANGELOG of discontinued original package:
https://pub.dev/packages/barcode_scan/changelog
