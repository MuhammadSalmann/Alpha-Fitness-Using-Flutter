import 'set_height_and_width.dart';
import 'package:flutter/material.dart';
class articlevegg extends StatefulWidget {
  const articlevegg({Key? key}) : super(key: key);

  @override
  State<articlevegg> createState() => _articleveggState();
}

class _articleveggState extends State<articlevegg> {
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
                    image: AssetImage ("assets/images/vegg.jpg"),
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
                'Top Vegetables That Are High In Protein',
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
                  'Nutrition',
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
                '2 min read',
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
'Peas are a super versatile vegetable that is surprisingly packed with protein. It is also a good source of fiber, with 35% of the daily recommendation per cup. Add peas to your favorite pasta, stir-fry or soup tonight for a nutrition and protein boost.',
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
'Along with being the second highest protein vegetable on this list, spinach has a lot going for it. It is full of nutrients like vitamin A, vitamin K and vitamin C, which support a healthy immune system, protect vision, promote healthy blood flow and more. This ranking refers to cooked spinach, so make it pantry-friendly by trying one of our recipes that start with a bag of frozen spinach.',

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
'Brussels sprouts pair fiber and protein with several vitamins and nutrients to keep you feeling full and nourished. Not to mention, they have health benefits ranging from keeping you mentally sharp to fighting cancer and lowering blood pressure. With 4 g of protein present in every cup uncooked, enjoy them roasted with garlic and Parmesan.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                ),
              ),
              margin: EdgeInsets.only(left: getwidth(context)*0.05,right: getwidth(context)*0.05,top: 10.0,bottom: 20.0),
            ),
            SizedBox(
              height: 8.0,
            ),

            Container(
              child: Text(
'Kale gained a reputation of being a nutrient powerhouse, and its impressive nutrition profile backs up the claims. It is full of antioxidants, vitamins and nutrients that help stave off chronic diseases like diabetes and cancer. To savor this highly nutritious veggie that provides nearly 4 g of protein per one cup serving cooked, add it to soups and salads, make kale chips or try one of our delicious kale recipes',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                ),
              ),
              margin: EdgeInsets.only(left: getwidth(context)*0.05,right: getwidth(context)*0.05,top: 10.0,bottom: 20.0),
            ),
            SizedBox(
              height: 8.0,
            ),

            Container(
              child: Text(
'Potatoes have a bad rep for being a high-carb vegetable. In reality, though, they are a good source of several nutrients—one cup (160g) of cooked potato boasts 20% of your daily needs for potassium and 25% of your vitamin C needs. They are also a filling option for a starchy vegetable, offering three g of protein per serving cooked. Check out our tips for turning a baked potato into a healthy and delicious meal.',
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
