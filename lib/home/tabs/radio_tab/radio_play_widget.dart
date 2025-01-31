import 'package:flutter/material.dart';

class RadioPlayWidget extends StatelessWidget {
  const RadioPlayWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                        width: 150,
                        height: 140,
                        decoration: BoxDecoration(
                            color: const Color(0xffE2BE7F),
                            borderRadius: BorderRadius.circular(20)),
                        child: Stack(
                          children: [
                            Positioned(
                                bottom: 0,
                                top: 55,
                                right: 5,
                                left: 5,
                                child:
                                    Image.asset("assets/images/radio_bg.png")),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Radio Ibrahim Al-Akdar",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 20,
                                          fontWeight: FontWeight.w700
                                          ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 20),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    IconButton(
                                        onPressed: () {},
                                        icon:const Icon(
                                          Icons.play_arrow,
                                          size: 50,
                                          color: Colors.black,
                                        )),
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.volume_up,
                                          size: 50,
                                          color: Colors.black,
                                        ))
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      );
  }
}