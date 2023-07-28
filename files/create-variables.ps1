$outputObj = @{
    "DCComputerObjects" = $env:dc_computer_objects
}
    
$outputObj | Export-Clixml "C:\Logs\create-variables.xml" -Force