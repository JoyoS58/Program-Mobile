void main() {
  String namaLengkap = 'Joyo Sugito';
  String nim = '2241720050';
  
  // Menampilkan bilangan prima dari 0 hingga 201
  for (int i = 0; i <= 201; i++) {
    if (isPrime(i)) {
      print('Bilangan prima: $i');
      print('Ditemukan oleh: $namaLengkap, NIM: $nim');
    }
  }
}

// Fungsi untuk memeriksa apakah sebuah angka adalah bilangan prima
bool isPrime(int number) {
  if (number <= 1) return false;  // Bilangan 0 dan 1 bukan bilangan prima
  if (number == 2) return true;   // 2 adalah bilangan prima
  if (number % 2 == 0) return false; // Bilangan genap lebih dari 2 bukan bilangan prima

  // Cek pembagi dari 3 hingga akar kuadrat dari number
  for (int i = 3; i * i <= number; i += 2) {
    if (number % i == 0) return false;
  }

  return true;
}
