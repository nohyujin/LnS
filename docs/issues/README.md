# GitHub 이슈 생성 가이드

이 문서는 Local-Andon 프로젝트의 GitHub 이슈를 생성하는 방법을 설명합니다.

## 방법 1: 자동 스크립트 사용 (권장)

### PowerShell 스크립트 실행

```powershell
# 스크립트 실행
.\scripts\create_issues.ps1
```

이 스크립트는 `docs/issues/` 디렉토리의 모든 Phase 템플릿을 읽어서 자동으로 GitHub 이슈를 생성합니다.

## 방법 2: 수동으로 이슈 생성

각 Phase별로 수동으로 이슈를 생성하려면 다음 명령을 사용하세요:

### Phase 1: 프로젝트 환경 설정
```bash
gh issue create --title "[Phase 1] 프로젝트 환경 설정" --body-file docs/issues/phase1_환경설정.md --label "phase-1,setup,high-priority"
```

### Phase 2: 데이터 준비
```bash
gh issue create --title "[Phase 2] 데이터 준비" --body-file docs/issues/phase2_데이터준비.md --label "phase-2,data,high-priority"
```

### Phase 3: 분석 코드 작성
```bash
gh issue create --title "[Phase 3] 분석 코드 작성" --body-file docs/issues/phase3_분석코드.md --label "phase-3,backend,analysis,high-priority"
```

### Phase 4: UI 구성
```bash
gh issue create --title "[Phase 4] UI 구성" --body-file docs/issues/phase4_UI구성.md --label "phase-4,frontend,ui,streamlit,high-priority"
```

### Phase 5: 교육 가이드 생성 기능
```bash
gh issue create --title "[Phase 5] 교육 가이드 생성 기능" --body-file docs/issues/phase5_가이드생성.md --label "phase-5,feature,guide-generation,high-priority"
```

### Phase 6: 테스트 및 검증
```bash
gh issue create --title "[Phase 6] 테스트 및 검증" --body-file docs/issues/phase6_테스트검증.md --label "phase-6,testing,qa,medium-priority"
```

### Phase 7: 문서화 및 포트폴리오 준비
```bash
gh issue create --title "[Phase 7] 문서화 및 포트폴리오 준비" --body-file docs/issues/phase7_문서화.md --label "phase-7,documentation,portfolio,medium-priority"
```

### Phase 8: 추가 개선 사항 (선택)
```bash
gh issue create --title "[Phase 8] 추가 개선 사항 (선택)" --body-file docs/issues/phase8_추가개선.md --label "phase-8,enhancement,optional,low-priority"
```

## 방법 3: GitHub 웹에서 수동 생성

1. https://github.com/nohyujin/LnS/issues/new 접속
2. 각 Phase 템플릿 파일(`docs/issues/phase*.md`)의 내용을 복사
3. 제목과 본문을 붙여넣기
4. 라벨 추가
5. "Submit new issue" 클릭

## 생성된 이슈 확인

https://github.com/nohyujin/LnS/issues

## 이슈 템플릿 위치

모든 이슈 템플릿은 `docs/issues/` 디렉토리에 저장되어 있습니다:

- `phase1_환경설정.md`
- `phase2_데이터준비.md`
- `phase3_분석코드.md`
- `phase4_UI구성.md`
- `phase5_가이드생성.md`
- `phase6_테스트검증.md`
- `phase7_문서화.md`
- `phase8_추가개선.md`
