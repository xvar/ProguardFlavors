package com.example.proguardflavors.impl

import android.os.Build
import com.example.proguardflavors.iface.AdvertisingIdProvider
import java.lang.NullPointerException

class AdvertisingIdProviderFactory {

    fun getAdvertisingIdProvider() : AdvertisingIdProvider {
        throw NullPointerException()
    }

}