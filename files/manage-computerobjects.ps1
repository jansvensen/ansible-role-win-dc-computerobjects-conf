function move-computer {

    [Parameter(Mandatory=$true)][String]$ComputerObject
    [Parameter(Mandatory=$true)][String]$TargetOU
    
    $ComputerObjectDN = (Get-ADComputer $ComputerObject).DistinguishedName
    Move-ADObject -Identity $ComputerObjectDN -TargetPath $TargetOU

}

$ComputerObject = "t-citrix-ctrl-01"
$TargetOU = "OU=Citrix,OU=03_Environment,OU=Computer,OU=Objects,DC=dt,DC=democloud"
Move-computer -ComputerObject $ComputerObject -TargetOU $TargetOU

$ComputerObject = "t-citrix-rdsh-01"
$TargetOU = "OU=RDSH,OU=Citrix,OU=03_Environment,OU=Computer,OU=Objects,DC=dt,DC=democloud"
Move-computer -ComputerObject $ComputerObject -TargetOU $TargetOU