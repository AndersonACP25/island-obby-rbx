# Isla Obby

Obby multijugador de aprendizaje desarrollado con Roblox Studio y Luau.

## Primer objetivo

Una plataforma de inicio, cinco obstáculos, dos checkpoints y una meta con mensaje de victoria.

## Estado

Preparación del entorno. El recorrido y el guardado entre sesiones todavía no están implementados.

## Flujo de trabajo

Cambios en ramas y revisión mediante pull requests antes de integrar a main. Las pruebas jugables se realizan en Roblox Studio.

## Configuración

Sigue [la guía de inicio para Windows](docs/SETUP_WINDOWS.md).

- `src/server`: scripts del servidor.
- `src/client`: scripts de cada jugador.
- `src/shared`: módulos accesibles por ambos lados, sin secretos.
- `default.project.json`: configuración de sincronización Rojo 7.

Los scripts actuales solo muestran mensajes de comprobación en Output. El mapa se conserva en Studio: Rojo no respalda automáticamente los cambios visuales.
