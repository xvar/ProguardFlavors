package com.example.proguardflavors.impl

import android.app.Application

class AdvertisingIdProviderFactory(
    private val app: Application
) {
    fun get() = GoogleAdvertIdProvider(app)
}