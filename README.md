# GlucoUS

Flutter 기반 혈당 시뮬레이터 앱  
+ FastAPI 기반 시뮬레이션 서버 연동

## 구조

- `lib/`: Flutter UI/로직
- `sim_server/`: Python FastAPI 서버
- `assets/`: 이미지, JSON 등 리소스

## 실행

### Flutter 앱

```bash
flutter run -d emulator-5554
```

```bash
cd sim_server
uvicorn main:app --reload --port 8000
``` 
