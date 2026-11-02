# Inicio en Windows

## 1. Descargar el proyecto

Instala Git y VS Code si faltan. Conserva tu Baseplate local. Para evitar mezclarlo con una carpeta Git existente, clona en una subcarpeta nueva desde PowerShell:

```powershell
Set-Location "C:\Users\ander\OneDrive\Escritorio\IslaObbyRblx"
git clone https://github.com/AndersonACP25/island-obby-rbx.git
Set-Location ".\island-obby-rbx"
code .
```

Si la carpeta island-obby-rbx ya existe, no repitas clone: abre esa copia y revisa git status. No uses reset --hard ni sobrescribas cambios locales.

Antes de fusionar el PR inicial, descarga su rama con:

```powershell
git fetch origin
git switch --track origin/chore/initial-roblox-setup
```

Si ya existe la rama local, usa git switch chore/initial-roblox-setup. Si el PR ya está fusionado, utiliza main y git pull --ff-only desde una copia sin cambios pendientes.

## 2. Instalar Rojo 7

- Instala la extensión oficial Rojo en VS Code desde el enlace de la documentación: https://rojo.space/docs/v7/getting-started/installation/
- Instala también el plugin Rojo 7 para Roblox Studio enlazado en esa misma página.
- La extensión no añade el comando rojo al PATH. Para este primer paso basta su interfaz de VS Code; no necesitas instalar Node ni npm.

## 3. Sincronizar con la base existente

1. En Studio abre tu Baseplate y guarda una copia antes de conectar.
2. Deja Studio fuera del modo Play.
3. En VS Code abre la carpeta que contiene default.project.json.
4. Pulsa Ctrl+Shift+P y ejecuta Rojo: Open Menu.
5. Selecciona el proyecto IslaObby para iniciar el servidor de sincronización. No inicialices otro proyecto: el archivo ya existe.
6. En Studio abre el plugin Rojo y conecta a localhost, puerto 34872.
7. Revisa los cambios propuestos antes de sincronizar: deben añadir IslaObbyServer, IslaObbyClient e IslaObbyShared. Esta configuración no administra Workspace, el mapa ni StarterGui, y preserva las instancias ajenas en los servicios usados.
8. Si la propuesta elimina tu mapa o scripts ajenos, cancela y revisa que abriste el proyecto correcto.
9. No actives Script Sync sobre estos mismos scripts. Edita los scripts en src/ y permite que Rojo los envíe a Studio.

## 4. Verificar

1. Abre Output en Studio y pulsa Play.
2. Debes ver los mensajes [Isla Obby] Servidor listo - v0.1.0 y [Isla Obby] Cliente listo - v0.1.0 (selecciona la vista correspondiente si Output los filtra).
3. Detén Play y comprueba que no aparezcan errores rojos.
4. La escena seguirá siendo tu Baseplate: todavía no hay obstáculos ni checkpoints.

## 5. Respaldar el mapa

Rojo sincroniza aquí únicamente código. Después de construir el recorrido, guarda una copia canónica del lugar en places/IslaObby.rbxl y súbela en el PR correspondiente. No incluye datos persistentes de jugadores. No asumas que Rojo envía cambios visuales desde Studio hacia Git.

## 6. Siguiente hito

Crear inicio, cinco obstáculos estáticos alcanzables, dos checkpoints y meta. Probar muerte/reaparición y dos jugadores. El guardado entre sesiones, las compras y la publicación pública quedan para etapas posteriores.

## 7. IA conectada (después de verificar Rojo)

El MCP oficial permite a un cliente compatible inspeccionar y probar Studio; es independiente de Rojo. Configúralo localmente siguiendo https://create.roblox.com/docs/studio/mcp . Esta conversación no está conectada a tu Studio. Conservar src/ como fuente de verdad para el código también al usar IA.
