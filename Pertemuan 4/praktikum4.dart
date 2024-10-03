// void main() {
//   var list = [1, 2, 3];
//   var list2 = [0, ...list];
//   print(list1);
//   print(list2);
//   print(list2.length);
// }

// void main() {
//   var list1 = [1, 2, 3];
//   var list2 = [0, ...list1];
//   print(list1);
//   print(list2);
//   print(list2.length);
// }

// void main() {
//   var list1 = [1, 2, 3];
//   var list2 = [0, ...list1];
//   print(list1);
//   print(list2);
//   print(list2.length);

//   list1 = [1, 2, 2241720050];
//   print(list1);

//   var list3 = [0, ...?list1];
//   print(list3);
//   print(list3.length);
// }
// void main() {
//   var list1 = [1, 2, 3];
//   var list2 = [0, ...list1];
//   print(list1);
//   print(list2);
//   print(list2.length);

//   list1 = [1, 2, 2241720050];
//   print(list1);

//   var list3 = [0, ...?list1];
//   print(list3);
//   print(list3.length);

//   var promoActive = true; 
//   var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
//   print(nav);
// }
// void main() {
//   var list1 = [1, 2, 3];
//   var list2 = [0, ...list1];
//   print(list1);
//   print(list2);
//   print(list2.length);

//   list1 = [1, 2, 2241720050];
//   print(list1);

//   var list3 = [0, ...?list1];
//   print(list3);
//   print(list3.length);

//   var promoActive = true; 
//   var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
//   print(nav);

//   // Bagian baru untuk nav2
//   var login = 'Manager'; // Misalkan login adalah 'Manager'
//   var nav2 = ['Home', 'Furniture', 'Plants', if (login == 'Manager') 'Inventory'];
//   print(nav2); // Mencetak [Home, Furniture, Plants, Inventory]

//   // Coba dengan kondisi lain
//   login = 'User'; // Mengubah login menjadi 'User'
//   nav2 = ['Home', 'Furniture', 'Plants', if (login == 'Manager') 'Inventory'];
//   print(nav2); // Mencetak [Home, Furniture, Plants]
// }
void main() {
  // var list1 = [1, 2, 3];
  // var list2 = [0, ...list1];
  // print(list1);
  // print(list2);
  // print(list2.length);

  var list1 = [1, 2, null, 2241720050];
  print(list1);

  var list3 = [0, ...?list1];
  print(list3);
  print(list3.length);

  var promoActive = true; 
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav);

  // Bagian baru untuk nav2
  var login = 'Manager'; // Misalkan login adalah 'Manager'
  var nav2 = ['Home', 'Furniture', 'Plants', if (login == 'Manager') 'Inventory'];
  print(nav2); // Mencetak [Home, Furniture, Plants, Inventory]

  // Coba dengan kondisi lain
  login = 'User'; // Mengubah login menjadi 'User'
  nav2 = ['Home', 'Furniture', 'Plants', if (login == 'Manager') 'Inventory'];
  print(nav2); // Mencetak [Home, Furniture, Plants]

  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  
  // Assert untuk memeriksa elemen kedua
  assert(listOfStrings[1] == '#1'); 
  print(listOfStrings); // Mencetak listOfStrings
}
