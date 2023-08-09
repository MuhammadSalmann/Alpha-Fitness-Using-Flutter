import 'package:alphafitness/set_height_and_width.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';

class abshistory extends StatefulWidget {
  const abshistory({Key? key}) : super(key: key);

  @override
  State<abshistory> createState() => _abshistoryState();
}

class _abshistoryState extends State<abshistory> {
  final ref = FirebaseDatabase.instance.ref('users');
  FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 8),
              child: Text(

                'LAST',style: TextStyle(color: Colors.red,fontSize: 22,fontWeight: FontWeight.bold),),
            ),
            SizedBox(
              width: 8,
            ),
            Text('UPDATED',style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),),
          ],
        ),
      ),
      backgroundColor: Colors.black,
      body: Container(
        height: getheight(context),
        width: getwidth(context),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: getheight(context)*0.02,),



              Container(
                margin: EdgeInsets.only(left: getwidth(context)*0.03,right: getwidth(context)*0.03),
                decoration: BoxDecoration(
                    color: Colors.white10,
                    borderRadius: BorderRadius.circular(20)
                ),
                width: getwidth(context),
                height: getheight(context)*0.2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: getheight(context)*0.02,left: getwidth(context)*0.04),
                        child: Text('Leg Raises',style: TextStyle(
                            fontSize: 21,
                            color: Colors.white,fontWeight: FontWeight.bold),)),
                    SizedBox(height: getheight(context)*0.02,),
                    Row(
                        children: [
                          Container(

                            child: Text('Sets : ',style: TextStyle(color: Colors.white,fontSize: 20),),
                            margin: EdgeInsets.only(left: getwidth(context)*0.04),),

                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white10,
                            ),
                            width: getwidth(context) * 0.18,
                            height: getheight(context) * 0.07,


                            child:
                            FirebaseAnimatedList(
                              query: ref.orderByChild('Email').equalTo(
                                  _auth.currentUser?.email.toString()),
                              itemBuilder: (context, snapshot, animation,
                                  index) {
                                return Container(
                                  width: getwidth(context) * 0.17,
                                  height: getheight(context)*0.07,
                                  child: Center(
                                    child:Text(
                                      snapshot.child('Leg Raises sets').value.toString(),
                                      style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                );
                              },

                            ),margin: EdgeInsets.only(left: getwidth(context)*0.09),),
                          SizedBox(width: getwidth(context)*0.02,),
                          Row(
                              children: [
                                Container(

                                  child: Text('Reps : ',style: TextStyle(color: Colors.white,fontSize: 20),),
                                  margin: EdgeInsets.only(left: getwidth(context)*0.04),),

                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.white10,
                                  ),
                                  width: getwidth(context) * 0.18,
                                  height: getheight(context) * 0.07,


                                  child:
                                  FirebaseAnimatedList(
                                    query: ref.orderByChild('Email').equalTo(
                                        _auth.currentUser?.email.toString()),
                                    itemBuilder: (context, snapshot, animation,
                                        index) {
                                      return Container(
                                        width: getwidth(context) * 0.17,
                                        height: getheight(context)*0.07,
                                        child: Center(
                                          child: Text(
                                            snapshot.child('Leg Raises reps').value.toString(),
                                            style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      );
                                    },

                                  ),margin: EdgeInsets.only(left: getwidth(context)*0.09),),
                                SizedBox(width: getwidth(context)*0.02,),
                              ]),

                        ]),
                  ],
                ),
              ),

              SizedBox(height: getheight(context)*0.02,),



              Container(
                margin: EdgeInsets.only(left: getwidth(context)*0.03,right: getwidth(context)*0.03),
                decoration: BoxDecoration(
                    color: Colors.white10,
                    borderRadius: BorderRadius.circular(20)
                ),
                width: getwidth(context),
                height: getheight(context)*0.2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: getheight(context)*0.02,left: getwidth(context)*0.04),
                        child: Text('Crunches Frog',style: TextStyle(
                            fontSize: 21,
                            color: Colors.white,fontWeight: FontWeight.bold),)),
                    SizedBox(height: getheight(context)*0.02,),
                    Row(
                        children: [
                          Container(

                            child: Text('Sets : ',style: TextStyle(color: Colors.white,fontSize: 20),),
                            margin: EdgeInsets.only(left: getwidth(context)*0.04),),

                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white10,
                            ),
                            width: getwidth(context) * 0.18,
                            height: getheight(context) * 0.07,


                            child:
                            FirebaseAnimatedList(
                              query: ref.orderByChild('Email').equalTo(
                                  _auth.currentUser?.email.toString()),
                              itemBuilder: (context, snapshot, animation,
                                  index) {
                                return Container(
                                  width: getwidth(context) * 0.17,
                                  height: getheight(context)*0.07,
                                  child: Center(
                                    child:Text(
                                      snapshot.child('Frog Crunches sets').value.toString(),
                                      style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                );
                              },

                            ),margin: EdgeInsets.only(left: getwidth(context)*0.09),),
                          SizedBox(width: getwidth(context)*0.02,),
                          Row(
                              children: [
                                Container(

                                  child: Text('Reps : ',style: TextStyle(color: Colors.white,fontSize: 20),),
                                  margin: EdgeInsets.only(left: getwidth(context)*0.04),),

                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.white10,
                                  ),
                                  width: getwidth(context) * 0.18,
                                  height: getheight(context) * 0.07,


                                  child:
                                  FirebaseAnimatedList(
                                    query: ref.orderByChild('Email').equalTo(
                                        _auth.currentUser?.email.toString()),
                                    itemBuilder: (context, snapshot, animation,
                                        index) {
                                      return Container(
                                        width: getwidth(context) * 0.17,
                                        height: getheight(context)*0.07,
                                        child: Center(
                                          child: Text(
                                            snapshot.child('Frog Crunches reps').value.toString(),
                                            style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      );
                                    },

                                  ),margin: EdgeInsets.only(left: getwidth(context)*0.09),),
                                SizedBox(width: getwidth(context)*0.02,),
                              ]),

                        ]),
                  ],
                ),
              ),

              SizedBox(height: getheight(context)*0.02,),



              Container(
                margin: EdgeInsets.only(left: getwidth(context)*0.03,right: getwidth(context)*0.03),
                decoration: BoxDecoration(
                    color: Colors.white10,
                    borderRadius: BorderRadius.circular(20)
                ),
                width: getwidth(context),
                height: getheight(context)*0.2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: getheight(context)*0.02,left: getwidth(context)*0.04),
                        child: Text('Bicycle Crunches',style: TextStyle(
                            fontSize: 21,
                            color: Colors.white,fontWeight: FontWeight.bold),)),
                    SizedBox(height: getheight(context)*0.02,),
                    Row(
                        children: [
                          Container(

                            child: Text('Sets : ',style: TextStyle(color: Colors.white,fontSize: 20),),
                            margin: EdgeInsets.only(left: getwidth(context)*0.04),),

                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white10,
                            ),
                            width: getwidth(context) * 0.18,
                            height: getheight(context) * 0.07,


                            child:
                            FirebaseAnimatedList(
                              query: ref.orderByChild('Email').equalTo(
                                  _auth.currentUser?.email.toString()),
                              itemBuilder: (context, snapshot, animation,
                                  index) {
                                return Container(
                                  width: getwidth(context) * 0.17,
                                  height: getheight(context)*0.07,
                                  child: Center(
                                    child:Text(
                                      snapshot.child('Bicycle Crunches sets').value.toString(),
                                      style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                );
                              },

                            ),margin: EdgeInsets.only(left: getwidth(context)*0.09),),
                          SizedBox(width: getwidth(context)*0.02,),
                          Row(
                              children: [
                                Container(

                                  child: Text('Reps : ',style: TextStyle(color: Colors.white,fontSize: 20),),
                                  margin: EdgeInsets.only(left: getwidth(context)*0.04),),

                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.white10,
                                  ),
                                  width: getwidth(context) * 0.18,
                                  height: getheight(context) * 0.07,


                                  child:
                                  FirebaseAnimatedList(
                                    query: ref.orderByChild('Email').equalTo(
                                        _auth.currentUser?.email.toString()),
                                    itemBuilder: (context, snapshot, animation,
                                        index) {
                                      return Container(
                                        width: getwidth(context) * 0.17,
                                        height: getheight(context)*0.07,
                                        child: Center(
                                          child: Text(
                                            snapshot.child('Bicycle Crunches reps').value.toString(),
                                            style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      );
                                    },

                                  ),margin: EdgeInsets.only(left: getwidth(context)*0.09),),
                                SizedBox(width: getwidth(context)*0.02,),
                              ]),

                        ]),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
