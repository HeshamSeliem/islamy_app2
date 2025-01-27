import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamy_app/home/tabs/ahadeth_tab/hadeth_details.dart';
import 'package:islamy_app/models/hadeth_model.dart';
import 'package:islamy_app/provider/ahadeth_provider.dart';
import 'package:provider/provider.dart';

class AhadethTab extends StatelessWidget {
  AhadethTab({super.key});
  List<HadethModel> allAhadeth = [];
  @override
  Widget build(BuildContext context) {
    // loadAhadethFile();
    return ChangeNotifierProvider(
      create: (context) => AhadethProvider(),
      builder: (context, child) {
        var ahadethProvider = Provider.of<AhadethProvider>(context);
        ahadethProvider.loadAhadethFile();
        return Column(
          children: [
            Expanded(
              child: CarouselSlider(
                options: CarouselOptions(height: double.infinity),
                items: ahadethProvider.allAhadeth.map((hadeth) {
                  return Builder(
                    builder: (BuildContext context) {
                      return InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed(HadethDetails.routeName,
                            arguments: hadeth,
                          );
                        },
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Image.asset("assets/images/hadeth_pg.png",
                            width: double.infinity,
                            height: double.infinity,),
                            Padding(
                              padding: const EdgeInsets.only(left: 16,right: 16),
                              child: Column(
                                children: [
                                  const SizedBox(height: 8,),
                                  Text(
                                    hadeth.title,
                                    style: GoogleFonts.scheherazadeNew(
                                      fontSize: 24,
                                      color: Colors.black,
                                    ),
                                  ),
                                  const SizedBox(height: 8,),
                                  Text(
                                    
                                    maxLines: 12,
                                    overflow: TextOverflow.ellipsis,
                                    textDirection: TextDirection.rtl,
                                    hadeth.content.first,
                                    style: GoogleFonts.scheherazadeNew(
                                      fontSize: 20,
                                      color: const Color(0xff202020),
                                      fontWeight: FontWeight.w700,
                              height: 2,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
            ),
           const SizedBox(
              height: 20,
            ),
          ],
        );
      },
    );
  }

  // loadAhadethFile() {
  //   rootBundle.loadString("assets/files/ahadeth.txt").then((file) {
  //     List<String> ahadeth = file.split("#");
  //     for (String hadeth in ahadeth) {
  //       List<String> hadethOneDetails = hadeth.split("\n");
  //       String title = hadethOneDetails[0];
  //       hadethOneDetails.removeAt(0);
  //       List<String> content = hadethOneDetails;
  //       HadethModel hadethModel = HadethModel(title: title, content: content);
  //       allAhadeth.add(hadethModel);
  //     }
  //   }).catchError((error) {
  //     print(error);
  //   });
  // }
}
