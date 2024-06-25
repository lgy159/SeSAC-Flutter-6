import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final double height;
  final double weight;

  const ResultScreen({
    super.key,
    required this.height,
    required this.weight,
  });

  String _calcBmi(double bmi) {
    if (bmi >= 35) return '고도 비만';
    if (bmi >= 30) return '2단계 비만';
    if (bmi >= 25) return '1단계 비만';
    if (bmi >= 23) return '과체중';
    if (bmi >= 18.5) return '정상';
    return '저체중';
  }

  Widget _buildIcon(double bmi) {
    var iconData = Icons.sentiment_dissatisfied;
    if (bmi >= 23) {
      iconData = Icons.sentiment_very_dissatisfied;
    } else if (bmi >= 18.5) {
      iconData = Icons.sentiment_satisfied;
    }
    return Icon(
      iconData,
      color: Colors.green,
      size: 100,
    );
  }

  @override
  Widget build(BuildContext context) {
    final double bmi = weight / ((height / 100) * (height / 100));

    return Scaffold(
      appBar: AppBar(
        title: const Text('결과'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              _calcBmi(bmi),
              style: const TextStyle(fontSize: 36),
            ),
            _buildIcon(bmi),
          ],
        ),
      ),
    );
  }
}
