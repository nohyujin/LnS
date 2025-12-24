# GitHub Pages 배포 가이드

이 문서는 Marp 프레젠테이션을 GitHub Pages로 배포하는 방법을 설명합니다.

## 자동 배포 (GitHub Actions)

### 설정 완료 사항
✅ GitHub Actions 워크플로우 파일 생성 (`.github/workflows/deploy-marp.yml`)
✅ `docs/Presentation.md` 또는 `docs/PRD_presentation.md` 파일 존재

### GitHub Pages 활성화 방법

1. **GitHub 리포지토리 설정**
   - https://github.com/nohyujin/LnS/settings/pages 접속
   - **Source** 섹션에서 "GitHub Actions" 선택
   - 저장

2. **자동 배포 트리거**
   - `docs/Presentation.md` 또는 `docs/PRD_presentation.md` 파일 수정 후 커밋
   - `main` 브랜치에 푸시
   - GitHub Actions가 자동으로 실행됨

3. **배포 확인**
   - Actions 탭에서 워크플로우 실행 상태 확인
   - 완료 후 https://nohyujin.github.io/LnS/ 접속

## 워크플로우 동작 방식

### Build 단계
1. 리포지토리 체크아웃
2. Node.js 설정
3. Marp CLI 설치
4. Markdown 파일을 HTML로 변환
   - `docs/Presentation.md` → `_site/presentation.html`
   - `docs/PRD_presentation.md` → `_site/index.html`
5. 아티팩트 업로드

### Deploy 단계
1. GitHub Pages에 배포
2. 배포 URL 생성

## 수동 배포 (로컬)

npm이 설치되어 있다면 로컬에서도 변환 가능합니다:

```bash
# Marp CLI 설치
npm install -g @marp-team/marp-cli

# HTML로 변환
marp docs/Presentation.md -o presentation.html --html
marp docs/PRD_presentation.md -o index.html --html
```

## 프레젠테이션 파일

- **메인 프레젠테이션**: `docs/PRD_presentation.md` → https://nohyujin.github.io/LnS/
- **추가 프레젠테이션**: `docs/Presentation.md` → https://nohyujin.github.io/LnS/presentation.html

## 트러블슈팅

### GitHub Pages가 활성화되지 않는 경우
1. 리포지토리 설정에서 Pages 섹션 확인
2. Source를 "GitHub Actions"로 변경
3. 워크플로우 재실행

### 배포가 실패하는 경우
1. Actions 탭에서 에러 로그 확인
2. Markdown 파일의 Marp 문법 확인
3. 워크플로우 파일 권한 확인

### 페이지가 표시되지 않는 경우
1. 배포 완료까지 1-2분 대기
2. 브라우저 캐시 삭제 후 재시도
3. https://nohyujin.github.io/LnS/ URL 확인

## 프레젠테이션 업데이트

1. `docs/Presentation.md` 또는 `docs/PRD_presentation.md` 파일 수정
2. Git 커밋 및 푸시
3. GitHub Actions가 자동으로 재배포

```bash
git add docs/Presentation.md
git commit -m "Update presentation"
git push origin main
```

## 참고 자료

- [Marp 공식 문서](https://marp.app/)
- [Marp CLI GitHub](https://github.com/marp-team/marp-cli)
- [GitHub Pages 문서](https://docs.github.com/en/pages)
