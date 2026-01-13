void main(){
    print("Hello World!");
    //megjegyzés
    print("Hello again!");
    /*
    több soros
    megjegyzés
    */
    print('''Multi line
    message.''');

    var name = "John";
    print(name);
    dynamic message = 'Ciao';
    print(message);
    message = 12;
    print(message);
    final one = 1;
    print(one);
    // one = '1';
    final array =[1, 2, 3];
    array.add(5);
    print(array);
    // array = [1, 1, 2, 3,];
    const arr = [0, 1, 1, 2, 3];
    print(arr);
    // arr.add(5);
    // print(arr);
    // arr = [2, 3, 5, 7];
    print('Az arr első eleme: $arr[0]');
    print('Az arr első eleme: ${arr[0]}');

}