$URL_host = "https://google.com"
foreach ($line in Get-Content Z:\GBW\Powershell_Scripts\big.txt){
    Write-Host "Testing: " $URL_host/$line -ForegroundColor Yellow
    $HTTP_Response = Invoke-WebRequest -URI $URL_host/$line -Method GET
    if ($HTTP_Response.StatusCode -eq 200){
        Write-Host $HTTP_Response
    }
}
