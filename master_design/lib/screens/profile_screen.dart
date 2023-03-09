import 'package:flutter/material.dart';
import '../app_style.dart';
import 'detail.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],

      body: Column(
        children: [
        SizedBox(
        height: 250,
        child: Stack(
          children: [
            Container(
              height: 200,
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 30),
              decoration: BoxDecoration(
                  color: indigoColor,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.arrow_back_ios_rounded,color: whiteColor,size: 30,),
                      Icon(Icons.search_outlined,color: whiteColor,size: 30,),
                    ],
                  ),
                  const Spacer(),
                  Text("you're family now",style: Style.headLineStyle2.copyWith(color: whiteColor,fontWeight: FontWeight.w300),),
                const SizedBox(height: 5,),
                  Text("Mitchel B",style: Style.headLineStyle5.copyWith(fontSize: 30,color: whiteColor),)
                ],
              ),
            ),

            Positioned(
                left: -20,bottom: 0,
                child: Container(
                  height: 120,width: 120,
                  decoration: BoxDecoration(
                      color: whiteColor,
                      shape: BoxShape.circle
                  ),
                  child: Center(
                    child: Container(
                      height: 80,width: 80,
                      decoration:const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage("https://images.unsplash.com/flagged/photo-1593005510329-8a4035a7238f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8c29saWQlMjBjb2xvcnxlbnwwfHwwfHw%3D&w=1000&q=80"))
                      ),
                    ),
                  ),
                )
            )
          ],
        ),
      ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  const SizedBox(height: 60,),
                  Detail(
                    boxColor: orangeColor,
                    testName: 'Covid Test',
                    testColor: whiteColor,
                    day: 'Today',
                    dayColor: whiteColor,
                    nameColor: whiteColor,),

                 const SizedBox(height: 20,),
                  Detail(
                    boxColor: whiteColor,
                    testName: 'fever',
                    testColor: blackColor,
                    day: 'over due',
                    dayColor: Colors.red,
                    nameColor: blackColor,),
                ],
              ),

              Column(
                children: [
                  Detail(
                    boxColor: whiteColor,
                    testName: 'Isolation',
                    testColor: blackColor,
                    day: 'Important',
                    dayColor: yellowColor,
                    nameColor: blackColor,),

                  Detail(
                    boxColor: blueGreyColor,
                    testName: 'Get a jab!',
                    testColor: whiteColor,
                    day: 'Tomorrow',
                    dayColor: whiteColor,
                    nameColor: whiteColor,)
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
