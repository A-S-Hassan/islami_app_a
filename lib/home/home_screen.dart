import 'package:flutter/material.dart';
import 'package:islami_app_a/app_colors.dart';
import 'package:islami_app_a/home/hadeth/ahadeth_tab.dart';
import 'package:islami_app_a/home/quran/quran_tab.dart';
import 'package:islami_app_a/home/radio/radio_tab.dart';
import 'package:islami_app_a/home/sebha/sebha_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "HomeScreen";

  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/images/main_bg.png",
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text("Islami", style: Theme.of(context).textTheme.bodyLarge),
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context)
                .copyWith(canvasColor: Theme.of(context).primaryColor),
            child: BottomNavigationBar(
              currentIndex: selectedIndex,
              onTap: (index) {
                selectedIndex = index;
                setState(() {});
              },
              items: [
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/images/quran.png"),
                  ),
                  label: "Quran",
                  // backgroundColor: Color(0xffB7935F),
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/images/ahadeth.png"),
                  ),
                  label: "Ahadeth",
                  //backgroundColor: Color(0xffB7935F),
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/images/sebha.png"),
                  ),
                  label: "Sebha",
                  //backgroundColor: Color(0xffB7935F),
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/images/radio.png"),
                  ),
                  label: "Radio",
                  //backgroundColor: Color(0xffB7935F),
                ),
              ],
            ),
          ),
          body: tabs[selectedIndex],
        ),
      ],
    );
  }
}
List<Widget>tabs=[
  QuranTab(),AhadethTab(),SebhaTab(),RadioTab()
];
