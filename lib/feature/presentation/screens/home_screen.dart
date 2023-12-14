import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/model/card_model.dart';
import 'package:flutter_application_1/feature/presentation/widgets/drawer.dart';
import 'package:flutter_application_1/resources/resources.dart';
import 'package:flutter_svg/svg.dart';


@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        endDrawer: const SafeArea(child: DrawerWidget()),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text(
            "Home",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
          ),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 38),
            child: SizedBox(
              width: 325,
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return CardsInfo(
                      placeName: CardModelItems.items[index].places.toString(),
                      img: CardModelItems.items[index].img,
                      price: CardModelItems.items[index].prices,
                      area: CardModelItems.items[index].area,
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      height: 14,
                    );
                  },
                  itemCount: CardModelItems.items.length),
            ),
          ),
        ));
  }

}

class CardsInfo extends StatefulWidget {
  final String placeName;
  final String img;
  final String price;
  final String area;
  const CardsInfo(
      {super.key,
      required this.placeName,
      required this.img,
      required this.price,
      required this.area});

  @override
  State<CardsInfo> createState() => _CardsInfoState();
}

class _CardsInfoState extends State<CardsInfo> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 168,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          gradient: LinearGradient(
            colors: [
              const Color.fromARGB(255, 25, 25, 25),
              Color(0xff50707B).withOpacity(0.25)
            ],
          )),
      child: Padding(
        padding:
            const EdgeInsets.only(right: 13, left: 13, top: 13, bottom: 10),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  widget.img,
                  width: 85,
                  height: 95,
                ),
                const SizedBox(
                  width: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.placeName,
                      style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SvgPicture.asset(Images.location),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          widget.area,
                          style: const TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SvgPicture.asset(Images.clock),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          "march 27 - 29, 2024",
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  widget.price,
                  style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      isSelected = !isSelected;
                      debugPrint("work");
                      setState(() {});
                    },
                    icon: Icon(
                      isSelected
                          ? Icons.bookmark_add
                          : Icons.bookmark_add_outlined,
                      color: Colors.white,
                      size: 30,
                    )),
                InkWell(
                  onTap: () {
                    debugPrint("work");
                  },
                  child: Container(
                    width: 46,
                    height: 43,
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Color(0xff7EA3A1), Color(0xff87E4DC)]),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.zero,
                            bottomLeft: Radius.zero,
                            topLeft: Radius.circular(12),
                            bottomRight: Radius.circular(16))),
                    child: const Icon(
                      Icons.arrow_right_alt,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
