import java.util.Properties

val keystorePropsFile = rootProject.file("key.properties")
val keystoreProps = Properties().apply {
  if (keystorePropsFile.exists()) {
    keystorePropsFile.inputStream().use { load(it) }
  } else error("Devi creare android/key.properties")
}

val debugStorePassword = keystoreProps.getProperty("debugStorePassword")
  ?: error("debugStorePassword mancante in key.properties")
val debugKeyAlias     = keystoreProps.getProperty("debugKeyAlias")
  ?: error("debugKeyAlias mancante in key.properties")
val debugKeyPassword  = keystoreProps.getProperty("debugKeyPassword")
  ?: error("debugKeyPassword mancante in key.properties")

val releaseStorePassword = keystoreProps.getProperty("storePassword")
  ?: error("storePassword mancante in key.properties")
val releaseKeyAlias      = keystoreProps.getProperty("keyAlias")
  ?: error("keyAlias mancante in key.properties")
val releaseKeyPassword   = keystoreProps.getProperty("keyPassword")
  ?: error("keyPassword mancante in key.properties")

plugins {
  id("com.android.application")
  id("org.jetbrains.kotlin.android")
  id("dev.flutter.flutter-gradle-plugin")
  id("com.google.gms.google-services")
  id("com.google.firebase.crashlytics")
}

android {
  namespace = "com.gear.pizza"
  compileSdk = flutter.compileSdkVersion
  ndkVersion = "27.0.12077973"

  defaultConfig {
    applicationId = "com.gear.pizza"
    minSdk = 28
    targetSdk = flutter.targetSdkVersion
    versionCode = flutter.versionCode
    versionName = flutter.versionName
  }

  compileOptions {
    sourceCompatibility = JavaVersion.VERSION_17
    targetCompatibility = JavaVersion.VERSION_17
    isCoreLibraryDesugaringEnabled = true
  }
  kotlinOptions {
    jvmTarget = JavaVersion.VERSION_17.toString()
  }

  signingConfigs {
  getByName("debug").apply {
    storeFile = file("../gearpizzaKeystoreDebug.keystore")
    storePassword = debugStorePassword
    keyAlias      = debugKeyAlias
    keyPassword   = debugKeyPassword
  }

  create("release") {
    storeFile    = file("../gearpizzaKeystore.keystore")
    storePassword = releaseStorePassword
    keyAlias      = releaseKeyAlias
    keyPassword   = releaseKeyPassword
  }
}


  buildTypes {
    getByName("debug") {
      applicationIdSuffix = ".debug"
      signingConfig = signingConfigs.getByName("debug")
    }
    getByName("release") {
      isMinifyEnabled   = true
      isShrinkResources = true
      signingConfig     = signingConfigs.getByName("release")
      proguardFiles(
        getDefaultProguardFile("proguard-android-optimize.txt"),
        "proguard-rules.pro"
      )
    }
  }
}

dependencies {
  coreLibraryDesugaring("com.android.tools:desugar_jdk_libs:2.1.5")
  implementation(platform("com.google.firebase:firebase-bom:32.2.2"))
  implementation("com.google.firebase:firebase-analytics")
  implementation("org.tensorflow:tensorflow-lite:2.14.0")
  implementation("org.tensorflow:tensorflow-lite-gpu:2.14.0")
  implementation("org.tensorflow:tensorflow-lite-support:0.4.4")
}
