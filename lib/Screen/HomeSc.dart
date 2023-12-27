import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xyz/Screen/JoinMeetSc.dart';

import '../utlis/utils/colors.dart';
import '../widgets/Home_meeting_button.dart';
import 'NewMeetSc.dart';

class HomeSc extends StatefulWidget {
  const HomeSc({super.key});

  @override
  State<HomeSc> createState() => _HomeScState();
}

class _HomeScState extends State<HomeSc> {
  int _page = 0;

  onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        title: Text("Meet & chat"),
        centerTitle: true,
      ),

      //bootomNavigationbar
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          onTap: onPageChanged,
          currentIndex: _page,
          backgroundColor: footerColor,
          type: BottomNavigationBarType.shifting,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.comment_bank), label: 'Meet'),
            BottomNavigationBarItem(
                icon: Icon(Icons.lock_clock), label: 'Meetings'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outlined), label: 'Chat'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Settings')
          ]),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              HomeMeetingButton(
                  text: "New Meeting", icon: Icons.videocam, onPressed: () { Get.to(NewMeetSc());}),
              HomeMeetingButton(
                  text: "Join Meeting",
                  icon: Icons.add_box_rounded,
                  onPressed: () {
                    Get.to(JoinMeetSc());
                  }),
              HomeMeetingButton(
                  text: "Schedule",
                  icon: Icons.calendar_today,
                  onPressed: () {}),
              HomeMeetingButton(
                  text: "Share Screen",
                  icon: Icons.screen_share,
                  onPressed: () {}),
            ],
          ),
          Expanded(
            child: Center(
              child: Text(
                "Create/Join Meeting with Just a click!",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
