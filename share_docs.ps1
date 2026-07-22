# share_docs.ps1    ...>> This is Powershell cmd (.\share_docs.ps1)
# Run this from your project root.
# It combines all .md files from the docs folder into one text file for easy sharing with ChatGPT.

$docsPath = ".\docs"
$outputFile = ".\all_docs_for_chatgpt.txt"

if (-not (Test-Path $docsPath)) {
    Write-Host "docs folder not found at $docsPath"
    exit
}

# Clear old export file if it exists
Remove-Item $outputFile -ErrorAction SilentlyContinue

Get-ChildItem "$docsPath\*.md" | Sort-Object Name | ForEach-Object {
    Add-Content $outputFile "`n`n=================================================="
    Add-Content $outputFile "FILE: $($_.Name)"
    Add-Content $outputFile "=================================================="
    Get-Content $_.FullName | Add-Content $outputFile
}

Write-Host ""
Write-Host "Done. Created: $outputFile"
Write-Host "Opening file..."
notepad $outputFile