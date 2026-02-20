Import-Module ActiveDirectory

icacls "C:\ResultadoScripts" /grant "Users:(R)"

$Usuarios = Get-ADUser -Filter * -Properties Enabled

"" > "C:\ResultadoScripts\InfoUsuarios.txt"

foreach ($Usuario in $Usuarios) {

    $Grupos = Get-ADPrincipalGroupMembership $Usuario | Select-Object -ExpandProperty Name
    $ListaGrupos = $Grupos -join ", "

    if ($Usuario.Enabled -eq $true) {
        $Estado = "Habilitado"
    }
    else {
        $Estado = "Deshabilitado"
    }

    $Texto = "
Usuario: $($Usuario.SamAccountName)
Grupos: $ListaGrupos
Estado: $Estado
"

    Write-Host $Texto

    $Texto >> "C:\ResultadoScripts\InfoUsuarios.txt"
}
