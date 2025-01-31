class SalahTimeModel {
  String salahName;
  String salahTime;
  String salahTawqet;

  SalahTimeModel({
    required this.salahName,
    required this.salahTime,
    required this.salahTawqet,

  });

}
List <SalahTimeModel> salahTimes = [
  SalahTimeModel(
    salahName: "الفجر",
    salahTime: "5:30",
    salahTawqet: "صباحا",
  ),
  SalahTimeModel(
    salahName: "الظهر",
    salahTime: "12:30",
    salahTawqet: "ظهرا",
  ),
  SalahTimeModel(
    salahName: "العصر",
    salahTime: "3:30",
    salahTawqet: "عصرا",
  ),
  SalahTimeModel(
    salahName: "المغرب",
    salahTime: "6:30",
    salahTawqet: "مساء",
  ),
  SalahTimeModel(
    salahName: "العشاء",
    salahTime: "8:30",
    salahTawqet: "مساء",
  ),
];