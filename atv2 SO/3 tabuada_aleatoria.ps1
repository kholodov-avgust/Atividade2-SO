do {
    Clear-Host
    $numero = Get-Random -Minimum 1 -Maximum 21
    Write-Host "=== TABUADA DO $numero ===" -ForegroundColor Magenta

    for ($i = 1; $i -le 10; $i++) {
        $resultado = $numero * $i
        Write-Host "$numero x $i = $resultado"
    }
    Write-Host ""

    $continuar = Read-Host "Deseja ver outra tabuada? (S/N)"

} while ($continuar -eq "s")