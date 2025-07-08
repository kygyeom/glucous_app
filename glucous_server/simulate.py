def simulate_glucose(bg_start, meal, bolus, basal):
    result = []
    glucose = bg_start
    for t in range(30):
        delta = (meal * 0.1 - bolus * 2 - basal * 0.5) / 10
        glucose += delta
        result.append(round(glucose, 2))
    return result