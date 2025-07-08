import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/simulation_model.dart';

class ApiService {
  static const String baseUrl = 'http://10.0.2.2:8000'; // Android 에뮬레이터 기준

  static Future<SimulationResponse> simulate(SimulationRequest request) async {
    final response = await http.post(
      Uri.parse('$baseUrl/simulate'),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode(request.toJson()),
    );

    if (response.statusCode == 200) {
      return SimulationResponse.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('시뮬레이션 실패: ${response.body}');
    }
  }
}
