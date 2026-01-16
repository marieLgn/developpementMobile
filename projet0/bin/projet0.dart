import 'package:projet0/projet0.dart' as projet0;

void main() {
  int? a = 1;
  int b = a ?? 5;

  int c = a!;
  print(c);

  if (a == null) {
    a = 3;
  }

  print(a!.isEven);
  methodes();
}


void method (int a, [int? b, int? c]){

}

String foo({required String name, int? number, bool toUpperCase=true}) =>
   '${(toUpperCase ? name.toUpperCase() : name)} $number';

void useFoo() {
 foo(name: 'a');
 foo(name: 'b', number: 1);
 foo(name: 'c', toUpperCase: true);
 foo(name: 'd', number: 2, toUpperCase: true);
}

void methodes(){
  List<int> list = [25, 42, 79, 12];


  list.sort((int a, int b) {
    return b.compareTo(a);
  });
  print(list);


  list = list.map((int el) {return el * 2; }).toList();
  print(list);

}
