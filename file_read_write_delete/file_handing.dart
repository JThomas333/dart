
import 'dart:io';

void main(){
File books = File('./file_read_write_delete/books.txt');
print(books.readAsLinesSync());

File cars = File('./file_read_write_delete/cars.txt');
String contents = cars.readAsStringSync();
List<String> carslist = contents.split("\n");
print(carslist);

File cars2 = File('./file_read_write_delete/cars2.txt');
cars2.writeAsStringSync('Hali itt váltot', mode: FileMode.append);
print(cars2.readAsStringSync());


File numbers = File('./file_read_write_delete/numbers.txt');
numbers.writeAsStringSync('21020', mode: FileMode.append);
print(numbers.readAsStringSync());

}