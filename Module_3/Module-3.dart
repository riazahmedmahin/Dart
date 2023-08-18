class Car {
  
  String brand;
  String model;
  int year;
  double milesDriven = 0;
  
  static int currentYear = 2023; // Use the current year

  static int numberOfCars = 0;

  Car(this.brand, this.model, this.year) {
    numberOfCars++;
  }

  void drive(double miles) {
    milesDriven += miles;
  }

  double getMilesDriven() {
    return milesDriven;
  }

  String getBrand() {
    return brand;
  }

  String getModel() {
    return model;
  }

  int getYear() {
    return year;
  }

  int getAge() {
    return currentYear - year; // Calculate age using the current year
  }
}

void main() {
  Car car1 = Car("Toyota", "Camry", 2020);
  car1.drive(10000);
  
  Car car2 = Car("Honda", "Civic", 2018);
  car2.drive(8000);
  
  Car car3 = Car("Ford", "F-150", 2015);
  car3.drive(15000);
  
  print("Car 1: ${car1.getBrand()} ${car1.getModel()} ${car1.getYear()} Miles: ${car1.getMilesDriven().toStringAsFixed(0)} Age: ${car1.getAge()}");
  print("Car 2: ${car2.getBrand()} ${car2.getModel()} ${car2.getYear()} Miles: ${car2.getMilesDriven().toStringAsFixed(0)} Age: ${car2.getAge()}");
  print("Car 3: ${car3.getBrand()} ${car3.getModel()} ${car3.getYear()} Miles: ${car3.getMilesDriven().toStringAsFixed(0)} Age: ${car3.getAge()} \nTotal number of cars created: ${Car.numberOfCars}");
}
