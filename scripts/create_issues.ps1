# GitHub 이슈 생성 스크립트
# 각 Phase별 이슈 템플릿을 읽어서 GitHub 이슈로 생성합니다.

$issueFiles = @(
    @{
        file = "docs/issues/phase1_환경설정.md"
        title = "[Phase 1] 프로젝트 환경 설정"
        labels = "phase-1,setup,high-priority"
    },
    @{
        file = "docs/issues/phase2_데이터준비.md"
        title = "[Phase 2] 데이터 준비"
        labels = "phase-2,data,high-priority"
    },
    @{
        file = "docs/issues/phase3_분석코드.md"
        title = "[Phase 3] 분석 코드 작성"
        labels = "phase-3,backend,analysis,high-priority"
    },
    @{
        file = "docs/issues/phase4_UI구성.md"
        title = "[Phase 4] UI 구성"
        labels = "phase-4,frontend,ui,streamlit,high-priority"
    },
    @{
        file = "docs/issues/phase5_가이드생성.md"
        title = "[Phase 5] 교육 가이드 생성 기능"
        labels = "phase-5,feature,guide-generation,high-priority"
    },
    @{
        file = "docs/issues/phase6_테스트검증.md"
        title = "[Phase 6] 테스트 및 검증"
        labels = "phase-6,testing,qa,medium-priority"
    },
    @{
        file = "docs/issues/phase7_문서화.md"
        title = "[Phase 7] 문서화 및 포트폴리오 준비"
        labels = "phase-7,documentation,portfolio,medium-priority"
    },
    @{
        file = "docs/issues/phase8_추가개선.md"
        title = "[Phase 8] 추가 개선 사항 (선택)"
        labels = "phase-8,enhancement,optional,low-priority"
    }
)

Write-Host "GitHub 이슈 생성을 시작합니다..." -ForegroundColor Green
Write-Host ""

foreach ($issue in $issueFiles) {
    Write-Host "생성 중: $($issue.title)" -ForegroundColor Cyan
    
    # 파일 내용 읽기
    $body = Get-Content -Path $issue.file -Raw -Encoding UTF8
    
    # GitHub 이슈 생성
    gh issue create --title $issue.title --body $body --label $issue.labels
    
    if ($LASTEXITCODE -eq 0) {
        Write-Host "✓ 성공: $($issue.title)" -ForegroundColor Green
    } else {
        Write-Host "✗ 실패: $($issue.title)" -ForegroundColor Red
    }
    
    Write-Host ""
    Start-Sleep -Seconds 1
}

Write-Host "모든 이슈 생성이 완료되었습니다!" -ForegroundColor Green
Write-Host ""
Write-Host "생성된 이슈 확인: https://github.com/nohyujin/LnS/issues" -ForegroundColor Yellow
