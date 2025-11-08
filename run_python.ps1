param(
    [Parameter(Mandatory=$true)]
    [string]$ScriptPath
)

# Full path to conda environment's Python executable
$pythonPath = "c:\Users\jacks\OneDrive\Desktop\Portfolio\.conda\python.exe"

# Check if the Python script exists
if (-not (Test-Path $ScriptPath)) {
    Write-Error "Error: Python script '$ScriptPath' not found!"
    exit 1
}

# Run the Python script with the conda environment's Python
Write-Host "Running '$ScriptPath' with conda environment..."
& $pythonPath $ScriptPath

# Check if the script ran successfully
if ($LASTEXITCODE -eq 0) {
    Write-Host "Script completed successfully!" -ForegroundColor Green
} else {
    Write-Host "Script failed with exit code $LASTEXITCODE" -ForegroundColor Red
}