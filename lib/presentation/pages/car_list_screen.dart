import 'package:flutter/material.dart';
import 'package:rentalcar/data/models/car.dart';
import 'package:rentalcar/presentation/widgets/car_card.dart';

class CarListScreen extends StatelessWidget {
  CarListScreen({super.key});
  final List<Car> cars = [

    Car(model: 'Fortuner GR', distance: 870, fuelCapacity: 50, pricePerHour: 4500),
    Car(model: 'Fortuner GR', distance: 870, fuelCapacity: 50, pricePerHour: 4500),
    Car(model: 'Fortuner GR', distance: 870, fuelCapacity: 50, pricePerHour: 4500),
    Car(model: 'Fortuner GR', distance: 870, fuelCapacity: 50, pricePerHour: 4500),
    Car(model: 'Fortuner GR', distance: 870, fuelCapacity: 50, pricePerHour: 4500),
    Car(model: 'Fortuner GR', distance: 870, fuelCapacity: 50, pricePerHour: 4500),
  

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose Your Car'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: ListView.builder(
        itemCount: cars.length,
          itemBuilder: (context, index){
                return CarCard(car: cars[index]);
          }

      ),
    );
  }
}
