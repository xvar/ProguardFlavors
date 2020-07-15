#GSON
-keep class * implements com.google.gson.TypeAdapterFactory
-keep class * implements com.google.gson.JsonSerializer
-keep class * implements com.google.gson.JsonDeserializer
-keep class sun.misc.Unsafe { *; }

-keep class com.allgoritm.youla.models.** { *; }
-keep class com.allgoritm.youla.messenger.models.entity.** { *; }
-keep class com.allgoritm.youla.stories.models.** { *; }
-keep class com.allgoritm.youla.tariff.model.** { *; }
-keep class com.allgoritm.youla.geo.data.model.** { *; }

-keep class com.allgoritm.youla.matisse.internal.entity.** { *; }
-keep class com.allgoritm.youla.matisse.internal.model.** { *; }
-keep class com.allgoritm.youla.database.models.fielddata.**
-keepclassmembers class com.allgoritm.youla.database.models.fielddata.** { *; }
-keep class com.allgoritm.youla.database.models.dynamic.**
-keepclassmembers class com.allgoritm.youla.database.models.dynamic.** { *; }

-keep class * implements com.allgoritm.youla.models.NoPasaran { <fields>; <init>(...); }

-keepclassmembers class * {
    @com.google.gson.annotations.SerializedName <fields>;
}

-keep class com.huawei.openalliance.ad.** { *; }
-keep class com.huawei.hms.ads.** { *; }