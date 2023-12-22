void main() {
  Student p = new Student('John', 'Johnny', 'AAA', 20, 10);
  print(p.name);
}

class Person {
  late String name;
  late String firstName;
  late String lastName;
  late int age;

  // Constructor
  Person(String name, String firstName, String lastName, int age) {
    this.name = name;
    this.firstName = firstName;
    this.lastName = lastName;
    this.age = age;
  }
}

class Student extends Person {
  late int studentId;

  // Constructor
  Student(
      String name, String firstName, String lastName, int age, int studentId)
      : super(name, firstName, lastName, age) {
    this.studentId = studentId;
  }
}
