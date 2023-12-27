import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xyz/Screen/AgoraCall.dart';

class JoinMeetSc extends StatelessWidget {
  const JoinMeetSc({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(children: [
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: InkWell(
                  onTap: Get.back,
                  child: Icon(Icons.arrow_back_ios),
                ),
              )),
          SizedBox(
            height: 200,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Join Meeting With Code",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
                child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white24,
                      hintText: "Enter Code Here",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.4,
                height: MediaQuery.sizeOf(context).height * 0.05,
                child: ElevatedButton(
                    onPressed: () {
                      Get.to(AgoraCallSc());
                    },
                    child: Text("Join")),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
