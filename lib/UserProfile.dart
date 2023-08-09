import 'package:alphafitness/LoginPage.dart';
import 'package:alphafitness/UserRecordManager.dart';
import 'package:alphafitness/firebase_toast.dart';
import 'package:alphafitness/set_height_and_width.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';


import 'MyProfile.dart';
class user_profile extends StatefulWidget {
  const user_profile({Key? key}) : super(key: key);

  @override
  State<user_profile> createState() => _user_profileState();
}

class _user_profileState extends State<user_profile> {
  final feedbackController=TextEditingController();
  final ref = FirebaseDatabase.instance.ref('users');
  final _auth=FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: BottomAppBar(
      //   height: 50,
      //   color: Colors.black,
      //   child: Center(
      //     child: TextButton(
      //       onPressed: (){
      //         Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>loginpage(usernameController: '')), (route) => false);
      //       },
      //       child: Text('Sign Out',style: TextStyle(color: Colors.red,
      //           fontSize: 15,fontWeight: FontWeight.bold),),
      //     ),
      //   ),
      // ),
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Profile',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold
        ,fontSize: 20),),
      ),
      body: Container(
        height: getheight(context),
        width: getwidth(context),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // InkWell(
              //   child: Container(
              //     child: CircleAvatar(
              //
              //
              //       backgroundColor: Colors.white10,
              //       radius:55,
              //
              //     ),
              //   ),
              //   onTap: (){
              //     Navigator.push(context, MaterialPageRoute(builder: (context)=>user_profile()));
              //   },
              // ),
              SizedBox(
                height: 10,
              ),
             Container(

               width: getwidth(context),
               height: getheight(context)*0.17,
               child: FirebaseAnimatedList(

                 query: ref.orderByChild('Email').equalTo(_auth.currentUser?.email.toString()),
                  itemBuilder: (context,snapshot,animation,index){
                   return Container(

                     height: getheight(context)*0.2,
                     width: getwidth(context),
                     child: Column(
                       children: [
                         CircleAvatar(
                           child: Center(
                             child: Row(
                               children: [
                                 Text(
                                   snapshot.child('First Name').value.toString().substring(0,1
                                   ),
                                   style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                                 SizedBox(width: 2,),
                                 Text(
                                   snapshot.child('Last Name').value.toString().substring(0,1
                                   ),
                                   style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),

                               ],
                               mainAxisAlignment: MainAxisAlignment.center,
                             ),
                           ),
                          backgroundColor: Colors.white12,
                             radius:55,

                           ),

                         SizedBox(
                           height: 10,
                         ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(snapshot.child('First Name').value.toString(), style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),),
                            SizedBox(width: 4,),
                            Text(snapshot.child('Last Name').value.toString(), style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),),
                          ],
                        ),
                         // SizedBox(height: 5,),
                         // Center(
                         //   child: Text(snapshot.child('Email').value.toString(),
                         //     style: TextStyle(color: Colors.white),),
                         // ),
                       ],
                     ),
                     // child: Center(
                     //   child: Text(snapshot.child('Name').value.toString(),
                     // style: TextStyle(color: Colors.white),),
                     // ),
                   );
                  },
               ),
             ),

              Container(
                margin: EdgeInsets.only(left: 15,right: 15),
                height: getheight(context)*0.45,
                width: getwidth(context),
                child: ListView(
                   children: [
                     SizedBox(
                       height: 30,
                     ),
                     Container(
                       child: ListTile(
                         shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(20)
                         ),
                         onTap: (){
                           Navigator.push(context, MaterialPageRoute(builder: (context)=>my_profile()));
                         },
                         leading: Icon(Icons.person,color: Colors.white,),
                         title: Text('My Profile',style: TextStyle(color: Colors.white),),
                         trailing: Icon(Icons.navigate_next,color: Colors.white,),
                         tileColor: Colors.white10,

                       ),
                     ),
                     SizedBox(
                       height: getheight(context)*0.04,
                     ),
                     Text('Manage App Account information',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                     SizedBox(
                       height: 20,
                     ),
                     ListTile(
                       onTap: (){
                         showModalBottomSheet(

                             backgroundColor: Colors.transparent,
                             context: context,
                             builder: (BuildContext context){
                               return Container(
                                   decoration: BoxDecoration(
                                       color: Colors.black
                                       ,
                                       borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
                                   ),

                                   width: getwidth(context),
                                   height: getheight(context)*0.5,
                                   child:
                                   SingleChildScrollView(
                                     child:
                                     Column(
                                       mainAxisAlignment: MainAxisAlignment.start,
                                       crossAxisAlignment: CrossAxisAlignment.center,
                                       children: [
                                         Row(
                                           children: [
                                             Container(
                                               child: Text(
                                                 'Feedback',
                                                 style: TextStyle(
                                                   color: Colors.white,
                                                   fontSize: 20.0,
                                                   fontWeight: FontWeight.bold,
                                                 ),
                                               ),
                                               margin: EdgeInsets.only(left: getwidth(context)*0.07,top: getheight(context)*0.03),
                                               width: getwidth(context)*0.4,
                                               height: getheight(context)*0.05,
                                             ),
                                             Spacer(),
                                             IconButton(
                                               icon: Icon(
                                                 Icons.close,
                                                 size: 25.0,
                                                 color: Colors.white,

                                               ),
                                               onPressed: (){
                                                 Navigator.pop(context);
                                               },
                                             )
                                           ],
                                         ),
                                         Container(
                                           width: getwidth(context),
                                           height: 1.5,
                                           color: Colors.white,
                                         ),
                                         Container(
                                           decoration: BoxDecoration(
                                             borderRadius: BorderRadius.circular(15),
                                             color: Colors.white10,
                                           ),
                                           width: getwidth(context) * 0.85,
                                           height: getheight(context) * 0.15,


                                           child:
                                           FirebaseAnimatedList(
                                             query: ref.orderByChild('Email').equalTo(
                                                 _auth.currentUser?.email.toString()),
                                             itemBuilder: (context, snapshot, animation,
                                                 index) {
                                               return Container(

                                                 width: getwidth(context) * 0.18,
                                                 height: getheight(context)*0.15,

                                                   child: TextField(
                                                     maxLines: 5,
                                                     cursorColor: Colors.red,
                                                     keyboardType: TextInputType.text,
                                                     style: TextStyle(
                                                         color: Colors.white,
                                                         fontSize: 20
                                                     ),
                                                     controller: feedbackController,
                                                     decoration: InputDecoration(
                                                       hintText: "Share Your Experience",
                                          hintStyle: TextStyle(color: Colors.white70,fontSize: 17),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors.white,
                                              width: 1
                                            )
                                          ),
                                                         focusedBorder: OutlineInputBorder(
                                                             borderSide: BorderSide(
                                                               width: 2,
                                                               color: Colors.red,
                                                             )
                                                         )
                                                     ),
                                                   ),

                                               );
                                             },

                                           ),margin: EdgeInsets.only(top: getheight(context)*0.05),),
                                         InkWell(

                                           child: Container(
                                             width: getwidth(context),
                                             height: 50,
                                             decoration: BoxDecoration(
                                               borderRadius: BorderRadius.circular(20),
                                               color: Colors.red,
                                             ),
                                             child: Center(
                                               child: Text(
                                                 'Submit',
                                                 style: TextStyle(
                                                   color: Colors.white,
                                                   fontWeight: FontWeight.bold,
                                                   fontSize: 17.0,
                                                 ),
                                               ),
                                             ),
                                             margin: EdgeInsets.only(top: getheight(context)*0.15,left: getwidth(context)*0.05,right: getwidth(context)*0.05,bottom: 20.0),
                                           ),
                                           onTap: (){
                                             if(feedbackController.text.isEmpty){
                                               toast('Feedback Field is Missing');
                                             }
                                             else{
    ref.child(
    UserRecords().Userid
        .toString())
        .update({
    'Feedback': feedbackController
        .text.toString(),

    })
        .then((value) {
    toast('ThankYou For Your Feedback');
    feedbackController.clear();
    Navigator.pop(context);
    }).onError((error,
    stackTrace) {
    toast(error.toString());
    });
    }


     },
                                         ),
                                       ],
                                     ),
                                   ));
                             }
                         );
                       },
                       shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(20)
                       ),
                       tileColor: Colors.white10,
                       leading: Icon(Icons.chat_bubble_outline,color: Colors.white,),
                       title: Text('Give Feedback',style: TextStyle(color: Colors.white),),
                       trailing: Icon(Icons.navigate_next,color: Colors.white,),
                     ),
                     SizedBox(height: 8,),
                     ListTile(
                       shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(20)
                       ),
                       onTap: (){
                         showModalBottomSheet(

                             backgroundColor: Colors.transparent,
                             context: context,
                             builder: (BuildContext context){
                               return Container(
                                   decoration: BoxDecoration(
                                       color: Colors.black
                                       ,
                                       borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
                                   ),

                                   width: getwidth(context),
                                   height: getheight(context)*0.8,
                                   child:
                                   SingleChildScrollView(
                                     child:
                                     Column(
                                       mainAxisAlignment: MainAxisAlignment.start,
                                       crossAxisAlignment: CrossAxisAlignment.center,
                                       children: [
                                         Row(
                                           children: [
                                             Container(
                                               child: Text(
                                                 'Terms & Conditions',
                                                 style: TextStyle(
                                                   color: Colors.white,
                                                   fontSize: 20.0,
                                                   fontWeight: FontWeight.bold,
                                                 ),
                                               ),
                                               margin: EdgeInsets.only(left: getwidth(context)*0.07,top: getheight(context)*0.03),
                                               width: getwidth(context)*0.4,
                                               height: getheight(context)*0.05,
                                             ),
                                             Spacer(),
                                             IconButton(
                                               icon: Icon(
                                                 Icons.close,
                                                 size: 25.0,
                                                 color: Colors.white,

                                               ),
                                               onPressed: (){
                                                 Navigator.pop(context);
                                               },
                                             )
                                           ],
                                         ),
                                         Container(
                                           width: getwidth(context),
                                           height: 1.5,
                                           color: Colors.white,
                                         ),
                                         Container(
                                           child: Text(
                                             'The App may include features that promote physical activity. Consider the risks involved and consult with your medical professional before engaging in any physical activity. ALPHA FITNESS is not responsible or liable for any injuries or damages you may sustain that result from your use of, or inability to use, the features of the App.',
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
'To use the App, you may be asked to provide certain personal information (the “Personal Information”), including information about your weight, age and gender, to optimize your use of the App. If you choose to provide such Personal Information, you agree to provide accurate and current information about yourself, and ALPHA FITNESS will not be responsible for any injury related to any Personal Information you submit to the App or omit. The use or disclosure of any Personal Information you supply will be governed by our Privacy Policy.',
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
'Our Privacy Policy, which is incorporated into these Terms of Use by this reference, further describes the collection and use of information on this App.',
                                             style: TextStyle(
                                               color: Colors.white,
                                               fontSize: 15.0,
                                             ),
                                           ),
                                           margin: EdgeInsets.only(left: getwidth(context)*0.05,right: getwidth(context)*0.05,top: 10.0),
                                         ),
                                         SizedBox(
                                           height: 15.0,
                                         ),
                                         InkWell(

                                           child: Container(
                                             width: getwidth(context),
                                             height: 50,
                                             decoration: BoxDecoration(
                                               borderRadius: BorderRadius.circular(20),
                                               color: Colors.red,
                                             ),
                                             child: Center(
                                               child: Text(
                                                 'Close',
                                                 style: TextStyle(
                                                   color: Colors.white,
                                                   fontWeight: FontWeight.bold,
                                                   fontSize: 17.0,
                                                 ),
                                               ),
                                             ),
                                             margin: EdgeInsets.only(top: 15.0,left: getwidth(context)*0.05,right: getwidth(context)*0.05,bottom: 20.0),
                                           ),
                                           onTap: (){
                                             Navigator.pop(context);
                                           },
                                         ),
                                       ],
                                     ),
                                   ));
                             }
                         );
                       },
                       tileColor: Colors.white10,
                       leading: Icon(Icons.interpreter_mode_sharp,color: Colors.white,),
                       title: Text('Terms & Conditions',style: TextStyle(color: Colors.white),),
                       trailing: Icon(Icons.navigate_next,color: Colors.white,),
                     ),
                     SizedBox(height: 8,),
                     ListTile(
                       onTap: (){
                         Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>loginpage(usernameController: '')), (route) => false);
                       },
                       shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(20)
                       ),
                       tileColor: Colors.white10,
                       leading: Icon(Icons.exit_to_app,color: Colors.white,),
                       title: Text('Sign Out',style: TextStyle(color: Colors.white),),
                       trailing: Icon(Icons.navigate_next,color: Colors.white,),
                     ),
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
