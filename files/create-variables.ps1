$outputObj = @{
    "DCComputerObjects" = $env:dc_computer_objects
}
    
$outputObj | Export-Clixml "C:\Logs\create-variables.xml" -Force
$outputObj | Out-String | Out-File "C:\Logs\create-variables-plain.txt" -Force
$env:dc_computer_objects | Out-String | Out-File "C:\Logs\create-variables-superplain.txt" -Force