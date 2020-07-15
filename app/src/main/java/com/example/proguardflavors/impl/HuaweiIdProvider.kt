package com.example.proguardflavors.impl

import android.app.Application
import com.example.proguardflavors.iface.AdvertisingIdProvider
import com.huawei.hms.ads.identifier.AdvertisingIdClient

class HuaweiIdProvider(
    private val app: Application
) : AdvertisingIdProvider {
    override val advertisingId: String?
        get() {
            val info: AdvertisingIdClient.Info = AdvertisingIdClient.getAdvertisingIdInfo(app)
            return try {
                info.id
            } catch (e: Exception) {
                "huawei_id"
            }
        }
}