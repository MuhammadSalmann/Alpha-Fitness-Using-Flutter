import 'package:flutter/material.dart';
import 'AbsWorkout.dart';
import 'Armsworkout.dart';
import 'BackWorkout.dart';
import 'ChestWorkout.dart';
import 'LegsWorkout.dart';
import 'ShouldeWorkout.dart';
import 'set_height_and_width.dart';
import 'HomeScreen.dart';
class workoutsselect extends StatefulWidget {
  const workoutsselect({Key? key}) : super(key: key);

  @override
  State<workoutsselect> createState() => _workoutsselectState();
}

class _workoutsselectState extends State<workoutsselect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title:  Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: getwidth(context)*0.04),
              child: Text(

                'GYM',style: TextStyle(color: Colors.red,fontFamily: "BebasNeue",letterSpacing: 1.5,fontSize: 27),),
            ),
            SizedBox(
              width: 8,
            ),
            Text('WORKOUTS',style: TextStyle(color: Colors.white,fontFamily: "BebasNeue",letterSpacing: 1.5,fontSize: 27),),
          ],
        ),
      ),
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomAppBar(
        height: 53.0,
        color: Colors.black26,
        child: IconButton(
          padding: EdgeInsets.only(left: getwidth(context)*0.05),
          alignment: Alignment.centerLeft,
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_sharp,
            color: Colors.red,
            size: 27.0,
          ),

        ),
      ),
      body: SingleChildScrollView(
        child: Column(

          children: [

            Container(
              margin: EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>chest_workout()));
                    },
                child:
                  Container(
                    height: getheight(context)*0.25,
                    width: getwidth(context)*0.43,

                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage("assets/images/chestw.jpg"),
                        fit: BoxFit.cover,
                      )
                    ),
                  ),
                  ),
      InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>back_workout()));
        },
        child:
                  Container(
                    height: getheight(context)*0.25,
                    width: getwidth(context)*0.43,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage("assets/images/backw.jpg"),
                        fit: BoxFit.cover,
                      )
                    ),
                  ),
      ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                   child: Text(
                     'Chest Workout',
                     style: TextStyle(
                       color: Colors.white,
                       fontWeight: FontWeight.bold,
                       fontSize: 22.0,
                       letterSpacing: 0.5
                     ),
                   ),
                  ),
                  Container(
                    child: Text(
                      'Back Workout',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 22.0,
                          letterSpacing: 0.5
                      ),
                    ),
                  ),
                ],
              ),
            ),
      InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>abs_workout()));
        },
        child:
            Container(
              margin: EdgeInsets.only(top: 25),
              height: getheight(context)*0.26,
              width: getwidth(context)*0.9,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
                 image: DecorationImage(
                   image: AssetImage("assets/images/absw.jpg"),
                   fit: BoxFit.cover,
                 )
              ),
            ),
      ),
            Container(
              margin: EdgeInsets.only(top: 8),
              child: Center(
                child: Text(
                  'Abs Workout',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22.0,
                      letterSpacing: 0.5
                  ),
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                  onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>arms_workout()));
            },
              child:
                  Container(
                    height: getheight(context)*0.25,
                    width: getwidth(context)*0.43,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage("assets/images/armsw.jpg"),
                          fit: BoxFit.cover,
                        )
                    ),
                  ),
                  ),
      InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>shoulder_workout()));
        },
        child:
                  Container(
                    height: getheight(context)*0.25,
                    width: getwidth(context)*0.43,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage("assets/images/shoulderw.jpg"),
                          fit: BoxFit.cover,
                        )
                    ),
                  ),
      ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: Text(
                      'Arms Workout',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 22.0,
                          letterSpacing: 0.5
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      'Shoulder Workout',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 22.0,
                          letterSpacing: 0.5
                      ),
                    ),
                  ),
                ],
              ),
            ),
      InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>legs_workout()));
        },
        child:
            Container(
              margin: EdgeInsets.only(top: 25),
              height: getheight(context)*0.26,
              width: getwidth(context)*0.9,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage("assets/images/legsw.jpg"),
                    fit: BoxFit.cover,
                  )

              ),
            ),
      ),
            Container(
              margin: EdgeInsets.only(top: 5,bottom: 40),
              child: Center(
                child: Text(
                  'Legs Workout',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22.0,
                      letterSpacing: 0.5
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
