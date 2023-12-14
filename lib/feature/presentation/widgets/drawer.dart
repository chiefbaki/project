import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/presentation/routes/app_router.gr.dart';
import 'package:flutter_application_1/feature/presentation/screens/guides_screen.dart';
import 'package:flutter_application_1/feature/presentation/widgets/list_btn.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: double.infinity,
      backgroundColor: Colors.black,
      child: Column(
        children: [
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.close,
                    color: Colors.white,
                  ))
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                ListBtn(onPressed: () {
                  context.router.push(const HomeRoute());
                }, text: "Home"),
                const Divider(
                  color: Colors.white,
                ),
                ListBtn(onPressed: () {}, text: "Favourite"),
                const Divider(
                  color: Colors.white,
                ),
                ListBtn(onPressed: () {}, text: "Settings"),
                const Divider(
                  color: Colors.white,
                ),
                ListBtn(onPressed: () {}, text: "Hotels"),
                const Divider(
                  color: Colors.white,
                ),
                ListBtn(
                    onPressed: () {
                      context.router.push(const GuidesRoute());
                    },
                    text: "Guides"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
