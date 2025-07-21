Add-Type -AssemblyName PresentationFramework

$result = [System.Windows.MessageBox]::Show(
    "Do you agree to run this script? Click Yes to see the surprise.",
    "Confirmation",
    "YesNo",
    "Question"
)

if ($result -eq 'Yes') {
    $surprise = "Surprise!"
    $tempFile = "$env:TEMP\surprise.txt"
    $surprise | Out-File -Encoding UTF8 $tempFile
    notepad $tempFile
} else {
    Write-Host "User cancelled the script."
}
