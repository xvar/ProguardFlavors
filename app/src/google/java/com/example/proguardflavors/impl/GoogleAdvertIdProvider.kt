package com.example.proguardflavors.impl

import android.app.Application
import android.util.Log
import com.example.proguardflavors.iface.AdvertisingIdProvider
import com.google.android.gms.ads.identifier.AdvertisingIdClient
import java.lang.Exception

class GoogleAdvertIdProvider(private val app: Application): AdvertisingIdProvider {
    override val advertisingId: String?
        get() {
            val adInfo = AdvertisingIdClient.getAdvertisingIdInfo(app);
            val id = try {
                adInfo.id
            } catch (e: Exception) {
                Log.e("example_exception", "google id exception", e)
                "google_id"
            }
            return id
        }
}