$NombreEquipo = $env:COMPUTERNAME
$Usuario = $env:USERNAME
$VersionSO = (Get-CimInstance Win32_OperatingSystem).Caption
$IP = (Get-NetIPAddress -AddressFamily IPv4 | Select-Object -First 1).IPAddress

$Texto = "
Nombre del equipo: $NombreEquipo
Usuario que ejecuta el script: $Usuario
Versión del sistema operativo: $VersionSO
Dirección IP: $IP
"

Write-Host $Texto

$Texto >> "C:\ResultadoScripts\InfoSistema.txt"
