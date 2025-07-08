import 'package:flutter/material.dart';
import 'package:glucous_app/pages/simulation_page.dart';

class SelectPatientPage extends StatelessWidget {
  const SelectPatientPage({super.key});

  final List<String> patientList = const [
    'adolescent#001',
    'adolescent#004',
    'adult#003',
    'adult#006',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('환자 선택'),
      ),
      body: ListView.builder(
        itemCount: patientList.length,
        itemBuilder: (context, index) {
          final patient = patientList[index];
          return ListTile(
            title: Text(patient),
            leading: const Icon(Icons.person),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      SimulationPage(patientName: patientList[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}