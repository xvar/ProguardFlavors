package com.example.proguardflavors

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import com.example.proguardflavors.impl.AdvertisingIdProviderFactory

class MainActivity : AppCompatActivity() {

    private val advertIdProvider = AdvertisingIdProviderFactory(application).get()

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        val id = advertIdProvider.advertisingId
        println("id = $id")
    }

}