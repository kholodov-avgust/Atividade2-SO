do {
    Clear-Host
    $sorteado = Get-Random -Minimum 50 -Maximum 101
    $acerto = $false
    Write-Host "================ SORTEIO ================" -ForegroundColor Cyan
    Write-Host "Tente adivinhar o número entre 50 e 100."
    
    for ($tentativa = 1; $tentativa -le 6; $tentativa++) {
        $palpite = [int](Read-Host "Tentativa $tentativa/6 - Digite seu palpite")
        
        if ($palpite -eq $sorteado) {
            Write-Host "Parabéns você acertou o número é: $sorteado! 🎉" -ForegroundColor Green
            $acerto = $true
            break
        } elseif ($palpite -lt $sorteado) {
            Write-Host "Digite um número maior." -ForegroundColor Yellow
        } else {
            Write-Host "Digite um número menor." -ForegroundColor Yellow
        }
    }
    
    if (-not $acerto) {
        Write-Host "Você perdeu o número sorteado era: $sorteado" -ForegroundColor Red
    }
    
    $continuar = Read-Host "Deseja jogar novamente? (S/N)"
} while ($continuar -eq "s")