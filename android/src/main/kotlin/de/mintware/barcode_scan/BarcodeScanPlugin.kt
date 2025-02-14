package de.mintware.barcode_scan

import androidx.annotation.NonNull
import androidx.annotation.Nullable
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.embedding.engine.plugins.activity.ActivityAware
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding

/** BarcodeScanPlugin */
class BarcodeScanPlugin : FlutterPlugin, ActivityAware {

    @Nullable
    private var channelHandler: ChannelHandler? = null
    @Nullable
    private var activityHelper: ActivityHelper? = null

    override fun onAttachedToEngine(@NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
        activityHelper = ActivityHelper(flutterPluginBinding.applicationContext)

        channelHandler = ChannelHandler(activityHelper!!)
        channelHandler!!.startListening(flutterPluginBinding.binaryMessenger)
    }

    override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
        if (channelHandler == null) {
            return
        }

        channelHandler!!.stopListening()
        channelHandler = null
        activityHelper = null
    }

    override fun onDetachedFromActivity() {
        if (channelHandler == null) {
            return
        }

        activityHelper!!.activity = null
    }

    override fun onReattachedToActivityForConfigChanges(binding: ActivityPluginBinding) {
        onAttachedToActivity(binding)
    }

    override fun onAttachedToActivity(binding: ActivityPluginBinding) {
        if (channelHandler == null) {
            return
        }
        binding.addActivityResultListener(activityHelper!!)
        binding.addRequestPermissionsResultListener(activityHelper!!)
        activityHelper!!.activity = binding.activity
    }

    override fun onDetachedFromActivityForConfigChanges() {
        onDetachedFromActivity()
    }
}
