# Push your site to GitHub and trigger the Pages workflow (run in this folder).
$ErrorActionPreference = "Stop"
$env:Path = [System.Environment]::GetEnvironmentVariable("Path", "Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path", "User")
Set-Location $PSScriptRoot

if (-not (git remote get-url origin 2>$null)) {
  git remote add origin https://github.com/prksh10/digital-card.git
}

Write-Host "Uploading to GitHub (sign in if asked)..." -ForegroundColor Cyan
git push -u origin main
if ($LASTEXITCODE -ne 0) {
  Write-Host ""
  Write-Host "Push failed. Try:" -ForegroundColor Yellow
  Write-Host "  gh auth login -h github.com -p https -w"
  Write-Host "  git push -u origin main"
  Write-Host "Or publish with GitHub Desktop from this folder."
  exit $LASTEXITCODE
}

Write-Host ""
Write-Host "Upload OK. Finish Pages setup (first time only):" -ForegroundColor Green
Write-Host "  1. https://github.com/prksh10/digital-card/settings/pages"
Write-Host "     Source: GitHub Actions  -> Save"
Write-Host "  2. https://github.com/prksh10/digital-card/actions"
Write-Host "     Wait for green check on 'Deploy GitHub Pages'"
Write-Host "  3. Open: https://prksh10.github.io/digital-card/"
Write-Host ""
