import 'set_height_and_width.dart';
import 'package:flutter/material.dart';
class articlecalis extends StatefulWidget {
  const articlecalis({Key? key}) : super(key: key);

  @override
  State<articlecalis> createState() => _articlecalisState();
}

class _articlecalisState extends State<articlecalis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomAppBar(
        height: 53.0,
        color: Colors.black26,
        child: Row(
          children: [
            IconButton(
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
            Spacer(),
            // IconButton(
            //   padding: EdgeInsets.only(right: 20.0),
            //   alignment: Alignment.centerLeft,
            //   onPressed: (){},
            //   icon: Icon(
            //     Icons.share,
            //     color: Colors.red,
            //     size: 27.0,
            //   ),
            //
            // ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child:
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: getwidth(context)*0.05,left: getwidth(context)*0.04,right: getwidth(context)*0.04),

              height: getheight(context)*0.3,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  image: DecorationImage(
                    image: AssetImage ("assets/images/street.jpg"),
                    fit: BoxFit.cover,
                  )
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: getwidth(context)*0.05),
              alignment: Alignment.centerLeft,
              width: getwidth(context)*0.6,
              height: getwidth(context)*0.22,
              child: Text(
                'Reasons For Doing Calisthenics Workouts',
                style: TextStyle(
                  fontSize:
                  23.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.red,
              ),
              margin: EdgeInsets.only(left: getwidth(context)*0.052),
              width: getwidth(context)*0.2,
              height: getwidth(context)*0.06,
              child: Center(
                child: Text(
                  'Lifestyle',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13.0,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Container(
              margin: EdgeInsets.only(top: 2,left: getwidth(context)*0.052,right: getwidth(context)*0.052 ),
              width: getwidth(context),
              height: 1.5,
              color: Colors.white,
              alignment: Alignment.center,
            ),
            SizedBox(
              height: 9.0,
            ),
            Container(
              margin: EdgeInsets.only(left: getwidth(context)*0.052,right: getwidth(context)*0.052 ),
              width: getwidth(context),
              height: getwidth(context)*0.05,
              child: Text(
                '1 min read',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                ),
              ),
            ),
            SizedBox(
              height: 9.0,
            ),
            Container(
              margin: EdgeInsets.only(left: getwidth(context)*0.052,right: getwidth(context)*0.052 ),
              width: getwidth(context),
              height: 1.5,
              color: Colors.white,
              alignment: Alignment.center,
            ),
            SizedBox(
              height: 15.0,
            ),
            Container(
              child: Text(
'Body weight movements, such as push ups, pull ups, jumping lunges, all work multiple muscle groups at once. For example, a pull up doesn’t just work your biceps, it also relies on your back and core muscles. You ask more of your body in a shorter amount of time, and who doesn’t like to save a bit of time these days when it comes to exercise?',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                ),
              ),
              margin: EdgeInsets.only(left: getwidth(context)*0.05,right: getwidth(context)*0.05,top: 10.0),
            ),

            SizedBox(
              height: 8.0,
            ),

            Container(
              child: Text(

                'Because you’re not lifting heavy weights, there is a reduction in risk of injury. You’re designed to be able to move yourself in different ways, meaning calisthenics is easier on your tendons, joints and muscles. You recover quicker, meaning your workload increases during the course of your exercise life and you end up getting in more workouts during the course of the year.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                ),
              ),
              margin: EdgeInsets.only(left: getwidth(context)*0.05,right: getwidth(context)*0.05,top: 10.0),
            ),
            SizedBox(
              height: 8.0,
            ),

            Container(
              child: Text(
'Yes, callisthenic workouts can be done with ZERO equipment, but even with one or two pieces of equipment (pull up bar/dip bar) you will still save thousands on gym membership fees. You can achieve a seriously hardcore workout as soon as you step through your own front door in just 20 minutes…that’s no travel time, no parking time, no waiting for machine time, no heading to the grocery store after the gym time…over the course of a year, this adds up tremendously.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                ),
              ),
              margin: EdgeInsets.only(left: getwidth(context)*0.05,right: getwidth(context)*0.05,top: 10.0,bottom: 20.0),
            ),
            SizedBox(
              height: 3.0,
            ),

            Container(
              child: Text(
'Calisthenics builds your body’s proprioceptors. Proprioception is the internal sense that tells you where your body parts are without having to look at them. This internal body awareness relies on receptors in your joints, muscles, ligaments, and connective tissue. They pick up information as muscles bend and stretch as well as when your body is still.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                ),
              ),
              margin: EdgeInsets.only(left: getwidth(context)*0.05,right: getwidth(context)*0.05,top: 10.0,bottom: 20.0),
            ),
          ],
        ),


      ),
    );

  }
}
