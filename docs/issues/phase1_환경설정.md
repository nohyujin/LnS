# Phase 1: 프로젝트 환경 설정

## 작업 배경

Local-Andon 프로젝트를 시작하기 위한 기본 환경을 설정합니다. Python 환경과 필수 라이브러리를 설치하고, 프로젝트 디렉토리 구조를 생성하여 이후 개발 작업을 원활하게 진행할 수 있도록 합니다.

## 작업 내용

### 1. Python 환경 확인 및 설정
- Python 3.8 이상 버전 확인
- 가상 환경 생성 및 활성화

### 2. 필수 라이브러리 설치
- **pandas**: 데이터 처리 및 분석
- **streamlit**: 웹 기반 대시보드 UI
- **openpyxl**: Excel 파일 처리
- **matplotlib / plotly**: 데이터 시각화
- **reportlab / weasyprint**: PDF 생성

### 3. 프로젝트 디렉토리 구조 생성
- `/data`: 데이터 파일 저장
- `/templates`: 교육 가이드 템플릿
- `/output`: 생성된 가이드 저장
- `/src`: 소스 코드

## 인수 조건

- [ ] Python 3.8 이상이 설치되어 있음
- [ ] 가상 환경이 생성되고 활성화됨
- [ ] requirements.txt에 명시된 모든 라이브러리가 설치됨
- [ ] 프로젝트 디렉토리 구조가 생성됨 (data, templates, output, src)
- [ ] `pip list` 명령으로 설치된 패키지 확인 가능

## 예상 소요 시간
30분

## 우선순위
🔴 High - 모든 작업의 기반이 되는 환경 설정

## 라벨
`phase-1` `setup` `high-priority`
