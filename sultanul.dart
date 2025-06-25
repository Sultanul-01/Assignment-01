// Abstract class Vehicle
abstract class Vehicle {
  // Encapsulation: private variable _speed
  int _speed = 0;

  // Abstract method
  void move();

  // Public setter to set speed
  void setSpeed(int speed) {
    if (speed >= 0) {
      _speed = speed;
    } else {
      print("Speed cannot be negative.");
    }
  }

  // Public getter to access speed (optional for encapsulation)
  int getSpeed() {
    return _speed;
  }
}

// Subclass Car that extends Vehicle
class Car extends Vehicle {
  @override
  void move() {
    // Using getter for encapsulated speed access
    print("The car is moving at ${getSpeed()} km/h");
  }
}

// Main function
void main() {
  Car myCar = Car();       // Create a Car object
  myCar.setSpeed(150);      // Set the speed
  myCar.move();            // Call move method
}
