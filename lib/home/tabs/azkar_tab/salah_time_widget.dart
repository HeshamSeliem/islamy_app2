import 'package:flutter/material.dart';
import 'package:islamy_app/models/salah_time_model.dart';

class SalahTimeWidget extends StatelessWidget {
   SalahTimeWidget({required this.index ,super.key});
  int index;
  @override
  Widget build(BuildContext context) {
    return Container(
                width: 104,
                height: 120,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [ Color(0xffB19768), Color(0xff202020)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter
                    ),
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(salahTimes[index].salahName,style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20
                    ),),
                    Text(salahTimes[index].salahTime,style:const TextStyle(
                      color: Colors.white,
                      fontSize: 25
                    ),),
                    Text(salahTimes[index].salahTawqet,style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20
                    ),),

                  ],
                ),
              );
  }
}