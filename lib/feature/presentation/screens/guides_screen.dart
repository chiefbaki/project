import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/presentation/widgets/drawer.dart';
import 'package:flutter_application_1/feature/presentation/widgets/readmore_btn.dart';
import 'package:flutter_application_1/resources/resources.dart';

@RoutePage()
class GuidesScreen extends StatelessWidget {
  const GuidesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const SafeArea(child: DrawerWidget(),),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Guides"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 42, horizontal: 30),
          child: Column(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        Images.image5,
                        width: 198,
                        height: 112,
                      ),
                      const SizedBox(
                        width: 50,
                      ),
                      const Text(
                        "Kel-Suu",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 11,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        """Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.""",
                        style: TextStyle(color: Colors.white),
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      ReadMoreBtn(onPressed: () {})
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "Kel-Suu",
                        style: TextStyle(color: Colors.white),
                      ),
                      Image.asset(
                        Images.image6,
                        width: 211,
                        height: 112,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 11,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        """Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.""",
                        style: TextStyle(color: Colors.white),
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      ReadMoreBtn(onPressed: () {})
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        Images.image7,
                        width: 250,
                        height: 130,
                      ),
                      
                      const Text(
                        "Kel-Suu",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 11,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        """Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.""",
                        style: TextStyle(color: Colors.white),
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      ReadMoreBtn(onPressed: () {})
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
