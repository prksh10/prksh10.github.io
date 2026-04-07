# Run this once from PowerShell to put your site on GitHub (account: prksh10).
# Right-click this file -> "Run with PowerShell", or open PowerShell here and run: .\github-publish.ps1

$ErrorActionPreference = "Stop"
$env:Path = [System.Environment]::GetEnvironmentVariable("Path", "Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path", "User")
Set-Location $PSScriptRoot

Write-Host ""
Write-Host "=== Step 1: Sign in to GitHub ===" -ForegroundColor Cyan
Write-Host "A browser window will open. Log in as prksh10 and authorize GitHub CLI."
Write-Host ""
gh auth login -h github.com -p https -w

Write-Host ""
Write-Host "=== Step 2: Create repo and upload your site ===" -ForegroundColor Cyan
if (git remote get-url origin 2>$null) {
  git remote remove origin
}
gh repo create digital-card --public --description "Prakash Sharma — digital business card" --source . --remote origin --push

Write-Host ""
Write-Host "=== Done uploading ===" -ForegroundColor Green
Write-Host "Code: https://github.com/prksh10/digital-card"
Write-Host ""
Write-Host "=== Step 3: Turn on GitHub Pages (fixes 404) ===" -ForegroundColor Yellow
Write-Host "1. Open: https://github.com/prksh10/digital-card/settings/pages"
Write-Host "2. Under Build and deployment -> Source: choose GitHub Actions (not branch)."
Write-Host "3. If GitHub shows a suggested workflow, ignore it — yours is already in the repo."
Write-Host "4. Open Actions tab: https://github.com/prksh10/digital-card/actions"
Write-Host "   Approve the workflow if asked. Wait for green checkmark (~1 min)."
Write-Host "5. Then open: https://prksh10.github.io/digital-card/" -ForegroundColor Green
Write-Host ""
Write-Host "If the site was already set to Deploy from a branch, switch Source to GitHub Actions." -ForegroundColor DarkGray
Write-Host ""

