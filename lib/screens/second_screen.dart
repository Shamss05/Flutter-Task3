import 'package:flutter/material.dart';
import 'package:task3/screens/third_screen.dart';
import 'package:task3/components/levels.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1F1146FF),
      body: ListView(
        children: [
          Column(
          children: [
            const SizedBox(height: 50),
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
                  "Levels",
                  style: TextStyle(
                    color: Colors.teal.shade300,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 100),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                LevelsContainer("01",Colors.deepPurpleAccent, Icons.star, Colors.yellow, Colors.yellow, Colors.yellow),
                LevelsContainer("02",Colors.blue, Icons.star, Colors.yellow, Colors.yellow, Colors.yellow),
              ],
            ),
            SizedBox(height: 100,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                LevelsContainer("03",Colors.amber.shade900, Icons.star, Colors.yellow, Colors.brown.shade800, Colors.brown.shade800),
                LevelsContainer("04",Colors.greenAccent, Icons.star, Colors.yellow, Colors.brown.shade800, Colors.yellow),
              ],
            ),
            SizedBox(height: 100,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (third) => ThirdScreen()));
                  },
                  child: LevelsContainer("05",Colors.pinkAccent, Icons.star_border_outlined, Colors.yellow, Colors.yellow, Colors.yellow),
                ),
                Stack(
                  children: [
                    LevelsContainer("06",Colors.deepPurpleAccent, Icons.star_border_outlined, Colors.brown.shade800, Colors.brown.shade800, Colors.brown.shade800),
                    ClipPath(
                      clipper: PentagonClipper(),
                      child: Container(
                        width: 110,
                        height: 110,
                        color: Colors.black38,
                      ),
                    ),
                    Positioned(
                        top: 45,
                        left: 35,
                        child: Icon(Icons.lock,color: Colors.yellow,size: 40,))
                  ],
                )
              ],
            ),
            SizedBox(height: 100,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Stack(
                  children: [
                    LevelsContainer("07",Colors.blue, Icons.star_border_outlined, Colors.brown.shade800, Colors.brown.shade800, Colors.brown.shade800),
                    ClipPath(
                      clipper: PentagonClipper(),
                      child: Container(
                        width: 110,
                        height: 110,
                        color: Colors.black38,
                      ),
                    ),
                    Positioned(
                        top: 45,
                        left: 35,
                        child: Icon(Icons.lock,color: Colors.yellow,size: 40,))
                  ]
                ),
                Stack(
                  children: [
                LevelsContainer("08",Colors.amber.shade900, Icons.star_border_outlined, Colors.brown.shade800, Colors.brown.shade800, Colors.brown.shade800),
                    ClipPath(
                      clipper: PentagonClipper(),
                      child: Container(
                        width: 110,
                        height: 110,
                        color: Colors.black38,
                      ),
                    ),
                    Positioned(
                        top: 45,
                        left: 35,
                        child: Icon(Icons.lock,color: Colors.yellow,size: 40,))
                    ]
                )
              ],
            ),
          ],
        ),
        ]
      ),
    );
  }
}


