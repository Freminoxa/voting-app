import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:voting_app/pages/home_page.dart';

class CameraScreen extends StatefulWidget {
  @override
  _CameraScreenState createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  late CameraController _controller;
  late List<CameraDescription> cameras; // Define cameras variable

  @override
  void initState() {
    super.initState();
    _initCameraController();
  }

  Future<void> _initCameraController() async {
    try {
      WidgetsFlutterBinding.ensureInitialized();
      cameras = await availableCameras(); // Retrieve available cameras

      // Find the front camera
      final CameraDescription? frontCamera = cameras.firstWhere(
        (camera) => camera.lensDirection == CameraLensDirection.front,
        orElse: () => cameras.first,
      );

      _controller = CameraController(frontCamera!, ResolutionPreset.ultraHigh);

      await _controller.initialize();
      if (mounted) {
        setState(() {});
      }
    } catch (e) {
      print('Error initializing camera: $e');
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!_controller.value.isInitialized) {
      return Container();
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('Camera Verification'),
      ),
      body: CameraPreview(_controller),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigate to the home page when the floating action button is pressed
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => HomePage(),
            ),
          );
        },
        child: Icon(Icons.camera),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
