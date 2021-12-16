

extension CapExtension on String {
	// final helloWorld = 'hello world'.inCaps; // 'Hello world'
	String get inCaps => '${this[0].toUpperCase()}${this.substring(1)}';
  // final helloWorld = 'hello world'.allInCaps; // 'HELLO WORLD'
  String get allInCaps => toUpperCase();
  // final helloWorld = 'hello world'.capitalizeFirstofEach; // 'Hello World'
  String get capitalizeFirstofEach =>
      split(" ").map((str) => str.inCaps ).join(" ");
}






