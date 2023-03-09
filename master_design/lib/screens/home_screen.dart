import 'package:flutter/material.dart';
import 'package:master_design/screens/lorem_row.dart';
import 'package:master_design/screens/profile.dart';

import '../app_style.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Column(
        children: [
          const Profile(),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("Lorem ipsum",style: Style.headLineStyle5.copyWith(fontWeight: FontWeight.bold,fontSize: 30),),
                  Text("Lorem ipsum",style: Style.headLineStyle5.copyWith(color:greyColor,fontWeight: FontWeight.w400),)
                ],
              ),
            ),
          ),

          LoremRow(
              boxColor: yellowColor,
            child: Container(
              height: 30,width: 50,
              decoration: BoxDecoration(
                  border: Border.all(color: whiteColor),
                  borderRadius: BorderRadius.circular(5)
              ),
              child: Center(child: Icon(Icons.circle_outlined,color: whiteColor,size: 10,),),
            ),
          ),

          LoremRow(
              boxColor: greenColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Container(
                height: 30,width: 30,
                decoration: BoxDecoration(
                    border: Border.all(color: whiteColor),
                    borderRadius: BorderRadius.circular(5)),
              ),
              const SizedBox(width: 5,),
              Container(
                height: 30,width: 30,
                decoration: BoxDecoration(
                    border: Border.all(color: whiteColor),
                    borderRadius: BorderRadius.circular(5)),
              )
            ],),
          ),

          LoremRow(
              boxColor: blueGreyColor,
            child: Text("☰",style: Style.headLineStyle5.copyWith(fontSize: 40,color: whiteColor),),
          )
        ],
      )
    );
  }
}
