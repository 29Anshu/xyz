import 'package:agora_uikit/agora_uikit.dart';
import 'package:flutter/material.dart';

class AgoraCallSc extends StatelessWidget {
  final AgoraClient _client = AgoraClient(
      agoraConnectionData: AgoraConnectionData(
          appId: "c35a8423623d4c36ac4e8005e47a2dda",
          channelName: "zoomsample",
          tempToken:
              "007eJxTYLDYuvDn6+/1emt3pVxL0pzyWzbyUPS8vC2X+WL3Jyuf4D+lwJBsbJpoYWJkbGZknGKSbGyWmGySamFgYJpqYp5olJKSyNYTn9oQyMjgsPY6MyMDBIL4XAxV+fm5xYm5BTmpDAwApcAjUQ=="),
      enabledPermission: [Permission.camera, Permission.microphone]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          AgoraVideoViewer(
            client: _client,
          ),
          AgoraVideoButtons(client: _client)
        ]),
      ),
    );
  }
}
