import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
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

  Future<void> _captureAndDiagnose() async {
    setState(() {
      loading = true;
    });
    final image = await _cameraController?.takePicture();

    // Aquí deberías cargar/processar la imagen como input de tu modelo
    // Ejemplo pseudo-proceso:
    // List input = await preprocessImage(image!.path);
    // String result = await diagnosisService.predict(input);

    String result =
        '[simulate: healthy/rust/cercospora]'; // temporal para debug

    setState(() {
      diagnosisResult = result;
      loading = false;
    });
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
      appBar: AppBar(title: Text('Diagnóstico Café Santander')),
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
