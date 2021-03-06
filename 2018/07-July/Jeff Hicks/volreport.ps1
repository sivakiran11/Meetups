[cmdletbinding()]
Param(
[Microsoft.Management.Infrastructure.CimSession[]]$Cimsession = $env:computername,
[string]$Path = "C:\work\volume.csv"
)
get-volume -DriveLetter c -CimSession $Cimsession |
Select driveletter,pscomputername,Size,SizeRemaining,HealthStatus,
@{Name="Date";Expression={(Get-Date)}} | 
Export-CSV -path $path -append

