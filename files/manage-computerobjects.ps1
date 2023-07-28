param 
( 
    [Parameter(Mandatory=$True,Position=1)]$computername,
    [Parameter(Mandatory=$True,Position=2)]$ou
)
$computername | out-file c:\logs\computername.txt -Append
$ou | out-file c:\logs\ou.txt -Append

#function move-computer {
#    [Parameter(Mandatory=$true)][String]$ComputerObject
#    [Parameter(Mandatory=$true)][String]$TargetOU
#    
#    $ComputerObjectDN = (Get-ADComputer $ComputerObject).DistinguishedName
#    Move-ADObject -Identity $ComputerObjectDN -TargetPath $TargetOU
#}

#$ComputerObject = "citrix-ctrl-01"
#$TargetOU = "OU=02_Administration,OU=Computer,OU=Objects,DC=dt,DC=democloud"
#Move-computer -ComputerObject $ComputerObject -TargetOU $TargetOU

#$ComputerObject = "citrix-rdsh-01"
#$TargetOU = "OU=Citrix,OU=03_Environment,OU=Computer,OU=Objects,DC=dt,DC=democloud"
#Move-computer -ComputerObject $ComputerObject -TargetOU $TargetOU