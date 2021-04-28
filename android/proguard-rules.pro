# ref: https://github.com/firebase/firebase-android-sdk/blob/master/protolite-well-known-types/proguard-rules.pro

# protobuf-javalite has a bug that requires this workaround rule
# https://github.com/protocolbuffers/protobuf/issues/6463#issuecomment-553183215
-keepclassmembers class * extends com.google.protobuf.GeneratedMessageLite {
  <fields>;
}
