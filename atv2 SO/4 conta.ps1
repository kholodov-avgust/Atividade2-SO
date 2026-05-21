$acertos = 0

do {
    Clear-Host
    
    $num1 = Get-Random -Minimum 2 -Maximum 101
    $num2 = Get-Random -Minimum 2 -Maximum 101
    $operador = Get-Random -InputObject "+", "-", "*"
    
    if ($operador -eq "+") { $resposta = $num1 + $num2 }
    if ($operador -eq "-") { $resposta = $num1 - $num2 }
    if ($operador -eq "*") { $resposta = $num1 * $num2 }
    
    $numero = [int](Read-Host "Quanto é $num1 $operador $num2 ? ")
    
    if ($numero -eq $resposta) {
        Write-Host "Acertou! 🎉" -ForegroundColor Green
        $acertos++
        Start-Sleep -Seconds 1
        $continuar = "s"
    } else {
        Write-Host "Errou! A resposta correta era $resposta." -ForegroundColor Red
        Write-Host "Total de acertos na rodada: $acertos" -ForegroundColor Yellow
        
        $continuar = Read-Host "Deseja recomeçar? (S/N)"
        $acertos = 0
    }

} while ($continuar -eq "s")