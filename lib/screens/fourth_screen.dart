import 'package:flutter/material.dart';
import 'package:task3/components/bubbles.dart';

class FourthScreen extends StatelessWidget {
  const FourthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1F1146FF),
      body: Column(
        children: [
          SizedBox(height: 40,),
          Row(
            children: [
              const SizedBox(width: 30),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: const Color(0xff331E6FFF),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back, color: Colors.white),
                ),
              ),
              const SizedBox(width: 95),
              Text(
                "Results",
                style: TextStyle(
                  color: Colors.teal.shade300,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Padding(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Total correct answers ",style: TextStyle(color: Colors.white,fontSize: 20),),
              SizedBox(height: 10,),
              Text("6 out of 10 Questions",style: TextStyle(color: Colors.teal.shade300,fontSize: 20),),
              SizedBox(height: 50,),
              Stack(
                children: [
                  Container(
                    height: 400,
                    width: 450,
                    decoration: BoxDecoration(color: Colors.deepPurpleAccent,borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        SizedBox(height: 50,),
                        Text("Your final score is",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),),
                        SizedBox(height: 30,),
                        Container(
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(color: Colors.yellow.shade700,borderRadius: BorderRadius.circular(100)),
                          child: Center(
                            child: Text("60",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 60),),),
                        ),
                      ],
                    ),
                  ),
                  CustomContainer(null, 40, null, 90, 15, 15, Colors.teal.shade300),
                  CustomContainer(null, 55, 170, null, 15, 15, Colors.white),
                  CustomContainer(null, 85, 100, null, 8, 8, Colors.yellow),
                  CustomContainer(null, 82, null, 100, 15, 15, Colors.yellow),
                  CustomContainer(null, 90, null, 30, 8, 8, Colors.red),
                  CustomContainer(null, 75, 60, null, 8, 8, Colors.red),
                  CustomContainer(null, 120, 30, null, 8, 8, Colors.yellow),
                  CustomContainer(150, null, 80, null, 15, 15, Colors.blue.shade400),
                  CustomContainer(170, null, 40, null, 8, 8, Colors.pink.shade400),
                  CustomContainer(130, null, null, 90, 15, 15, Colors.blue.shade400),
                  CustomContainer(90, null, 150, null, 8, 8, Colors.yellow),
                ],
              ),
              SizedBox(height: 100,),
              SizedBox(
                width: 450,
                height: 70,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.wifi_protected_setup,color: Colors.white,size: 30,),
                      SizedBox(width: 10,),
                      Text("Try Again", style: TextStyle(color: Colors.white,fontSize: 28))
                    ],
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.deepPurpleAccent),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
              padding: EdgeInsets.all(30))
        ],
      ),
    );
  }
}

