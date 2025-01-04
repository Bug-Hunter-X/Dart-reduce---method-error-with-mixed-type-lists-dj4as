```dart
List<int> numbers = [1, 2, 3, 4, 5];
int sum = numbers.reduce((a, b) => a + b);
print(sum); // Output: 15

List<String> strings = ['a', 'b', 'c'];
String concatenated = strings.reduce((a, b) => a + b);
print(concatenated); // Output: abc

// This works too
List<double> doubles = [1.1, 2.2, 3.3];
num sumDoubles = doubles.reduce((a, b) => a + b);
print(sumDoubles); //Output: 6.6

// But the below code does not work
List<dynamic> mixed = [1, 'a', 2.2];
//dynamic sumMixed = mixed.reduce((a, b) => a + b); // This will throw an error
```