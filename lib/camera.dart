import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class cameraScreen extends StatefulWidget {
  @override
  cameraScreenState createState() => cameraScreenState();
}

class cameraScreenState extends State<cameraScreen> {
  CameraController cameraController;
  List cameras;
  int selectedCameraIndex;

  @override
  void initState() {
    super.initState();
    availableCameras().then((value) {
      cameras = value;
      if (cameras.length > 0) {
        selectedCameraIndex = 0;
        initCamera(cameras[selectedCameraIndex]).then((_) {});
      }else{
        print('tidak ada kamera');
      }
    }).catchError((e) {
      print(e.code);
    });
  }

  @override
  void dispose(){
    super.dispose();
  }

  Future initCamera(CameraDescription cameraDescription) async{
    if (cameraController != null){
      await cameraController.dispose();
    }

    cameraController = CameraController(cameraDescription, ResolutionPreset.high);
    cameraController.addListener(() {if(mounted){
      setState(() {});
    }
    });

    if(cameraController.value.hasError){
      print('Kamera Error');
    }

    try {
      await cameraController.initialize();
    } catch (e){
      print('Kamera Error $e');
    }

    if (mounted){
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: cameraPreview(),
            )
          ]
        ),
      ),
    );
  }

  Widget cameraPreview(){
    if (cameraController == null || !cameraController.value.isInitialized){
      return Text(
        'Loading',
        style: TextStyle(color: Colors.white),
      );
    }

    return AspectRatio(
      aspectRatio: cameraController.value.aspectRatio,
      child: CameraPreview(cameraController),
    );
  }
}
