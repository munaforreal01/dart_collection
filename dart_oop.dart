
// Main function
void main() {
  Driver driver = Driver("Rahim", 25, "Bike");
  print(driver.getInfo());

  Ride ride = BikeRide();
  printFare(ride, 5);
}


// Class & Encapsulation
class Person {
  String _name;
  int _age;

  // Constructor
  Person(this._name, this._age);

  // Getters
  String get name => _name;
  int get age => _age;

  // Method to be overridden
  String getInfo() {
    return "Name: $_name, Age: $_age";
  }
}

// Inheritance & Method Overriding
class Driver extends Person {
  String vehicle;

  Driver(String name, int age, this.vehicle) : super(name, age);

  @override
  String getInfo() {
    return "Name: $name, Age: $age, Vehicle: $vehicle";
  }
}

// Abstraction
abstract class Ride {
  double calculateFare(double distance);
}

// Implementation
class BikeRide extends Ride {
  @override
  double calculateFare(double distance) {
    return distance * 20; // 20 per km
  }
}

// Polymorphism
void printFare(Ride ride, double distance) {
  print("Ride Fare: ${ride.calculateFare(distance)}");
}

