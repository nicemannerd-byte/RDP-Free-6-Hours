@echo off
setlocal
echo RDP setup starting...
powershell -NoProfile -ExecutionPolicy Bypass -Command "$ip=(tailscale ip -4 2^>$null | Select-Object -First 1).Trim(); if ($ip -match '^100\.') { Write-Host ('Tailscale RDP address: ' + $ip + ':3389') } else { Write-Host 'Tailscale IPv4 was not available.' }"
echo Username: runneradmin
echo Password: use the RDP_PASSWORD repository secret
endlocal