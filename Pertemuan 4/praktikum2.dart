// void main() {
//   var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
//   print(halogens);

//   var names1 = <String>{};
//   Set<String> names2 = {}; // This works, too.
//   var names3 = {}; // Creates a map, not a set.

//   print(names1);
//   print(names2);
//   print(names3);
// }

void main() {
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);

  var names1 = <String>{}; 
  Set<String> names2 = {}; 
  var names3 = {}; 

  names1.add("Joyo Sugito"); 
  names1.add("2241720050");  

  names2.addAll({"Joyo Sugito", "2241720050"});

  print(names1);
  print(names2);
  print(names3);
}
