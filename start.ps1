# Quick Start Script
Write-Host "============================================" -ForegroundColor Cyan
Write-Host "تشغيل نظام CFO - التحليل المالي" -ForegroundColor Cyan
Write-Host "============================================" -ForegroundColor Cyan
Write-Host ""

Write-Host "[1/2] تثبيت Dependencies..." -ForegroundColor Yellow
npm install --legacy-peer-deps
if ($LASTEXITCODE -ne 0) {
    Write-Host "❌ فشل تثبيت الحزم" -ForegroundColor Red
    Read-Host "اضغط Enter للخروج"
    exit 1
}

Write-Host ""
Write-Host "[2/2] بدء تشغيل النظام..." -ForegroundColor Yellow
Write-Host ""
Write-Host "🚀 Backend Server: http://localhost:3001" -ForegroundColor Green
Write-Host "🌐 Frontend App: http://localhost:5173" -ForegroundColor Green
Write-Host ""
Write-Host "🔑 بيانات الدخول:" -ForegroundColor Yellow
Write-Host "   Email: admin@bonyan.com"
Write-Host "   Password: admin123"
Write-Host ""
Write-Host "============================================" -ForegroundColor Cyan
Write-Host "يرجى عدم إغلاق هذه النافذة" -ForegroundColor Red  
Write-Host "============================================" -ForegroundColor Cyan
Write-Host ""

# Start backend and frontend
Start-Process npm -ArgumentList "run", "server" -NoNewWindow
Start-Sleep -Seconds 3
Start-Process npm -ArgumentList "run", "dev" -NoNewWindow

Write-Host ""
Write-Host "✅ النظام يعمل الآن!" -ForegroundColor Green
Write-Host ""
Write-Host "للوصول للنظام: http://localhost:5173" -ForegroundColor Cyan
Write-Host ""

Read-Host "اضغط Enter لإيقاف النظام"
