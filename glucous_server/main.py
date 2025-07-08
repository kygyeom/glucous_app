from fastapi import FastAPI
from pydantic import BaseModel
from simulate import simulate_glucose

app = FastAPI()

class SimInput(BaseModel):
    bg_start: float
    meal: float
    bolus: float
    basal: float

@app.post("/simulate")
def simulate(data: SimInput):
    result = simulate_glucose(
        data.bg_start, data.meal, data.bolus, data.basal
    )
    return {"glucose": result}
