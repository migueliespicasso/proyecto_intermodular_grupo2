# Crear carpeta si no existe
New-Item -Path "C:\ResultadoScripts" -ItemType Directory -Force

# Obtener espacio en disco
$disco = Get-PSDrive C

# Mostrar en pantalla
$disco

# Guardar en archivo
$disco | Out-File "C:\ResultadoScripts\InfoUtils.txt"
