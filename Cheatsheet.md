# 📖 Guía Rápida de Comandos

## Mis Aliases
*Comandos personalizados para mi flujo de trabajo diario.*

| Alias | Comando Real 
| :--- | :--- |
| `c` | Limpia la pantalla de la terminal. |
| `caf` | **Jump to Finder:** Salta en la terminal a la carpeta abierta en el Finder. |
| `editar` | Abre mi configuración de la terminal en VS Code. |
| `activar` | Aplica cambios de configuración al instante. |
| `dsize` | Muestra peso de archivos ordenados de menor a mayor. |
| `limpiarbrew` | Borra basura y archivos temporales de Homebrew. |

## 🦌 Tealdeer (`tldr`)
*override* `help`

*Manuales simplificados con ejemplos prácticos.*
| Comando | Descripción |
| :--- | :--- |
| `help comando` | Muestra ejemplos rápidos de cómo usar cualquier comando (ej: `help tar` o `help brew`). |
| `help --update` | Actualiza la base de datos local de ejemplos. |

## 🐙 Git (`git`)
*Control de versiones para mis fórmulas y configuraciones.*
| Comando | Descripción |
| :--- | :--- |
| `git status` | Muestra qué archivos han cambiado y qué falta por subir. |
| `git add .`| Prepara todos los cambios realizados para guardarlos. |
| `git commit -m "msj"` | Guarda los cambios con un mensaje descriptivo. |
| `git push` | Sube los cambios de tu compu a GitHub. |
| `git pull` | Trae los cambios de GitHub a tu compu (importante si editaste en la web). |
| `git log --oneline` | Muestra un historial resumido de tus últimos cambios. |

## 🚀 Zoxide (`z`)

*Navegación inteligente entre carpetas.*
| Comando | Descripción |
| :--- | :--- |
| `z nombre` | Salta a la carpeta más frecuente que coincida con ese nombre. |
| `zi` | Abre un menú interactivo para elegir la carpeta. |
| `z -` | Vuelve a la carpeta anterior donde estabas. |

## 🌳 Eza (`eza`)
*override* `ls`

*Listado visual de archivos.*
| Comando | Descripción |
| :--- | :--- |
| `ls -T` | Muestra la estructura de carpetas en forma de árbol. |
| `ls -l --git` | Muestra detalles del archivo y su estado en Git. |
| `lsa` | Muestra todos los archivos incluyendo los ocultos |
| `lsh` | Muestra solo los archivos ocultos. |

## 🔍 Ripgrep (`rg`)
*Para buscar texto dentro de archivos.*
| Comando | Descripción |
| :--- | :--- |
| `rg "texto"` | Busca una palabra en todos los archivos de la carpeta. |
| `rg -i "texto"` | Busca ignorando mayúsculas/minúsculas. |
| `rg -l "texto"` | Muestra solo los nombres de archivos que contienen la palabra. |
| `rg "fórmula" -g "*.dax"` | Busca solo dentro de archivos con extensión .dax. |

## 📂 FD (`fd`)
*Para encontrar archivos por su nombre.*
| Comando | Descripción |
| :--- | :--- |
| `fd nombre` | Encuentra archivos o carpetas que contengan "nombre". |
| `fd -e sql` | Filtra y muestra solo archivos con extensión .sql. |
| `fd -H` | Busca incluyendo archivos ocultos. |
| `fd nombre -x open` | Encuentra el archivo y lo abre automáticamente. |

## 🦇 Bat (`bat`)
*override* `cat`

*Visualizador de archivos con esteroides.*
| Comando | Descripción |
| :--- | :--- |
| `cat archivo` | Muestra el contenido con colores y números de línea. |
| `cat -p archivo` | Muestra el contenido "limpio" (sin bordes ni números). |
| `cat --list-themes` | Muestra los diferentes temas de colores disponibles. |


## 📊 Tokei (`tokei`)

*Estadísticas de código.*
| Comando | Descripción |
| :--- | :--- |
| `tokei` | Reporte rápido de líneas de código, comentarios y archivos. |
| `tokei -s code` | Ordena la lista por cantidad de código escrito. |


## 🧹 Dust (`dust`)

*Visualizador de uso de disco con gráficos de barras.*
| Comando | Descripción |
| :--- | :--- |
| `dust` | Muestra un árbol de directorios indicando qué carpetas están consumiendo más espacio visualmente. |
| `dust -d 1` | Limita la profundidad para ver solo el peso de las carpetas principales del nivel actual. |

## 🔍 FZF (`fzf`)

| Comando | Descripción |
| :--- | :--- |
| `fzf` | Abre un buscador interactivo de todos los archivos en la carpeta actual. |
| `fzf --preview 'bat --color=always {}'` | Permite buscar archivos y ver su contenido (con bat) en una ventana lateral antes de abrirlos. |
| `CTRL + R` | (Atajo de teclado) Permite buscar en todo tu historial de comandos de la terminal de forma inteligente. |
| `CTRL + T` | (Atajo de teclado) Busca archivos rápidamente para pegar la ruta directamente en el comando que estés escribiendo. |
| `CTRL + C` | (Atajo de teclado) Navegar a siguiente carpeta interactivament |

## 🔝 Topgrade (`topgrade`)

*El actualizador definitivo del sistema.*
| Comando | Descripción |
| :--- | :--- |
| `topgrade` | Ejecuta una actualización completa: Homebrew, Mac App Store, archivos de configuración y más. |
| `topgrade --dry-run` | Muestra qué aplicaciones se actualizarían sin llegar a instalar nada. |

## 📦 Homebrew (`brew`)
*El gestor de paquetes que mantiene todas estas herramientas instaladas.*
| Comando | Descripción |
| :--- | :--- |
| `brew update` | Actualiza la lista de aplicaciones disponibles en Homebrew. |
| `brew upgrade` | Actualiza todas las herramientas instaladas a su versión más reciente. |
| `brew install nombre` | Instala una nueva herramienta (ej: brew install fzf). |
| `limpiarbrew` | (Alias) Borra versiones viejas y archivos temporales para liberar espacio. |

## 🍎 Mas (`mas`)

*Gestión de la Mac App Store.*
| Comando | Descripción |
| :--- | :--- |
| `mas list` | Lista todas las apps instaladas y sus IDs. |
| `mas outdated` | Muestra qué apps tienen actualizaciones disponibles. |
| `mas upgrade` | Actualiza todas las apps de la tienda de una vez. |


