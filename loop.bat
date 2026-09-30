@echo off
:check
cls
echo RDP CONNECTION STATUS
echo =====================
tailscale status
echo.
echo RDP address:
powershell -NoProfile -Command "$ip=(tailscale ip -4 2>$null | Select-Object -First 1).Trim(); if($ip){Write-Host ($ip + ':3389')}else{Write-Host 'Tailscale IP not available'}"
echo.
timeout /t 15 /nobreak >nul
goto check