import 'package:gearpizza/common/services/device_performance_service.dart';

const Map<String, DevicePerformance> modelPerformanceOverrides = {
  // ============================================
  // Samsung Flagship (fino al 2025)
  // ============================================
  'sm-g970': DevicePerformance.high, // S10e
  'sm-g973': DevicePerformance.high, // S10
  'sm-g975': DevicePerformance.high, // S10+
  'sm-g981': DevicePerformance.high, // S20
  'sm-g986': DevicePerformance.high, // S20 Ultra
  'sm-g991': DevicePerformance.high, // S21
  'sm-g996': DevicePerformance.high, // S21+
  'sm-g998': DevicePerformance.high, // S21 Ultra
  'sm-s901': DevicePerformance.high, // S22
  'sm-s906': DevicePerformance.high, // S22+
  'sm-s908': DevicePerformance.high, // S22 Ultra
  'sm-s911': DevicePerformance.high, // S23
  'sm-s916': DevicePerformance.high, // S23+
  'sm-s918': DevicePerformance.high, // S23 Ultra
  'sm-s931': DevicePerformance.high, // S24 (ipotetico fino al 2025)
  'sm-s936': DevicePerformance.high, // S24+ (ipotetico)
  'sm-s938': DevicePerformance.high, // S24 Ultra (ipotetico)
  'sm-n975': DevicePerformance.high, // Note10+
  'sm-n976': DevicePerformance.high, // Note20 (variazione regionale)
  'sm-n986': DevicePerformance.high, // Note20 Ultra

  // ============================================
  // Samsung Medio-gamma (serie A, fino al 2025)
  // ============================================
  'sm-a136': DevicePerformance.medium, // A13 5G
  'sm-a336': DevicePerformance.medium, // A33 5G
  'sm-a536': DevicePerformance.medium, // A53 5G
  'sm-a736': DevicePerformance.medium, // A73 5G
  'sm-a526': DevicePerformance.medium, // A52 5G
  'sm-a716': DevicePerformance.medium, // A71 5G
  'sm-a715': DevicePerformance.medium, // A71
  'sm-a515': DevicePerformance.medium, // A51
  'sm-a415': DevicePerformance.medium, // A41
  'sm-a305': DevicePerformance.low, // A30

  // ============================================
  // Samsung Entry-level (serie A, M, fino al 2025)
  // ============================================
  'sm-a105': DevicePerformance.low, // A10s
  'sm-a115': DevicePerformance.low, // A11
  'sm-a125': DevicePerformance.low, // A12
  'sm-a225': DevicePerformance.low, // A22
  'sm-a325': DevicePerformance.low, // A32
  'sm-a015': DevicePerformance.low, // A01

  'sm-m115': DevicePerformance.low, // M11
  'sm-m215': DevicePerformance.low, // M21
  'sm-m325': DevicePerformance.low, // M32
  'sm-m515': DevicePerformance.low, // M51

  // ============================================
  // Google Pixel
  // ============================================
  'pixel 5': DevicePerformance.medium,
  'pixel 5a': DevicePerformance.medium,
  'pixel 6': DevicePerformance.high,
  'pixel 6 pro': DevicePerformance.high,
  'pixel 6a': DevicePerformance.medium,
  'pixel 7': DevicePerformance.high,
  'pixel 7 pro': DevicePerformance.high,
  'pixel 7a': DevicePerformance.medium,
  'pixel 8': DevicePerformance.high,
  'pixel 8 pro': DevicePerformance.high,
  'pixel 8a': DevicePerformance.medium,

  // ============================================
  // OnePlus
  // ============================================
  'oneplus nord': DevicePerformance.medium,
  'oneplus 8': DevicePerformance.high,
  'oneplus 8 pro': DevicePerformance.high,
  'oneplus 8t': DevicePerformance.high,
  'oneplus 9': DevicePerformance.high,
  'oneplus 9 pro': DevicePerformance.high,
  'oneplus 9r': DevicePerformance.medium,
  'oneplus 10': DevicePerformance.high,
  'oneplus 10 pro': DevicePerformance.high,
  'oneplus 11': DevicePerformance.high,
  'oneplus 11r': DevicePerformance.medium,
  'oneplus nord 2': DevicePerformance.medium,
  'oneplus nord ce': DevicePerformance.medium,

  // ============================================
  // Xiaomi / Redmi / POCO
  // ============================================
  // Xiaomi Flagship
  'mi 10': DevicePerformance.high,
  'mi 10 pro': DevicePerformance.high,
  'mi 11': DevicePerformance.high,
  'mi 11 ultra': DevicePerformance.high,
  'mi 12': DevicePerformance.high,
  'mi 12 pro': DevicePerformance.high,
  'mi 12x': DevicePerformance.medium,
  'mi 13': DevicePerformance.high,
  'mi 13 pro': DevicePerformance.high,
  'mi 13 lite': DevicePerformance.medium,
  'mi 14': DevicePerformance.high, // ipotetico

  // Redmi Serie Note (medio-gamma)
  'redmi note 9': DevicePerformance.medium,
  'redmi note 9 pro': DevicePerformance.medium,
  'redmi note 10': DevicePerformance.medium,
  'redmi note 10 pro': DevicePerformance.medium,
  'redmi note 11': DevicePerformance.medium,
  'redmi note 11 pro': DevicePerformance.medium,
  'redmi note 12': DevicePerformance.medium,
  'redmi note 12 pro': DevicePerformance.medium,

  // Redmi Entry
  'redmi 9': DevicePerformance.low,
  'redmi 9a': DevicePerformance.low,
  'redmi 9c': DevicePerformance.low,
  'redmi 10': DevicePerformance.low,
  'redmi 10a': DevicePerformance.low,
  'redmi 11': DevicePerformance.low,

  // POCO (sottobrand)
  'poco f2 pro': DevicePerformance.high,
  'poco f3': DevicePerformance.high,
  'poco f4': DevicePerformance.high,
  'poco x3': DevicePerformance.medium,
  'poco x3 nfc': DevicePerformance.medium,
  'poco x4 pro': DevicePerformance.medium,
  'poco m3': DevicePerformance.low,
  'poco m4 pro': DevicePerformance.low,

  // ============================================
  // ASUS ROG / Zenfone
  // ============================================
  'rog phone 5': DevicePerformance.high,
  'rog phone 6': DevicePerformance.high,
  'rog phone 7': DevicePerformance.high,
  'rog phone 8': DevicePerformance.high,
  'zenfone 8': DevicePerformance.high,
  'zenfone 9': DevicePerformance.high,
  'zenfone 8 flip': DevicePerformance.high,

  // ============================================
  // Motorola
  // ============================================
  'motorola razr': DevicePerformance.high, // foldable 2025
  'motorola razr 5g': DevicePerformance.high,
  'motorola edge': DevicePerformance.high,
  'motorola edge+': DevicePerformance.high,
  'motorola edge 30': DevicePerformance.high,
  'moto g power': DevicePerformance.medium,
  'moto g stylus': DevicePerformance.medium,
  'moto g 5g': DevicePerformance.medium,
  'moto g30': DevicePerformance.medium,
  'moto g50': DevicePerformance.medium,
  'moto g100': DevicePerformance.high,
  'moto one 5g': DevicePerformance.medium,
  'moto e7': DevicePerformance.low,
  'moto e6': DevicePerformance.low,

  // ============================================
  // Huawei (solo per mappe offline, senza servizi Google)
  // ============================================
  'huawei p30': DevicePerformance.medium,
  'huawei p30 pro': DevicePerformance.medium,
  'huawei p40': DevicePerformance.high,
  'huawei p40 pro': DevicePerformance.high,
  'huawei p50': DevicePerformance.high,
  'huawei p50 pro': DevicePerformance.high,
  'huawei mate 30': DevicePerformance.high,
  'huawei mate 40': DevicePerformance.high,
  'huawei nova 5t': DevicePerformance.medium,
  'huawei nova 7': DevicePerformance.medium,

  // ============================================
  // Sony Xperia
  // ============================================
  'xperia 1 ii': DevicePerformance.high,
  'xperia 1 iii': DevicePerformance.high,
  'xperia 1 iv': DevicePerformance.high,
  'xperia 5 ii': DevicePerformance.high,
  'xperia 5 iii': DevicePerformance.high,
  'xperia 10 ii': DevicePerformance.medium,
  'xperia 10 iii': DevicePerformance.medium,
  'xperia 10 iv': DevicePerformance.medium,

  // ============================================
  // LG (fino al ritiro dal mercato)
  // ============================================
  'lg g8': DevicePerformance.high,
  'lg g8x': DevicePerformance.high,
  'lg v50': DevicePerformance.high,
  'lg v60': DevicePerformance.high,
  'lg q92': DevicePerformance.medium,
  'lg k51': DevicePerformance.low,

  // ============================================
  // Nokia (Android One / Android Go)
  // ============================================
  'nokia 5.4': DevicePerformance.medium,
  'nokia 6.2': DevicePerformance.medium,
  'nokia 7.2': DevicePerformance.medium,
  'nokia 8.3': DevicePerformance.high,
  'nokia 9 pureview': DevicePerformance.high,
  'nokia 3.4': DevicePerformance.low,
  'nokia 2.4': DevicePerformance.low,

  // ============================================
  // Oppo / Realme / Vivo (BBK Electronics)
  // ============================================
  // Oppo Flagship
  'oppo find x2': DevicePerformance.high,
  'oppo find x2 pro': DevicePerformance.high,
  'oppo find x3': DevicePerformance.high,
  'oppo find x3 pro': DevicePerformance.high,
  'oppo find x5': DevicePerformance.high,
  'oppo find x5 pro': DevicePerformance.high,
  'oppo find x6': DevicePerformance.high, // ipotetico

  // Oppo Medio-gamma / Entry
  'oppo reno5': DevicePerformance.medium,
  'oppo reno5 pro': DevicePerformance.medium,
  'oppo reno6': DevicePerformance.medium,
  'oppo reno6 pro': DevicePerformance.medium,
  'oppo a54': DevicePerformance.low,
  'oppo a74': DevicePerformance.low,

  // Realme Flagship
  'realme 6 pro': DevicePerformance.high,
  'realme 7 pro': DevicePerformance.high,
  'realme 8 pro': DevicePerformance.high,
  'realme 9 pro': DevicePerformance.high,
  'realme gt': DevicePerformance.high,
  'realme gt neo': DevicePerformance.high,

  // Realme Medio-gamma / Entry
  'realme 6': DevicePerformance.medium,
  'realme 7': DevicePerformance.medium,
  'realme 8': DevicePerformance.medium,
  'realme narzo 30': DevicePerformance.medium,
  'realme c21': DevicePerformance.low,
  'realme c25': DevicePerformance.low,

  // Vivo Flagship
  'vivo x51': DevicePerformance.high,
  'vivo x60': DevicePerformance.high,
  'vivo x60 pro': DevicePerformance.high,
  'vivo x70': DevicePerformance.high,
  'vivo x70 pro': DevicePerformance.high,
  'vivo x80': DevicePerformance.high, // ipotetico

  // Vivo Medio-gamma / Entry
  'vivo y20': DevicePerformance.medium,
  'vivo y31': DevicePerformance.medium,
  'vivo y52': DevicePerformance.medium,
  'vivo y70': DevicePerformance.medium,
  'vivo y21s': DevicePerformance.low,

  // ============================================
  // Altri marchi minori / generici
  // ============================================
  'zte axon 10': DevicePerformance.high,
  'zte nubia red magic 5g': DevicePerformance.high,
  'alcatel 3x': DevicePerformance.low,
  'lenovo legion phone': DevicePerformance.high,
  'fairphone 4': DevicePerformance.medium,
  'honor 50': DevicePerformance.high,
  'honor 9x': DevicePerformance.medium,
  'meizu 18': DevicePerformance.high,
  'meizu 18 pro': DevicePerformance.high,
  'htc u12+': DevicePerformance.high,
  'htc desire 21 pro': DevicePerformance.medium,
};
// Nuova mappa per modelli iOS (prefissi “utsname.machine”)
const Map<String, DevicePerformance> iosModelPerformanceOverrides = {
  // iPhone “vecchi” (iPhone 5s/6/6 Plus/6s/6s Plus)
  'iphone6': DevicePerformance.low, // (iPhone 5s è “iphone6,1” / “iphone6,2”)
  'iphone7': DevicePerformance.low, // (iPhone 6 / 6 Plus)
  'iphone8': DevicePerformance.low, // (iPhone 6s / 6s Plus)
  // iPhone “intermedi” (7/7 Plus, 8/8 Plus, X)
  'iphone9': DevicePerformance.medium, // (iPhone 7 / 7 Plus)
  'iphone10': DevicePerformance.medium, // (iPhone 8 / 8 Plus / X)
  'iphone11': DevicePerformance.medium, // (iPhone Xs / Xs Max / Xr)
  // iPhone “recenti” (11/12/13/14/15)
  'iphone12': DevicePerformance.high, // (iPhone 11 / 11 Pro / 11 Pro Max)
  'iphone12,8': DevicePerformance.medium, // (iPhone SE 2nd gen)
  'iphone13':
      DevicePerformance.high, // (iPhone 12 mini / 12 / 12 Pro / 12 Pro Max)
  'iphone13,1': DevicePerformance.high, // (es. iPhone 12 mini)
  'iphone13,2': DevicePerformance.high, // (iPhone 12)
  'iphone13,3': DevicePerformance.high, // (iPhone 12 Pro)
  'iphone13,4': DevicePerformance.high, // (iPhone 12 Pro Max)
  'iphone14':
      DevicePerformance.high, // (iPhone 13 mini / 13 / 13 Pro / 13 Pro Max)
  'iphone14,4': DevicePerformance.high, // (iPhone 13 mini)
  'iphone14,5': DevicePerformance.high, // (iPhone 13)
  'iphone14,2': DevicePerformance.high, // (iPhone 13 Pro)
  'iphone14,3': DevicePerformance.high, // (iPhone 13 Pro Max)
  'iphone14,6': DevicePerformance.medium, // (iPhone SE 3rd gen)
  'iphone14,7': DevicePerformance.high, // (iPhone 14)
  'iphone14,8': DevicePerformance.high, // (iPhone 14 Plus)
  'iphone15': DevicePerformance.high, // (iPhone 14 Pro / 14 Pro Max / 15 serie)
  'iphone15,2': DevicePerformance.high, // (iPhone 14 Pro)
  'iphone15,3': DevicePerformance.high, // (iPhone 14 Pro Max)
  'iphone15,4': DevicePerformance.high, // (iPhone 15)
  'iphone15,5': DevicePerformance.high, // (iPhone 15 Plus)
  'iphone16,1': DevicePerformance.high, // (iPhone 15 Pro – 2023/2024)
  'iphone16,2': DevicePerformance.high, // (iPhone 15 Pro Max)
  // Se serve supporto iPad:
  'ipad': DevicePerformance.medium,
  'ipadmini': DevicePerformance.medium,
  'ipadair': DevicePerformance.high,
  'ipadpro': DevicePerformance.high,
};
