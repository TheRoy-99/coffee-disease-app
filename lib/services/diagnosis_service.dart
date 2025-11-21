import 'package:tflite_flutter/tflite_flutter.dart';
import 'package:flutter/services.dart';

class DiagnosisService {
  late Interpreter _interpreter;
  late List<String> _labels;

  Future<void> loadModel() async {
    _interpreter = await Interpreter.fromAsset('model.tflite');
    final data = await rootBundle.loadString('assets/labels.txt');
    _labels = data
        .split('\n')
        .map((l) => l.trim())
        .where((l) => l.isNotEmpty)
        .toList();
  }

  List<String> get labels => _labels;

  // Suponiendo input ya preprocesado (ver notas)
  Future<String> predict(List input) async {
    var output = List.filled(_labels.length, 0).reshape([1, _labels.length]);
    _interpreter.run(input, output);
    int maxIndex = output[0].indexWhere(
      (v) => v == output[0].reduce((a, b) => a > b ? a : b),
    );
    return _labels[maxIndex];
  }
}
