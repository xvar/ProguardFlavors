# Picaso
-dontwarn com.squareup.okhttp.**


# Twitter

-dontwarn twitter4j.**
-keep class twitter4j.** { *; }

-keep class androidx.appcompat.widget.SearchView { *; }

-keep public class * extends java.lang.Exception

-keep class com.google.android.gms.ads.identifier.** { *; }
-keep class com.my.target.** {*;}

#dagger 2
-dontwarn com.google.errorprone.annotations.**

#emoji
-keepclassmembernames class com.vdurmont.emoji.emoji.** { *; }
-keepclassmembernames class com.vdurmont.emoji.EmojiManager { *; }

-keep public class com.google.android.gms.* { public *; }
-dontwarn com.google.android.gms.**

# retrolambda
-dontwarn java.lang.invoke.*
-dontwarn **$$Lambda$*

# ormlite

-keep class com.j256.**
-keepclassmembers class com.j256.** { *; }
-keep enum com.j256.**
-keepclassmembers enum com.j256.** { *; }
-keep interface com.j256.**
-keepclassmembers interface com.j256.** { *; }

-dontwarn com.j256.ormlite.android.**
-dontwarn com.j256.ormlite.logger.**
-dontwarn com.j256.ormlite.misc.**

-keepclassmembers class com.allgoritm.youla.database.DatabaseHelper {
    public <init>(android.content.Context);
 }

-keepattributes *Annotation*

# libverify
-keep class ru.mail.libverify.** { *; }

# rx
-dontwarn sun.misc.**

-keepclassmembers class rx.internal.util.unsafe.*ArrayQueue*Field* {
   long producerIndex;
   long consumerIndex;
}

-keepclassmembers class rx.internal.util.unsafe.BaseLinkedQueueProducerNodeRef {
    rx.internal.util.atomic.LinkedQueueNode producerNode;
}

-keepclassmembers class rx.internal.util.unsafe.BaseLinkedQueueConsumerNodeRef {
    rx.internal.util.atomic.LinkedQueueNode consumerNode;
}

-dontnote rx.internal.util.PlatformDependent

# branch
-keep class com.google.android.gms.ads.identifier.** { *; }
-keep class com.facebook.applinks.** { *; }
-keepclassmembers class com.facebook.applinks.** { *; }
-keep class com.facebook.FacebookSdk { *; }

-keepclassmembers class * implements android.os.Parcelable {
    static ** CREATOR;
}

#Firebase
-keep class com.firebase.** { *; }
-keep class com.google.firebase.messaging.** { *;}
-keep class com.google.firebase.iid.** { *;}
-dontwarn com.firebase.**
-dontwarn com.google.firebase.messaging.**

#PaperDb
-keep class io.paperdb.** { *; }
-dontwarn io.paperdb.**

#BillingClient
-keep class com.android.billingclient.** { *; }
-dontwarn com.android.billingclient.**

-keep class android.arch.work.** { *; }
-dontwarn android.arch.work.**

# Centrifuge
-keep class allgoritm.com.centrifuge.v1.data.** { *; }