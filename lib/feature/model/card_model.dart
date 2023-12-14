import 'package:flutter_application_1/resources/resources.dart';

class CardModel {
  String places;
  String area;
  String img;
  String prices;

  CardModel(
      {required this.places,
      required this.area,
      required this.img,
      required this.prices});
}

class CardModelItems{
  static List<CardModel> items = [
    CardModel(places: "Peak Karakol", area: "Karakol", img: Images.image1, prices: "\$550"),
    CardModel(places: "Kel Suu", area: "Issyk-Kol", img: Images.image2, prices: "\$560"),
    CardModel(places: "Maison", area: "Ak-Sai Valley, Naryn", img: Images.image3, prices: "\$1,450"),
    CardModel(places: "Olimp", area: "Bosteri, Issyk-Kol", img: Images.image4, prices: "\$1,590"),
    CardModel(places: "Son Kol", area: "Cholpon - Ata, Issyk-Kol", img: Images.image4, prices: "\$2,530"),
  ];
}
