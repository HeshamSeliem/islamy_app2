import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamy_app/home/tabs/azkar_tab/azkar_widget.dart';
import 'package:islamy_app/home/tabs/azkar_tab/salah_time_widget.dart';
import 'package:islamy_app/models/salah_time_model.dart';

class AzkarTab extends StatelessWidget {
  const AzkarTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 390,
              height: 250,
              decoration: BoxDecoration(
                  color: const Color(0xffE2BE7F),
                  borderRadius: BorderRadius.circular(30)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Pray Time\n Tuesday",
                    style: GoogleFonts.scheherazadeNew(
                      fontSize: 30,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: SizedBox(
                      height: 130,
                      child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return SalahTimeWidget(
                              index: index,
                            );
                          },
                          separatorBuilder: (context, index) {
                            return const SizedBox(
                              width: 20,
                            );
                          },
                          itemCount: salahTimes.length),
                    ),
                  ),
                  Text(
                    "Next Pray - 02:32",
                    style: GoogleFonts.scheherazadeNew(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Azkar",
              style: GoogleFonts.inter(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AzkarWidget(
                    azkarImage: "assets/images/evening_azkar.png",
                    azkarTitle: "Evening Azkar"),
                AzkarWidget(
                    azkarImage: "assets/images/morning_azkar.png",
                    azkarTitle: "Morning Azkar")
              ],
            ),
          ],
        ),
      ),
    );
  }
}
