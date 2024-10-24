import 'package:chat_app/core/themes/colors.dart';
import 'package:chat_app/features/chat/presentation/view/chat_view.dart';
import 'package:chat_app/features/status/presentation/view/status_view.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentTab = 0;
  List<Widget> pages = [
    ChatView(),
    StatusView(),
    const Scaffold(),
  ];
  List<String> titlePAge = ["Chats", "Status", "Calls"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
          elevation: 0,
          height: 100,
          color: Colors.white,
          shape: const CircularNotchedRectangle(),
          notchMargin: 5,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List<Widget>.generate(3, (index) {
              return Column(
                children: [
                  IconButton(
                      iconSize: 25,
                      onPressed: () {
                        setState(() {
                          currentTab = index;
                        });
                      },
                      icon: index == 0
                          ? Icon(
                              Icons.chat,
                              color: currentTab == index
                                  ? ColorApp.PrimaryColor.withOpacity(0.5)
                                  : ColorApp.PrimaryColor,
                            )
                          : index == 1
                              ? Icon(
                                  Icons.tips_and_updates,
                                  color: currentTab == index
                                      ? ColorApp.PrimaryColor.withOpacity(0.5)
                                      : ColorApp.PrimaryColor,
                                )
                              : Icon(
                                  Icons.call,
                                  color: currentTab == index
                                      ? ColorApp.PrimaryColor.withOpacity(0.5)
                                      : ColorApp.PrimaryColor,
                                )),
                  Text(
                    titlePAge[index],
                    style: TextStyle(
                        fontSize: 10,
                        color: currentTab == index
                            ? ColorApp.PrimaryColor
                            : Colors.grey),
                  )
                ],
              );
            }),
          )),
      body: pages[currentTab],
    );
  }
}
