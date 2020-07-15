package com.example.proguardflavors.impl

import android.app.Application
import com.example.proguardflavors.BuildConfig
import com.example.proguardflavors.iface.AdvertisingIdProvider

class AdvertisingIdProviderFactory(
    private val app: Application
) {

    fun get() : AdvertisingIdProvider {
        return when(BuildConfig.FLAVOR) {
            "google" -> GoogleAdvertIdProvider(app)
            "huawei" -> HuaweiIdProvider(app)
            else -> throw IllegalStateException("not known flavor!")

        }
    }

}