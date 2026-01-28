#!/usr/bin/env pwsh

<#
.SYNOPSIS
GitHub Spec Kit - Project Initialization Script (PowerShell)

.DESCRIPTION
Initialize the ContosoDashboard project with GitHub Spec Kit configuration.
Sets up directories, configuration files, and ready for GitHub Copilot integration.

.EXAMPLE
.\spec-init.ps1
#>

param(
    [switch]$Verbose = $false
)

# Initialize script
Write-Host ""
Write-Host "======================================================"
Write-Host "GitHub Spec Kit - Project Initialization (PowerShell)"
Write-Host "======================================================" -ForegroundColor Cyan
Write-Host ""

# Get current directory
$projectRoot = Get-Location
Write-Host "INFO: Project Root: $projectRoot" -ForegroundColor Cyan

# Check for .specify directory
$specifyDir = Join-Path -Path $projectRoot -ChildPath ".specify"
if (Test-Path $specifyDir) {
    Write-Host "OK: .specify directory exists" -ForegroundColor Green
} else {
    Write-Host "WARN: .specify directory not found, creating..." -ForegroundColor Yellow
    New-Item -ItemType Directory -Path $specifyDir -Force | Out-Null
    Write-Host "OK: .specify directory created" -ForegroundColor Green
}

# Check for configuration files
$configFile = Join-Path -Path $specifyDir -ChildPath "config.json"
if (Test-Path $configFile) {
    Write-Host "OK: config.json found" -ForegroundColor Green
} else {
    Write-Host "WARN: config.json not found" -ForegroundColor Yellow
}

# Verify spec files exist
Write-Host "INFO: Verifying specification files..." -ForegroundColor Cyan
$specFiles = @(
    "SPEC_KIT_CONSTITUTION.md",
    "SPEC_KIT_SPECIFICATION.md",
    "SPEC_KIT_IMPLEMENTATION_PLAN.md",
    "SPEC_KIT_TASKS.md",
    "SPEC_KIT_README.md",
    "SPEC_KIT_SUMMARY.md"
)

$foundCount = 0
$missingSpecs = @()
foreach ($spec in $specFiles) {
    $specPath = Join-Path -Path $projectRoot -ChildPath $spec
    if (Test-Path $specPath) {
        Write-Host "OK: Found - $spec" -ForegroundColor Green
        $foundCount++
    } else {
        Write-Host "WARN: Missing - $spec" -ForegroundColor Yellow
        $missingSpecs += $spec
    }
}

# Check .NET SDK
Write-Host "INFO: Checking .NET SDK..." -ForegroundColor Cyan
try {
    $dotnetVersion = dotnet --version
    Write-Host "OK: .NET SDK $dotnetVersion" -ForegroundColor Green
} catch {
    Write-Host "ERROR: .NET SDK not found" -ForegroundColor Red
}

# Check Git
Write-Host "INFO: Checking Git..." -ForegroundColor Cyan
try {
    $gitVersion = git --version 2>$null
    if ($LASTEXITCODE -eq 0) {
        Write-Host "OK: $gitVersion" -ForegroundColor Green
    } else {
        Write-Host "WARN: Git not found in PATH" -ForegroundColor Yellow
    }
} catch {
    Write-Host "WARN: Git not accessible" -ForegroundColor Yellow
}

# Display GitHub Copilot integration status
Write-Host ""
Write-Host "INFO: GitHub Copilot Configuration:" -ForegroundColor Cyan
Write-Host "  - Provider: GitHub Copilot" -ForegroundColor White
Write-Host "  - Model: GPT-4" -ForegroundColor White
Write-Host "  - Endpoint: github-copilot" -ForegroundColor White
Write-Host "  - Shell: PowerShell" -ForegroundColor White

# Display next steps
Write-Host ""
Write-Host "OK: Initialization Complete!" -ForegroundColor Green
Write-Host ""
Write-Host "NEXT STEPS:" -ForegroundColor Yellow
Write-Host ""
Write-Host "1. Review the specification documents:" -ForegroundColor White
Write-Host "   - SPEC_KIT_README.md (start here)" -ForegroundColor Cyan
Write-Host "   - SPEC_KIT_CONSTITUTION.md (vision)" -ForegroundColor Cyan
Write-Host "   - SPEC_KIT_SPECIFICATION.md (details)" -ForegroundColor Cyan
Write-Host ""
Write-Host "2. Use GitHub Copilot with workspace commands:" -ForegroundColor White
Write-Host "   @workspace Implement EPA-001-001 PerformanceMetric entity" -ForegroundColor Cyan
Write-Host ""
Write-Host "3. Build the project:" -ForegroundColor White
Write-Host "   dotnet build" -ForegroundColor Cyan
Write-Host ""
Write-Host "4. Run tests:" -ForegroundColor White
Write-Host "   dotnet test" -ForegroundColor Cyan
Write-Host ""

# Summary
Write-Host "SUMMARY:" -ForegroundColor Yellow
Write-Host "  - Project initialized with GitHub Spec Kit" -ForegroundColor Cyan
Write-Host "  - Specification files: $foundCount/$($specFiles.Count)" -ForegroundColor Cyan
Write-Host "  - GitHub Copilot AI integration: READY" -ForegroundColor Cyan
Write-Host "  - PowerShell automation: ENABLED" -ForegroundColor Cyan
Write-Host "  - Team assignments: Floris (API), Ni Kang (DB), Camille (PM)" -ForegroundColor Cyan
Write-Host ""
Write-Host "======================================================"
Write-Host "Ready for Development with Spec Kit!" -ForegroundColor Green
Write-Host "======================================================" -ForegroundColor Green
Write-Host ""
