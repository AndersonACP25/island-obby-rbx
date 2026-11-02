# Reglas de trabajo — Isla Obby

- Roblox Studio + Luau. Mantener el primer alcance: inicio, cinco obstáculos, dos checkpoints y meta. Persistencia fuera de este primer hito.
- Trabajar en ramas y proponer PR a main; no fusionar ni publicar la experiencia sin petición del usuario.
- El código en src/ es la fuente de verdad para los scripts administrados por Rojo. No activar Script Sync sobre los mismos scripts. Las ediciones mediante MCP deben reflejarse en los archivos antes del commit.
- El mapa visual se edita en Studio. Conservarlo al sincronizar; guardar una copia canónica en places/ cuando se construya. Un commit de scripts no respalda el mapa.
- Separar servidor, cliente y módulos compartidos. Usar --!strict en código nuevo.
- Validar progreso y recompensas en el servidor. No confiar en datos enviados por clientes ni incluir secretos en módulos compartidos.
- Cambios pequeños y comprobables; no agregar frameworks, dependencias o compras innecesarias.
- Priorizar pruebas de lógica central: checkpoints, reaparición, meta y aislamiento entre jugadores. Evitar pruebas que solo repliquen constantes o implementación.
- Antes de entregar: revisar JSON y diff; ejecutar build Rojo si está disponible y comprobar en Studio si hay conexión. Declarar explícitamente las verificaciones pendientes; no afirmar que el juego fue probado sin ejecutarlo.
- Escribir documentación y pasos para el usuario en español. No introducir assets con scripts sin revisar su contenido.
