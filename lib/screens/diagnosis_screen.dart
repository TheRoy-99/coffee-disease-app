import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'dart:io';
import 'package:image/image.dart' as img;
import '../services/diagnosis_service.dart';

class DiagnosisScreen extends StatefulWidget {
  @override
  State<DiagnosisScreen> createState() => _DiagnosisScreenState();
}

class _DiagnosisScreenState extends State<DiagnosisScreen> {
  CameraController? _cameraController;
  String diagnosisResult = '';
  bool loading = false;
  DiagnosisService diagnosisService = DiagnosisService();

  @override
  void initState() {
    super.initState();
    _initCamera();
    diagnosisService.loadModel();
  }

  Future<void> _initCamera() async {
    final cameras = await availableCameras();
    _cameraController = CameraController(
      cameras.first,
      ResolutionPreset.medium,
    );
    await _cameraController?.initialize();
    setState(() {});
  }

  Future<List> preprocessImage(String imagePath) async {
    final bytes = await File(imagePath).readAsBytes();
    img.Image? image = img.decodeImage(bytes);
    img.Image resized = img.copyResize(image!, width: 224, height: 224);

    List input = List.generate(
      1,
      (_) => List.generate(
        224,
        (y) => List.generate(
          224,
          (x) => List.generate(3, (c) {
            final pixelObj = resized.getPixelSafe(
              x,
              y,
            ); // Pixel class (image >= 4.x)
            double value;
            switch (c) {
              case 0:
                value = pixelObj.r.toDouble();
                break; // Red
              case 1:
                value = pixelObj.g.toDouble();
                break; // Green
              case 2:
                value = pixelObj.b.toDouble();
                break; // Blue
              default:
                value = 0.0;
            }
            return value / 255.0;
          }),
        ),
      ),
    );
    return input;
  }

  Future<void> _captureAndDiagnose() async {
    setState(() {
      loading = true;
    });
    final image = await _cameraController?.takePicture();

    if (image == null) {
      setState(() {
        diagnosisResult = 'Error capturando imagen';
        loading = false;
      });
      return;
    }

    try {
      List input = await preprocessImage(image.path);
      String result = await diagnosisService.predict(input);

      setState(() {
        diagnosisResult = result;
        loading = false;
      });
    } catch (e) {
      setState(() {
        diagnosisResult = 'Error en inferencia: $e';
        loading = false;
      });
    }
  }

  @override
  void dispose() {
    _cameraController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_cameraController == null || !_cameraController!.value.isInitialized) {
      return Scaffold(body: Center(child: CircularProgressIndicator()));
    }
    return Scaffold(
      appBar: AppBar(title: Text('Diagnóstico Café RMR')),
      body: Column(
        children: [
          Expanded(child: CameraPreview(_cameraController!)),
          ElevatedButton(
            onPressed: loading ? null : _captureAndDiagnose,
            child: Text('Capturar y Diagnosticar'),
          ),
          if (loading) CircularProgressIndicator(),
          if (diagnosisResult.isNotEmpty)
            Text(
              'Resultado: $diagnosisResult',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
        ],
      ),
    );
  }
}
