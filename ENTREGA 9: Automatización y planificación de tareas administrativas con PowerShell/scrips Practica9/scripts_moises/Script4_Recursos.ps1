Write-Host "recursos compartidos"
Get-SmbShare
Get-SmbShare | Add-Content C:\InfoRecursos.txt
Get-SmbShareAccess -Name permisos | Out-File C:\InfoRecursos.txt -Append