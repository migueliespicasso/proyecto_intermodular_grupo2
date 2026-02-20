Write-Host "comprobacion para conectividad"
$SERVIDOR = Test-Connection 192.168.1.10 -Count 1 -Quiet
$CLIENTE = Test-Connection 192.168.1.20 -Count 1 -Quiet
$ROUTER = Test-Connection 192.168.1.1 -Count 1 -Quiet
Write-Host "SERVIDOR" $SERVIDOR
Write-Host "CLIENTE" $CLIENTE
Write-Host "ROUTER" $ROUTER
$SERVIDOR | out-file C:\InfoConectividad.txt
$CLIENTE | out-file C:\InfoConectividad.txt -Append
$ROUTER | out-file C:\InfoConectividad.txt -Append
