function Get-MaxPyramidHeight {
    param(
        [int]$n
    )
    
    $height = 0
    $totalCubes = 0
    
    while ($totalCubes -le $n) {
        $height++
        $totalCubes += $height * ($height + 1) / 2
    }
    
    return $height - 1
}

# Read input
$n = [int]::Parse(Read-Host)

# Output the result
Write-Output (Get-MaxPyramidHeight -n $n)
