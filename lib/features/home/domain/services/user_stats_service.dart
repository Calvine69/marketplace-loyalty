import 'package:flutter/foundation.dart';

<<<<<<< HEAD
// Model untuk menyimpan data statistik
=======
>>>>>>> 45f614e0d377412114a99233bfb3df065acd5187
class UserStats {
  final int orderCount;
  final int reviewCount;
  final double monthlySpending;

  UserStats({this.orderCount = 0, this.reviewCount = 0, this.monthlySpending = 0.0});
}

<<<<<<< HEAD
// Service untuk mengelola state statistik
class UserStatsService {
  // Membuat service ini menjadi Singleton, artinya hanya ada satu instance di seluruh aplikasi
  UserStatsService._privateConstructor();
  static final UserStatsService instance = UserStatsService._privateConstructor();

  // ValueNotifier akan memberitahu widget-widget yang mendengarkan jika ada perubahan data
  final ValueNotifier<UserStats> stats = ValueNotifier(UserStats());

  // Fungsi untuk menambah jumlah ulasan
=======
class UserStatsService {
  UserStatsService._privateConstructor();
  static final UserStatsService instance = UserStatsService._privateConstructor();

  final ValueNotifier<UserStats> stats = ValueNotifier(UserStats());

>>>>>>> 45f614e0d377412114a99233bfb3df065acd5187
  void incrementReviewCount() {
    stats.value = UserStats(
      orderCount: stats.value.orderCount,
      reviewCount: stats.value.reviewCount + 1,
      monthlySpending: stats.value.monthlySpending,
    );
  }

<<<<<<< HEAD
  // Fungsi untuk menambah pesanan dan total pengeluaran
  // Ini akan dipanggil dari halaman checkout nanti
=======
>>>>>>> 45f614e0d377412114a99233bfb3df065acd5187
  void addOrder(double amount) {
    stats.value = UserStats(
      orderCount: stats.value.orderCount + 1,
      reviewCount: stats.value.reviewCount,
      monthlySpending: stats.value.monthlySpending + amount,
    );
  }
<<<<<<< HEAD
  
  // Fungsi untuk mereset data saat logout
=======

>>>>>>> 45f614e0d377412114a99233bfb3df065acd5187
  void reset() {
    stats.value = UserStats();
  }
}