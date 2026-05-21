do {
    Clear-Host
    $quant = [int](Read-Host "Quantos termos da sequência de Fibonacci deseja ver?")

    $n1 = 0
    $n2 = 1

    for ($i = 1; $i -le $quant; $i++) {
        Write-Host "$n1 " -ForegroundColor Yellow
        $proximo = $n1 + $n2
        $n1 = $n2
        $n2 = $proximo
    }
    Write-Host ""

    $continuar = Read-Host "Deseja ver outra sequência? (S/N)"

} while ($continuar -eq "s")