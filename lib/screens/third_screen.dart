import 'package:flutter/material.dart';
import 'package:task3/screens/fourth_screen.dart';
import 'package:task3/components/choices.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1F1146FF),
      body: Column(
        children: [
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Level 5",
                style: TextStyle(
                  color: Colors.teal.shade300,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 95),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: const Color(0xff331E6FFF),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.menu, color: Colors.white),
                ),
              ),
              const SizedBox(width: 30),
            ],
          ),
          SizedBox(height: 30,),
          Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(child: Text("07/10",style: TextStyle(color: Colors.teal.shade300,fontWeight: FontWeight.bold),),
                padding: EdgeInsets.only(right: 30, left: 30),),
            SizedBox(height: 10,),
            Padding(child: Stack(
              children: [
                Text("What is the 6   planet in     \n the solar system?",style: TextStyle(color: Colors.white,fontSize: 28),),
                Positioned(
                    left: 165,
                    child: Text("th",style: TextStyle(color: Colors.white),)
                ),
              ],
            ),
                padding: EdgeInsets.only(right: 30, left: 30)),
            SizedBox(height: 20,),
            Padding(child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset('assets/images/5432379.jpg'),
            ),
                padding: EdgeInsets.only(right: 30, left: 30)),
            SizedBox(height: 30,),
            Padding(child: ChoicesContainer("01", "Jupiter", Colors.white),
                padding: EdgeInsets.only(right: 30, left: 30)),
            SizedBox(height: 20,),
            Padding(child: Container(
              width: 420,
              height: 60,
              decoration: BoxDecoration(color: Colors.teal.shade300,borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                  SizedBox(width: 10,),
                  ChoicesContainer("02", "Saturn", Colors.black)
                ],
              ),
            ),
                padding: EdgeInsets.only(right: 20, left: 20)),
            SizedBox(height: 20,),
            Padding(child: ChoicesContainer("03", "Earth", Colors.white),
                padding: EdgeInsets.only(right: 30, left: 30)),
            SizedBox(height: 30,),
            Padding(child: ChoicesContainer("04", "Neptune", Colors.white),
                padding: EdgeInsets.only(right: 30, left: 30)),
            SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(child: SizedBox(
                  width: 120,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Previous", style: TextStyle(color: Colors.white)),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.deepPurpleAccent),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),
                ),
                    padding: EdgeInsets.only(right: 30, left: 30)),
                Padding(child: SizedBox(
                  width: 120,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (fourth) => FourthScreen()));
                    },
                    child: Text("Next", style: TextStyle(color: Colors.white)),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.deepPurpleAccent),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),
                ),
                    padding: EdgeInsets.only(right: 30, left: 30))
              ],
            )

          ],
          ),
        ],
      ),
    );
  }
}