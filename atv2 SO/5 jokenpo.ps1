do {
    Clear-Host
    Write-Host "==================== JOKENPO =====================" -ForegroundColor Yellow
    $opcao = "", "Pedra", "Papel", "Tesoura"
    
    $usuario = [int](Read-Host "Escolha: Pedra (1), Papel (2) ou Tesoura (3)")
    $maquina = Get-Random -Minimum 1 -Maximum 4
    
    Write-Host "Você escolheu: $($opcao[$usuario])"
    Write-Host "A máquina escolheu: $($opcao[$maquina])" -ForegroundColor Cyan
    
    if ($usuario -eq $maquina) {
        Write-Host "Empate! 🤝" -ForegroundColor Yellow
    } elseif (($usuario -eq 1 -and $maquina -eq 3) -or  
              ($usuario -eq 3 -and $maquina -eq 2) -or 
              ($usuario -eq 2 -and $maquina -eq 1)) {
        Write-Host "Você Venceu! 🎉" -ForegroundColor Green
    } else {
        Write-Host "Você Perdeu! ❌" -ForegroundColor Red
    }
        Write-Host ""

    $continuar = Read-Host "Deseja continuar jogando? (S/N)"
} while ($continuar -eq "s")