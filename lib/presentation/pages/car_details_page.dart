import 'package:flutter/material.dart';
import 'package:rentalcar/data/models/car.dart';
import 'package:rentalcar/presentation/widgets/car_card.dart';
import 'package:rentalcar/presentation/widgets/more_card.dart';

class CarDetailsPage extends StatelessWidget {
  final Car car;

  const CarDetailsPage({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.info_outline),
            Text('  Car Information')
          ],
        ),
      ),
      body: Column(
        children: [
          CarCard(car: Car(model: car.model, distance: car.distance, fuelCapacity: car.fuelCapacity, pricePerHour: car.pricePerHour)),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Color(0xffF3F3F3),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 10,
                            spreadRadius: 5,
                          )
                        ]
                    ),
                    child: Column(
                      children: [
                        CircleAvatar(radius: 40, backgroundImage: AssetImage('assets/user.png'),),
                        SizedBox(height: 10,),
                        Text('Devjeet Saha', style: TextStyle(fontWeight: FontWeight.bold),),
                        Text('\Rs 7500', style: TextStyle(color: Colors.grey),)
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 20,),
                Expanded(
                  child: Container(
                    height: 170,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(image: AssetImage('assets/maps.png'), fit: BoxFit.cover),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 10,
                            spreadRadius: 5,
                          )
                        ]
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                MoreCard(car: Car(model: car.model+"-1", distance: car.distance+100, fuelCapacity: car.fuelCapacity+100, pricePerHour: car.pricePerHour+10)),
                SizedBox(height: 5,),
                MoreCard(car: Car(model: car.model+"-2", distance: car.distance+200, fuelCapacity: car.fuelCapacity+200, pricePerHour: car.pricePerHour+20)),
                SizedBox(height: 5,),
                MoreCard(car: Car(model: car.model+"-3", distance: car.distance+300, fuelCapacity: car.fuelCapacity+300, pricePerHour: car.pricePerHour+30)),

                SizedBox(height: 5,),
                MoreCard(car: Car(model: car.model+"-4", distance: car.distance+400, fuelCapacity: car.fuelCapacity+400, pricePerHour: car.pricePerHour+40)),

              ],
            ),
          )
        ],
      ),
    );
  }
}
