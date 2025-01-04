# Dart reduce() method and mixed-type lists

This repository demonstrates an uncommon error that can occur when using the `reduce()` method in Dart with lists containing elements of different types.  The `reduce()` method requires a binary operation that can be applied to all pairs of elements in the list.  If the list contains elements of incompatible types (e.g., integers and strings), the `reduce()` method will throw a runtime error.

The `bug.dart` file shows the problem, and `bugSolution.dart` offers solutions to handle this situation.