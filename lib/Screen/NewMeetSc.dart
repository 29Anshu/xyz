import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewMeetSc extends StatelessWidget {
  const NewMeetSc({super.key});

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
                "Your New Meeting is Ready",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white30),
                  child: ListTile(
                    leading: Icon(Icons.link),
                    title: SelectableText(
                      "hdajfhuukdahk",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    trailing: Icon(
                      Icons.copy,
                      size: 22,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.9,
                height: MediaQuery.sizeOf(context).height * 0.05,
                child: ElevatedButton.icon(
                  icon: Icon(Icons.add),
                  onPressed: () {},
                  label: Text(
                    "Share Invite",
                    style: TextStyle(fontSize: 16),
                  ),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.9,
                height: MediaQuery.sizeOf(context).height * 0.05,
                child: ElevatedButton.icon(
                    icon: Icon(
                      Icons.video_call_outlined,
                    ),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                    onPressed: () {},
                    label: Text(
                      "Start Call",
                      style: TextStyle(fontSize: 16),
                    )),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
