import 'package:flutter/material.dart';
import 'package:rentalcar/presentation/pages/car_list_screen.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      backgroundColor: Color(0xff2C2B34),

      body: Column(
        children: [

          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/onboarding.png'),
                fit: BoxFit.cover
                )
              ),
            
            ),
          ),
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Premium Cars. \nEnjoy The Luxury',
                  style: TextStyle(color: Colors.white , fontSize: 32, fontWeight: FontWeight.bold)
            
                  ),
                  SizedBox(height: 10 ,),
                  Text(' Explore premium cars for every journey!',
                  style: TextStyle(color: Colors.grey, fontSize: 16, )
                  ),
                  SizedBox(height: 20,),
                  SizedBox(
                    height: 54,
                    width: 320,
                    child: ElevatedButton(
                        onPressed:() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => CarListScreen())
                          );
                          
                          
                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.white
                        ),
            
                        child: Text('Lets Go' , style: TextStyle(fontWeight: FontWeight.bold),)),
                  )
            
                ],
            
              ),
            ),
          )
          
        ],
      ),
    );
  }
}
