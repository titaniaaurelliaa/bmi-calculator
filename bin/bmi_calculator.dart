  void hitungBMI(
    double tinggiCm,
    double beratKg,
    List<Map<String, dynamic>> riwayat,
  ) {
    // Konversi tinggi dari cm ke m
    double tinggiM = tinggiCm / 100;

    // Hitung BMI
    double bmi = beratKg / (tinggiM * tinggiM);

    // Tentukan kategori menggunakan percabangan
    String kategori;
    if (bmi < 18.5) {
      kategori = "Kurus";
    } else if (bmi < 25) {
      kategori = "Normal";
    } else if (bmi < 30) {
      kategori = "Gemuk";
    } else {
      kategori = "Obesitas";
    }

    // Simpan hasil ke riwayat
    riwayat.add({
      'tinggi': tinggiCm,
      'berat': beratKg,
      'bmi': bmi,
      'kategori': kategori,
    });
  }

void main() {
  List<Map<String, dynamic>> riwayat = [];

  // Simulasi beberapa input
  hitungBMI(170, 65, riwayat);
  hitungBMI(165, 75, riwayat);
  hitungBMI(180, 85, riwayat);

  // Tampilkan riwayat menggunakan perulangan
  tampilkanRiwayat(riwayat);
}

void tampilkanRiwayat(List<Map<String, dynamic>> riwayat) {
  print('=== RIWAYAT PERHITUNGAN BMI ===');
  for (int i = 0; i < riwayat.length; i++) {
    var data = riwayat[i];
    print('Data ${i + 1}:');
    print('  Tinggi: ${data['tinggi']} cm');
    print('  Berat: ${data['berat']} kg');
    print('  BMI: ${data['bmi'].toStringAsFixed(2)}');
    print('  Kategori: ${data['kategori']}');
    print('---');
  }
}