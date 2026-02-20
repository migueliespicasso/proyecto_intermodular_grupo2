# Crear carpeta si no existe
New-Item -Path "C:\ResultadoScripts" -ItemType Directory -Force

# Archivo de salida
$archivo = "C:\ResultadoScripts\InfoImpresora.txt"

# Obtener impresoras instaladas
$impresoras = Get-CimInstance Win32_Printer

# Mostrar en pantalla
$impresoras | Select Name, ShareName, Shared | Format-Table

# Guardar datos básicos
$impresoras | Select Name, ShareName, Shared | Out-File $archivo

# Mostrar permisos de cada impresora
foreach ($imp in $impresoras) {
    "`nPermisos de impresora: $($imp.Name)" | Out-File $archivo -Append
    (Get-Printer -Name $imp.Name).PermissionSDDL | Out-File $archivo -Append
}
