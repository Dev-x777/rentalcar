import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:rentalcar/firebase_options.dart';
import 'package:rentalcar/presentation/pages/car_details_page.dart';
import 'package:rentalcar/presentation/pages/car_list_screen.dart';
import 'package:rentalcar/presentation/pages/maps_details_page.dart';
import 'package:rentalcar/presentation/pages/onboarding_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: OnboardingPage(),
    );
  }
}


