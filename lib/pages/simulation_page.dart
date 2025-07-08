import 'package:flutter/material.dart';
import '../services/api_service.dart';
import '../models/simulation_model.dart';

class SimulationPage extends StatefulWidget {
  final String patientName;
  const SimulationPage({required this.patientName});

  @override
  _SimulationPageState createState() => _SimulationPageState();
}

class _SimulationPageState extends State<SimulationPage> {
  String resultText = "아직 실행되지 않았습니다.";
  bool isLoading = false;

  void runSimulation() async {
    setState(() {
      isLoading = true;
    });

    try {
      final request = SimulationRequest(
        bgStart: 150.0,
        meal: 60.0,
        bolus: 2.0,
        basal: 0.03,
      );

      final response = await ApiService.simulate(request);

      setState(() {
        resultText = "결과: ${response.glucose.join(', ')}";
        isLoading = false;
      });
    } catch (e) {
      setState(() {
        resultText = "에러: $e";
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('시뮬레이션')),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Text('환자: ${widget.patientName}'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: isLoading ? null : runSimulation,
              child: Text(isLoading ? '실행 중...' : '시뮬레이션 실행'),
            ),
            const SizedBox(height: 30),
            Text(resultText),
          ],
        ),
      ),
    );
  }
}
