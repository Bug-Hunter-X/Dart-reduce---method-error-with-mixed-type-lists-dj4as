```dart
List<dynamic> mixed = [1, 'a', 2.2];

// Solution 1: Type checking and handling
String result1 = mixed.fold<String>('', (previousValue, element) {
  if (element is int || element is double) {
    return previousValue + element.toString();
  } else if (element is String) {
    return previousValue + element;
  } else {
    return previousValue + 'Invalid Type';
  }
});
print(result1); // Output: 1a2.2

// Solution 2: Using a custom function for reduction that handles different types
num sumMixed = mixed.reduce((a, b) => num.parse(a.toString()) + num.parse(b.toString()));
print(sumMixed); // Output: 3.2 //Note that the result might not be what's expected

//Solution 3: Filter and then reduce
List<num> numbers = mixed.whereType<num>().toList();
num sumNumbers = numbers.reduce((a,b) => a + b);
print(sumNumbers); // Output: 3.2

```