import 'package:flutter/material.dart';
import 'package:task3/screens/second_screen.dart';
import 'package:task3/components/bubbles.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1F1146FF),
      body: Column(
        children: [
          Stack(
            children: [
              ClipPath(
                clipper: Clipping(),
                child: Container(
                  color: Color(0xff2A175AFF),
                  height: 400,
                  width: 420,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 60,),
                      Image.asset('assets/images/light-bulb_7941917.png',width: 200,),
                      Text("Quizzles",style: TextStyle(color: Colors.teal.shade300,fontWeight: FontWeight.bold,fontSize: 40),),
                    ],
                  ),
                ),
              ),
              CustomContainer(100, null, 50, null, 20, 20, Color(0xff331E6FFF)),
              CustomContainer(170, null, 70, null, 30, 30, Color(0xff331E6FFF)),
              CustomContainer(250, null, 30, null, 15, 15, Color(0xff331E6FFF)),
              CustomContainer(80, null, 100, null, 10, 10, Color(0xff331E6FFF)),
              CustomContainer(70, null, null, 10, 20, 20, Color(0xff331E6FFF)),
              CustomContainer(80, null, null, 100, 15, 15, Color(0xff331E6FFF)),
              CustomContainer(140, null, null, 30, 15, 15, Color(0xff331E6FFF)),
              CustomContainer(140, null, null, 110, 15, 15, Color(0xff331E6FFF)),
              CustomContainer(210, null, null, 70, 5, 5, Color(0xff331E6FFF)),
              CustomContainer(250, null, null, 90, 15, 15, Color(0xff331E6FFF)),
            ],
          ),
          Column(
            children: [
              SizedBox(height: 20,),
              Text("Let's Play!",style: TextStyle(color: Colors.white,fontSize: 28,fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Text("Play now and Level up",style: TextStyle(color: Colors.white,fontSize: 16),),
              SizedBox(height: 150,),
              SizedBox(
                width: 300,
                height: 70,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (second) => SecondScreen()));
                  },
                  child: Text("Play Now", style: TextStyle(color: Colors.white,fontSize: 20)),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.deepPurpleAccent),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30,),
              SizedBox(
                width: 300,
                height: 70,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("About", style: TextStyle(color: Colors.white,fontSize: 20)),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.transparent),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: BorderSide(
                          color: Colors.deepPurpleAccent,
                          width: 4,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class Clipping extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path path=new Path();
    final lowpoint=size.height-45;
    final highpoint=size.height-90;
    path.lineTo(0, size.height);
    path.quadraticBezierTo(size.width/6, highpoint, size.width/2, lowpoint);
    path.quadraticBezierTo(3/4*size.width, size.height, size.width, lowpoint);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }

}