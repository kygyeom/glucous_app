import 'package:flutter/material.dart';
import 'select_patient_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GlucoUS 시뮬레이터'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                '당신은 오늘,\n당뇨병 환자가 되어 하루를 살아갑니다.',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              const Text(
                '하루 동안 어떤 선택이 혈당을 어떻게 바꿀까요?\n식사와 인슐린을 조절하며 직접 체험해보세요.',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const SelectPatientPage()),
                  );
                },
                child: const Text('시뮬레이션 시작'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
