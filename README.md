# Local-Andon: 실시간 CS 결함 탐지 및 교육 대응 툴

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Python](https://img.shields.io/badge/Python-3.8+-blue.svg)](https://www.python.org/downloads/)
[![Streamlit](https://img.shields.io/badge/Streamlit-1.0+-red.svg)](https://streamlit.io/)

> 데이터 기반의 기민한 교육 솔루션 - CS 교육 이슈 자동 탐지 및 가이드 생성 시스템

## 📋 프로젝트 개요

**Local-Andon**은 쿠팡 ANDON팀의 "데이터 기반의 기민한 교육 솔루션" 철학을 구현한 MVP 프로젝트입니다. 
현장에서 문제가 발생했을 때(Andon), 데이터를 분석하여 즉시 교육 솔루션을 배포하는 시나리오를 로컬 환경에서 구현합니다.

### 핵심 가치

- 🎯 **데이터 활용 능력**: Python/Excel을 활용한 문제 정의 및 해결
- ⚡ **효율성 추구**: 자동화된 툴로 교육 기획 속도 향상
- 🔧 **ANDON 철학**: 현장 결함 발견 즉시 교육으로 연결하는 시스템적 설계

## 🚀 주요 기능

### 1. 가상 CS 데이터 시뮬레이션
- 실제 쿠팡 CS 상담과 유사한 데이터 생성
- 상담ID, 상담유형, 상담결과, 통화시간(AHT), VOC 키워드 등 포함

### 2. Andon 교육 트리거 대시보드
- **이슈 탐지**: 오안내율 임계치(5%) 초과 시 자동 경고
- **우선순위 도출**: 가장 교육이 시급한 항목 자동 식별
- **성과 예측**: 교육 실시 시 예상 상담 시간 단축 효과 계산

### 3. 즉시 배포용 교육 가이드 자동 생성
- 버튼 클릭 한 번으로 교육 가이드 자동 생성
- PDF/HTML 형식 지원
- 문제 상황, 변경된 정책, 올바른 응대 스크립트 포함

## 🛠 기술 스택

| 구분 | 기술 | 용도 |
|------|------|------|
| 데이터 소스 | Excel / CSV | 가상 CS 상담 로그 데이터 |
| 분석 및 로직 | Python (Pandas) | 데이터 처리 및 분석 |
| 대시보드/UI | Streamlit | 웹 기반 UI (로컬 실행) |
| 콘텐츠 템플릿 | Markdown / HTML | 교육 가이드라인 양식 |

## 📦 설치 방법

### 사전 요구사항
- Python 3.8 이상
- pip (Python 패키지 관리자)

### 설치 단계

```bash
# 1. 리포지토리 클론
git clone https://github.com/nohyujin/LnS.git
cd LnS

# 2. 가상 환경 생성 (권장)
python -m venv venv
source venv/bin/activate  # Windows: venv\Scripts\activate

# 3. 필수 라이브러리 설치
pip install -r requirements.txt
```

### requirements.txt
```
pandas>=1.3.0
streamlit>=1.0.0
openpyxl>=3.0.0
matplotlib>=3.4.0
plotly>=5.0.0
reportlab>=3.6.0
```

## 🎮 사용 방법

### 1. 샘플 데이터 준비
```bash
# data 폴더에 샘플 데이터 생성 (추후 구현)
python scripts/generate_sample_data.py
```

### 2. 대시보드 실행
```bash
streamlit run src/app.py
```

### 3. 브라우저에서 확인
- 자동으로 브라우저가 열립니다 (기본: http://localhost:8501)
- 데이터 파일 업로드
- 대시보드에서 이슈 확인
- 교육 가이드 생성 버튼 클릭

## 📁 프로젝트 구조

```
LnS/
├── docs/                    # 문서
│   ├── Ideation.md         # 프로젝트 아이디어
│   ├── PRD.md              # 제품 요구사항 문서
│   └── task.md             # 작업 체크리스트
├── data/                    # 데이터 파일
│   └── cs_data.xlsx        # 샘플 CS 데이터
├── src/                     # 소스 코드
│   ├── app.py              # Streamlit 메인 앱
│   ├── data_loader.py      # 데이터 로딩 모듈
│   ├── analyzer.py         # 분석 로직
│   └── guide_generator.py  # 가이드 생성 모듈
├── templates/               # 교육 가이드 템플릿
│   └── template_guide.md   # 기본 템플릿
├── output/                  # 생성된 가이드 저장
├── requirements.txt         # Python 의존성
└── README.md               # 프로젝트 설명
```

## 📊 구현 로드맵

- [x] 프로젝트 기획 및 PRD 작성
- [x] 작업 체크리스트 작성
- [ ] Phase 1: 환경 설정
- [ ] Phase 2: 데이터 준비 (1시간)
- [ ] Phase 3: 분석 코드 작성 (2시간)
- [ ] Phase 4: UI 구성 (2시간)
- [ ] Phase 5: 가이드 생성 기능 (1시간)
- [ ] Phase 6: 테스트 및 검증 (1시간)
- [ ] Phase 7: 문서화 및 포트폴리오 준비 (1시간)

**예상 총 소요 시간**: 7시간

자세한 작업 내용은 [task.md](docs/task.md)를 참고하세요.

## 📖 문서

- [Ideation](docs/Ideation.md) - 프로젝트 아이디어 및 배경
- [PRD](docs/PRD.md) - 제품 요구사항 문서
- [Task](docs/task.md) - 상세 작업 체크리스트

## 🎯 프로젝트 목표

이 프로젝트를 통해 다음을 입증합니다:

1. **데이터 분석 역량**: Python과 Pandas를 활용한 실전 데이터 분석
2. **자동화 능력**: 반복 작업을 시스템화하여 효율성 극대화
3. **교육 솔루션 설계**: 문제 발견부터 교육까지 전체 프로세스 설계

## 🤝 기여 방법

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📝 라이선스

이 프로젝트는 MIT 라이선스 하에 배포됩니다. 자세한 내용은 `LICENSE` 파일을 참고하세요.

## 👤 작성자

**nohyujin**

- GitHub: [@nohyujin](https://github.com/nohyujin)
- 프로젝트 링크: [https://github.com/nohyujin/LnS](https://github.com/nohyujin/LnS)

## 🙏 감사의 말

이 프로젝트는 쿠팡 ANDON팀의 "데이터 기반의 기민한 교육 솔루션" 철학에서 영감을 받았습니다.

---

⭐ 이 프로젝트가 도움이 되었다면 Star를 눌러주세요!
