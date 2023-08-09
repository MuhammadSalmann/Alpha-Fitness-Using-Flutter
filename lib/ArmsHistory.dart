import 'package:alphafitness/set_height_and_width.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';

class armshistory extends StatefulWidget {
  const armshistory({Key? key}) : super(key: key);

  @override
  State<armshistory> createState() => _armshistoryState();
}

class _armshistoryState extends State<armshistory> {
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
                height: getheight(context)*0.3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: getheight(context)*0.02,left: getwidth(context)*0.04),
                        child: Text('Cable Biceps Curl',style: TextStyle(
                            fontSize: 21,
                            color: Colors.white,fontWeight: FontWeight.bold),)),
                    SizedBox(height: getheight(context)*0.02,),
                    Container(
                      child: Row(
                          children: [
                            Container(

                              child: Text('Weight : ',style: TextStyle(color: Colors.white,fontSize: 20),),
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
                                        snapshot.child('Cable Bicep weights').value.toString(),
                                        style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  );
                                },

                              ),margin: EdgeInsets.only(left: getwidth(context)*0.05),),
                            SizedBox(width: getwidth(context)*0.02,),
                            Container(
                                margin:EdgeInsets.only(
                                    right: getwidth(context)*0.05),child: Text(
                              'kg',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),)),
                          ]),
                      margin: EdgeInsets.only(top: getheight(context)*0.01),
                    ),
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
                                      snapshot.child('Cable Bicep sets').value.toString(),
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
                                            snapshot.child('Cable Bicep reps').value.toString(),
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
                height: getheight(context)*0.3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: getheight(context)*0.02,left: getwidth(context)*0.04),
                        child: Text('Dumbell Bicep Curl',style: TextStyle(
                            fontSize: 21,
                            color: Colors.white,fontWeight: FontWeight.bold),)),
                    SizedBox(height: getheight(context)*0.02,),
                    Container(
                      child: Row(
                          children: [
                            Container(

                              child: Text('Weight : ',style: TextStyle(color: Colors.white,fontSize: 20),),
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
                                        snapshot.child('Dumbbell Curl weights').value.toString(),
                                        style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  );
                                },

                              ),margin: EdgeInsets.only(left: getwidth(context)*0.05),),
                            SizedBox(width: getwidth(context)*0.02,),
                            Container(
                                margin:EdgeInsets.only(
                                    right: getwidth(context)*0.05),child: Text(
                              'kg',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),)),
                          ]),
                      margin: EdgeInsets.only(top: getheight(context)*0.01),
                    ),
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
                                      snapshot.child('Dumbbell Curl sets').value.toString(),
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
                                            snapshot.child('Dumbbell Curl reps').value.toString(),
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
                height: getheight(context)*0.3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: getheight(context)*0.02,left: getwidth(context)*0.04),
                        child: Text('Seated Barbell Curl',style: TextStyle(
                            fontSize: 21,
                            color: Colors.white,fontWeight: FontWeight.bold),)),
                    SizedBox(height: getheight(context)*0.02,),
                    Container(
                      child: Row(
                          children: [
                            Container(

                              child: Text('Weight : ',style: TextStyle(color: Colors.white,fontSize: 20),),
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
                                        snapshot.child('Barbell Curl weights').value.toString(),
                                        style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  );
                                },

                              ),margin: EdgeInsets.only(left: getwidth(context)*0.05),),
                            SizedBox(width: getwidth(context)*0.02,),
                            Container(
                                margin:EdgeInsets.only(
                                    right: getwidth(context)*0.05),child: Text(
                              'kg',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),)),
                          ]),
                      margin: EdgeInsets.only(top: getheight(context)*0.01),
                    ),
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
                                      snapshot.child('Barbell Curl sets').value.toString(),
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
                                            snapshot.child('Barbell Curl reps').value.toString(),
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
                height: getheight(context)*0.3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: getheight(context)*0.02,left: getwidth(context)*0.04),
                        child: Text('Triceps Dips Machine',style: TextStyle(
                            fontSize: 21,
                            color: Colors.white,fontWeight: FontWeight.bold),)),
                    SizedBox(height: getheight(context)*0.02,),
                    Container(
                      child: Row(
                          children: [
                            Container(

                              child: Text('Weight : ',style: TextStyle(color: Colors.white,fontSize: 20),),
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
                                        snapshot.child('Machine Dips weights').value.toString(),
                                        style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  );
                                },

                              ),margin: EdgeInsets.only(left: getwidth(context)*0.05),),
                            SizedBox(width: getwidth(context)*0.02,),
                            Container(
                                margin:EdgeInsets.only(
                                    right: getwidth(context)*0.05),child: Text(
                              'kg',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),)),
                          ]),
                      margin: EdgeInsets.only(top: getheight(context)*0.01),
                    ),
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
                                      snapshot.child('Machine Dips sets').value.toString(),
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
                                            snapshot.child('Machine Dips reps').value.toString(),
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
                margin: EdgeInsets.only(left: getwidth(context)*0.03,right: getwidth(context)*0.03,bottom: getheight(context)*0.05),
                decoration: BoxDecoration(
                    color: Colors.white10,
                    borderRadius: BorderRadius.circular(20)
                ),
                width: getwidth(context),
                height: getheight(context)*0.3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: getheight(context)*0.02,left: getwidth(context)*0.04),
                        child: Text('Bench Triceps Dips',style: TextStyle(
                            fontSize: 21,
                            color: Colors.white,fontWeight: FontWeight.bold),)),
                    SizedBox(height: getheight(context)*0.02,),
                    Container(
                      child: Row(
                          children: [
                            Container(

                              child: Text('Weight : ',style: TextStyle(color: Colors.white,fontSize: 20),),
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
                                        snapshot.child('Bench Dips weights').value.toString(),
                                        style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  );
                                },

                              ),margin: EdgeInsets.only(left: getwidth(context)*0.05),),
                            SizedBox(width: getwidth(context)*0.02,),
                            Container(
                                margin:EdgeInsets.only(
                                    right: getwidth(context)*0.05),child: Text(
                              'kg',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),)),
                          ]),
                      margin: EdgeInsets.only(top: getheight(context)*0.01),
                    ),
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
                                      snapshot.child('Bench Dips sets').value.toString(),
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
                                            snapshot.child('Bench Dips reps').value.toString(),
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
