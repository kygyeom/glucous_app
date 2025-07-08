class SimulationRequest {
  final double bgStart;
  final double meal;
  final double bolus;
  final double basal;

  SimulationRequest({
    required this.bgStart,
    required this.meal,
    required this.bolus,
    required this.basal,
  });

  Map<String, dynamic> toJson() => {
    "bg_start": bgStart,
    "meal": meal,
    "bolus": bolus,
    "basal": basal,
  };
}

class SimulationResponse {
  final List<double> glucose;

  SimulationResponse({required this.glucose});

  factory SimulationResponse.fromJson(Map<String, dynamic> json) {
    return SimulationResponse(
      glucose: List<double>.from(json['glucose']),
    );
  }
}
