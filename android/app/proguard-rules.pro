# Flutter and Dart keep rules
-keep class io.flutter.app.** { *; }
-keep class io.flutter.plugin.** { *; }
-keep class io.flutter.util.** { *; }
-keep class io.flutter.embedding.engine.FlutterEngine { *; }

# Prevent removal of annotations
-keepattributes *Annotation*

# Retain classes used via reflection
-keepclassmembers class * {
    public <init>(...);
}

# Gson (if used for JSON parsing)
-keep class com.google.gson.** { *; }

# Firebase (if used)
-keep class com.google.firebase.** { *; }

# Retrofit (if used)
-keep class retrofit2.** { *; }

# Avoid obfuscating R class references
-keepclassmembers class **.R$* {
    public static <fields>;
}
