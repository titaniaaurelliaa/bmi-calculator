void main() {
  List<Map<String, dynamic>> riwayat = [];
  
  // Simulasi beberapa input
  hitungBMI(170, 65, riwayat);
  hitungBMI(165, 75, riwayat);
  hitungBMI(180, 85, riwayat);
  
  // Tampilkan riwayat menggunakan perulangan
  tampilkanRiwayat(riwayat);
}