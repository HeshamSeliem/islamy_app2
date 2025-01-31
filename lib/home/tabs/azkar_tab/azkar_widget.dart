import 'package:flutter/material.dart';

class AzkarWidget extends StatelessWidget {
   AzkarWidget({required this.azkarImage,required this.azkarTitle, super.key});
  String azkarImage;
  String azkarTitle;
  @override
  Widget build(BuildContext context) {
    return  Container(
                  width: 150,
                  height: 220,
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xffE2BE7F), width: 2),
                  ),
                  child: Column(
                    children: [
                      Image.asset(azkarImage,height: 185,),
                      Text(azkarTitle,style:const  TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700
                      ),)
                    ],
                  ),
                );
  }
}