# 🧱 POO aplicado al juego (y cómo lo maneja Godot)

> **Respuesta corta a "¿es necesario usar POO?": SÍ.** Godot usa **GDScript**, que es un lenguaje 100% orientado a objetos, y todo el motor está construido sobre esa idea (nodos con scripts). No es opcional: es la forma natural de organizar el código ahí. La buena noticia: para un juego como el tuyo necesitás **muy poquitos conceptos** — y te los explico aplicados a TU historia.

---

## 1. Las 4 ideas de POO que de verdad vas a usar

### 📦 Clase = la "receta" (el molde)

Una clase describe qué **es** y qué **puede hacer** un tipo de cosa. En tu juego:

```gdscript
# receta de "cualquier persona que camina"
class_name Personaje
extends CharacterBody2D

@export var velocidad: float = 80.0
var esta_apagado: bool = true   # todos nacen "apagados" (mundo gris)
```

### 🧸 Instancia = el "objeto" hecho con la receta

Cada personaje en tus escenas es una *instancia* de esa clase. Son **copias independientes**: un NPC y el protagonista pueden usar la misma receta, pero cada uno con su velocidad, su nombre, su estado.

### 👨‍👦 Herencia = una receta que extiende otra

```gdscript
# el protagonista es un Personaje, pero con poderes extra
class_name Jugador
extends Personaje

var tiene_nota: bool = false
var color_desbloqueado: float = 0.0      # 0 = gris, 1 = color total
```

Como `Jugador` hereda de `Personaje`, **ya tiene** `velocidad`, `esta_apagado` y `moverse()` — pero además agrega lo suyo. Sin herencia repetirías código en todos lados.

### 📡 Señales = "avisar que algo pasó" (lo MÁS útil de Godot)

```gdscript
# cuando el jugador lee la notita por primera vez...
signal nota_leida

func _on_nota_leida() -> void:
    nota_leida.emit()   # ...todos los que escuchan se enteran
```

En Godot, el "tablero de avisos" entre objetos son las **señales** — sirven para que el sistema de color sepa *"che, lean la notita, activen el primer color"* sin que la notita tenga que conocer al sistema de color.

---

## 2. El árbol de nodos de Godot (la "escena")

Godot NO te obliga a escribir clases en archivos separados para todo: armás **escenas** con nodos visuales (Sprite2D, CharacterBody2D, Area2D...) y a cada uno le pegás un script. Ese script ES la clase de ese nodo.

Para tu juego, un primer borrador de la estructura:

```
Main (Node2D)
├── Mundo (Node2D)
│   ├── Jugador (CharacterBody2D + script Jugador.gd)
│   ├── NPC_Invisible_1 (CharacterBody2D + seña de "te vi")
│   └── ... (NPCs del mundo gris)
├── Nota (Area2D + script Nota.gd)            ← el papelito
├── GestorColor (Node + script)               ← autoload/singleton del mundo
├── GestorAudio (Node + script)
└── UI (CanvasLayer)
    └── Inventario_Nota (Panel + botón "leer nota")
```

---

## 3. Tu primer arquitectura de clases (borrador)

### Autoloads (singletons — existen SIEMPRE, en todo el juego)

| Clase | Misión |
|---|---|
| `GestorColor.gd` | Controla la saturación global: `color_universal = 0.0` → 1.0. Desata el "destello cálido" de la escena del árbol |
| `GestorAudio.gd` | La música monótona que va sumando notas a medida que el color avanza |
| `DatosGuardado.gd` | Qué progreso tiene el jugador (leyó la nota, vio las estrellas...) |

### Clases de objetos (por archivo)

| Clase | Receta | Campos/acciones ejemplo |
|---|---|---|
| `Personaje.gd` (base) | Cualquiera que camina | `velocidad`, `moverse()`, `velocidad_anim()` |
| `Jugador.gd` (hereda Personaje) | El protagonista | `tiene_nota`, `interactuar()`, `procesar_papel()` |
| `NPC.gd` (hereda Personaje) | La gente del mundo | `reacciona_a_color`, `dialogo()` |
| `Nota.gd` | El papelito | `fue_leida`, `nivel_color` (0→1), `leer()` → emite `nota_leida` |
| `EstrellaAnimal.gd` | Las caras de luz en el cielo | animación, `parpadear_y_disiparse()` |

---

## 4. Ejemplo real mínimo de GDScript (para que lo veas andando)

**`Nota.gd`** — el papelito que gana color:

```gdscript
class_name Nota
extends Area2D

signal nota_leida

@export var texto: String = "Hola. Estaba atrás tuyo..."
var nivel_color: float = 0.0

func leer() -> void:
    nivel_color = 1.0          # el papel ya tiene color
    nota_leida.emit()          # aviso: ¡activen el primer destello!
```

**`GestorColor.gd`** — el mundo que despierta:

```gdscript
extends Node

var color_mundo: float = 0.0

func _on_nota_leida() -> void:
    # sube el color del mundo con suavidad
    var tween := create_tween()
    tween.tween_property(self, "color_mundo", 0.15, 3.0)
```

Y en la escena, la señal `nota_leida` de la `Nota` se conecta al `GestorColor` **desde el editor** (pestaña "Node" → doble clic en la señal). Eso es POO en acción sin escribir ni una línea de más.

---

## 5. Reglas prácticas para empezar

1. **Empezá simple:** primero `Jugador.gd` (moverse y saltar/caminar) y `GestorColor.gd` (gris→color). Eso ya te da el "huevo" jugable.
2. **Un script por cosa** — si un script pasa de ~200 líneas, merece dividirse.
3. **Usá señales** para comunicar (no variables globales sueltas).
4. **Los autoloads** (GestorColor, GestorAudio) solo para lo que es global: NO los uses para todo.
5. No pierdas tiempo perfeccionando arquitectura antes de tener algo funcionando: **protótipo primero, refactorizás después.**