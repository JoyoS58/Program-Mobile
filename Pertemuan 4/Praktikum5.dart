void main() {
  var record = ('first', a: 2, b: true, 'last');
  print(record);
// langkah 3
  (String, int) mahasiswa;
  mahasiswa = ('Joyo Sugito', 2241720050);
  print(mahasiswa);
// langkah 4
  var mahasiswa2 = ('first', a: 2, b: true, 'last');

  print(mahasiswa2.$1); // Prints 'first'
  print(mahasiswa2.a); // Prints 2
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'
}

// langkah 2
(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}
