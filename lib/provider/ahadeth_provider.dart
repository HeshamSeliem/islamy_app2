import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy_app/models/hadeth_model.dart';

class AhadethProvider extends ChangeNotifier{
  List<String> ahadeth = [];
  List<HadethModel> allAhadeth = [];
  loadAhadethFile() {
    rootBundle.loadString("assets/files/ahadeth.txt").then((file) {
      List<String> ahadeth = file.split("#");
      for (String hadeth in ahadeth) {
        List<String> hadethOneDetails = hadeth.trim().split("\n");
        String title = hadethOneDetails[0];
        hadethOneDetails.removeAt(0);
        List<String> content = hadethOneDetails;
        HadethModel hadethModel = HadethModel(title: title, content: content);
        allAhadeth.add(hadethModel);
      }
      notifyListeners();
    }).catchError((error) {
      print(error);
    });
  }
}