$headers = @{
    Authorization = "token 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"
    Accept = "application/vnd.github.v3+json"
}

$body = @{
    name = "yamaha-r1-parallax"
    description = "A beautiful parallax scrolling webpage showcasing the Yamaha R1 motorcycle"
    public = $true
} | ConvertTo-Json

try {
    $response = Invoke-RestMethod -Uri "https://api.github.com/user/repos" -Method Post -Headers $headers -Body $body -ContentType "application/json"
    Write-Host "Repository created successfully!" -ForegroundColor Green
    Write-Host "Repository URL: $($response.html_url)" -ForegroundColor Green
    Write-Host "Clone URL: $($response.clone_url)" -ForegroundColor Green
} catch {
    Write-Host "Error creating repository: $($_.Exception.Message)" -ForegroundColor Red
}
