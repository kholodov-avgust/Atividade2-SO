do {    
    Clear-Host
    $inicio = [int](Read-Host "Número Inicial")
    $final  = [int](Read-Host "Número Final")
    $increm  = [int](Read-Host "Incremento")
    $ordem  = Read-Host "Digite C (crescente) ou D (decrescente)"

    if ($ordem -eq "C") {
        for ($i = $inicio; $i -le $final; $i += $increm) {
            Write-Host "$i " -ForegroundColor Green
        }
    } elseif ($ordem -eq "D") {
        for ($i = $final; $i -ge $inicio; $i -= $increm) {
            Write-Host "$i " -ForegroundColor Yellow
        }
    }
    Write-Host ""

    $continuar = Read-Host "Deseja ver outra sequência? (S/N)"

} while ($continuar -eq "s")