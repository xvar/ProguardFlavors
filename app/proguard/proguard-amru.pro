## Android architecture components: Lifecycle
# Solution from https://gist.github.com/brownsoo/9b11a823360c9cf184263df3e669375c
# LifecycleObserver's empty constructor is considered to be unused by proguard
-keepclassmembers class * implements android.arch.lifecycle.LifecycleObserver {
    <init>(...);
}
# ViewModel's empty constructor is considered to be unused by proguard
-keepclassmembers class * extends android.arch.lifecycle.ViewModel {
    <init>(...);
}
# keep Lifecycle State and Event enums values
-keepclassmembers class android.arch.lifecycle.Lifecycle$State { *; }
-keepclassmembers class android.arch.lifecycle.Lifecycle$Event { *; }
# keep methods annotated with @OnLifecycleEvent even if they seem to be unused
# (Mostly for LiveData.LifecycleBoundObserver.onStateChange(), but who knows)
-keepclassmembers class * {
    @android.arch.lifecycle.OnLifecycleEvent *;
}

-keepclassmembers class * implements android.arch.lifecycle.LifecycleObserver {
    <init>(...);
}

-keep class * implements android.arch.lifecycle.LifecycleObserver {
    <init>(...);
}
-keepclassmembers class android.arch.** { *; }
-keep class android.arch.** { *; }
-dontwarn android.arch.**


-dontobfuscate
-optimizationpasses 5

#When not preverifing in a case-insensitive filing system, such as Windows. Because this tool unpacks your processed jars, you should then use:
-dontusemixedcaseclassnames

#Specifies not to ignore non-public library classes. As of version 4.5, this is the default setting
-dontskipnonpubliclibraryclasses

#Preverification is irrelevant for the dex compiler and the Dalvik VM, so we can switch it off with the -dontpreverify option.
-dontpreverify

#Specifies to write out some more information during processing. If the program terminates with an exception, this option will print out the entire stack trace, instead of just the exception message.
-verbose

#The -optimizations option disables some arithmetic simplifications that Dalvik 1.0 and 1.5 can't handle. Note that the Dalvik VM also can't handle aggressive overloading (of static fields).
#To understand or change this check http://proguard.sourceforge.net/index.html#/manual/optimizations.html
-optimizations !code/simplification/arithmetic,!field/*,!class/merging/*,!code/allocation/variable

#To repackage classes on a single package
#-repackageclasses ''

#To remove debug logs:
-assumenosideeffects class android.util.Log {
    public static *** d(...);
    public static *** v(...);
}

#Maintain java native methods
-keepclasseswithmembernames class * {
    native <methods>;
}

#To maintain custom components names that are used on layouts XML.
#Uncomment if having any problem with the approach below
#-keep public class custom.components.package.and.name.**

#To maintain custom components names that are used on layouts XML:
-keep public class * extends android.view.View {
    public <init>(android.content.Context);
    public <init>(android.content.Context, android.util.AttributeSet);
    public <init>(android.content.Context, android.util.AttributeSet, int);
    public void set*(...);
}

-keepclasseswithmembers class * {
    public <init>(android.content.Context, android.util.AttributeSet);
}
-keepclasseswithmembers class * {
    public <init>(android.content.Context, android.util.AttributeSet, int);
}
###### ADDITIONAL OPTIONS NOT USED NORMALLY
#Uncomment if using annotations to keep them.
-keepattributes *Annotation*

#Uncomment if using Serializable
-keepclassmembers class * implements java.io.Serializable {
    private static final java.io.ObjectStreamField[] serialPersistentFields;
    private void writeObject(java.io.ObjectOutputStream);
    private void readObject(java.io.ObjectInputStream);
    java.lang.Object writeReplace();
    java.lang.Object readResolve();
}

-keep class * implements android.os.Parcelable {
  public static final android.os.Parcelable$Creator *;
}

-keep class javax.inject.** { *; }
-keep class javax.lang.**
-keep class javax.tools.** { *; }
-keep class javax.annotation.** { *; }
-keep class javax.model.** { *; }
-keep class android.support.** { *; }
-keep class android.content.** { *; }
-keep interface android.** { *; }

-keep class com.google.gson.** { *; }
-keep class com.google.inject.** { *; }
-keep class javax.managment.* { *; }

-keep class android.support.** { *; }
-keep interface android.support.** { *; }

-dontwarn com.commonsware.cwac.provider.StreamProvider

-keepattributes Signature
-keepattributes Exceptions

# robospise
-keepclassmembers,allowobfuscation class * {
    @org.codehaus.jackson.annotate.* <fields>;
    @org.codehaus.jackson.annotate.* <init>(...);
}
-keep class sun.misc.Unsafe { *; }
-dontwarn com.fasterxml.jackson.databind.**

-keep class kotlin.reflect.jvm.** {*;}
-dontwarn kotlin.**

-keep class com.squareup.okhttp.** { *; }
-keep interface com.squareup.okhttp.** { *; }

-dontwarn com.squareup.okhttp.**
-dontwarn okio.**
-dontwarn rx.**

# retrolambda
-dontwarn java.lang.invoke.*

# okio
-dontwarn okio.**

# Keep public classes and methods.
-dontwarn com.bea.xml.stream.**
-dontwarn org.simpleframework.xml.stream.**
-keep class org.simpleframework.xml.**{ *; }
-keepclassmembers class * {
    @org.simpleframework.xml.* <fields>;
    @org.simpleframework.xml.* <init>(...);
}
-dontwarn javax.xml.stream.**

# http://stackoverflow.com/questions/9120338/proguard-configuration-for-guava-with-obfuscation-and-optimization
-dontwarn javax.annotation.**
-dontwarn javax.inject.**
-dontwarn sun.misc.Unsafe

# Guava 19.0
-dontwarn java.lang.ClassValue
-dontwarn org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement


-dontwarn android.util.FloatMath

# google play services
-keep public class com.google.android.gms.* { public *; }
-dontwarn com.google.android.gms.**

-dontwarn com.appsflyer.**
-dontwarn org.apache.**

# my classes
-keep class ru.crtweb.amru.** {*;}
-keepclassmembers class ru.crtweb.amru.** {*;}
-dontwarn ru.crtweb.amru.**
-dontwarn processors.**

-dontwarn com.squareup.picasso.**
-dontwarn com.roughike.bottombar.**

-dontwarn android.databinding.**
-dontwarn org.apache.commons.**

-dontwarn com.squareup.javapoet.**
-dontwarn com.google.auto.**
-dontwarn ru.am.descriptors.**

-keep class com.my.tracker.** {*;}

# clearnet module
-keep class clearnet.** {*;}

-keep class com.github.programmerr47.ganalytics.core.**
-dontwarn com.github.programmerr47.ganalytics.core.**

# kotlin metadata for reflections
-keep class kotlin.Metadata { *; }

-dontwarn ru.am.imageviewer.ui.GalleryActivity

# My target
-keep class com.my.target.** {*;}