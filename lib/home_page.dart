import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:best_flutter_ui_templates/camera_page.dart';

class HomePages extends StatelessWidget {
  const HomePages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            await availableCameras().then(
              (value) => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CameraPage(cameras: value,),
                ),
              ),
            );
          },
          child: Icon(Icons.camera_alt),
        ),
      ),
    );
  }
}
