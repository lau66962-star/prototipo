# 🎨 Recursos (assets) del juego

> Inventario de lo que hay, lo que se puede usar y lo que falta.
> **Regla de oro:** siempre verificar la licencia antes de publicar. CC0 = libre total. Otros piden créditos.

## 📦 Ya descargado y ordenado (`assets/packs/`)

| Pack | Qué trae | Estado |
|---|---|---|
| **Pixel Crawler — Free Pack 2.0.3** (Anokolisa) | Personajes, mobs, NPCs, tilesets, armas, props | ✅ Limpio — revisar `Terms.txt` de la licencia |
| **Sunnyside World — ASSET_PACK_V2.1** | Tileset, edificios, cultivos, personajes 16x16/32x32 | ✅ Limpio — le saqué el código GameMaker y la basura de macOS |
| `sunnyside_world_chatacter_anim_human...aseprite` | Animación de personaje (se edita con Aseprite) | ✅ dentro del pack Sunnyside |

> Nota: la carpeta `assets/packs/` es la **materia prima comprada/descargada**. El material que use Godot va en `game/assets/` (importado, no duplicado).

| Pack | Fuente | Licencia | Para qué sirve |
|---|---|---|---|
| **Anokolisa — Free Pixel Art Asset Pack** (Top-down, 16x16, 500+ sprites) | itch.io | libre uso comercial, sin IA | Base para prototipo: héroes, NPCs, árboles, casas, armas |
| **Anokolisa — Pixel Crawler** | itch.io | idem | Interiores (cocinas, aulas, oficinas) |
| **Anokolisa — Hero's Journey: Moon Graveyard** | itch.io | idem | Zonas "sin vida" del mundo gris 🪦 |
| **CC0 Top Down Tileset Template** (rgsdev) | OpenGameArt | CC0 | Plantilla base para armar mapas |
| **Town Tiles** | OpenGameArt | CC0 | Ciudad: calles, veredas, edificios, árboles |
| **12x12 City Tiles (Top Down)** | OpenGameArt | CC0 | Zonas urbanas "monótonas" |
| **Top-Down Assets** (lista curada) | OpenGameArt | CC0 | Todo lo relacionado, de una |
| **Free Path and Road Tileset** | CraftPix | free, revisar términos | Caminos, veredas, rutas |

**Enlaces:**
- itch.io → `anokolisa.itch.io/free-pixel-art-asset-pack-topdown-tileset-rpg-16x16-sprites`
- OpenGameArt → buscar "town tiles", "cc0 top down tileset template", "top-down assets"

## 🎨 Truco clave del color

Un **solo set** de assets coloridos. El "mundo gris" se hace **desde el motor**:

- Godot: `ColorRect` + shader de desaturación, o `Environment` con "Adjustments → Saturation = 0".
- Se controla con **una variable** (`GestorColor.color_mundo`): 0 = gris total, 1 = color pleno.
- → No hace falta redibujar ningún sprite. El mismo banco, árbol y NPC son "grises" al principio y coloridos después.

## 🔲 Lo que falta buscar

- [ ] **Tileset de aula/universidad** (aulas, pupitres, pasillos) — top-down, 16x16 o 32x32
- [ ] **Sprites protagonista** "apagado" (camina con cabeza gacha — se puede animar con el del pack)
- [ ] **Sprites de las mascotas** (gato chico, gato adulto, perro viejo, perro joven, cachorra) — para la escena del cielo
- [ ] **Efectos de partículas** (vapor de respiración en el frío, estrellas, destello cálido)
- [ ] **Música**: 1 loop monótono (mundo gris) + 1 melancólica-reconfortante (escena árbol). Fuentes: OpenGameArt "music", itch.io free music, o música generada luego
- [ ] **SFX**: viento nocturno, pasos, papel arrugado

## 🛠️ Herramientas libres extra

| Herramienta | Para qué |
|---|---|
| [Aseprite](https://www.aseprite.org) | Editar/crear pixel art (pago, hay alternativas gratuitas: Pixelorama, LibreSprite) |
| [Pixelorama](https://orama-interactive.itch.io/pixelorama) | Editor pixel art gratis |
| [Leshy SpriteSheet Tool](https://www.leshylabs.com/apps/sstool/) | Armar hojas de sprites desde PNGs |
| [Lospec Palette Generator](https://lospec.com/) | Paletas y generador — ideal para el mundo gris/color |

## 📌 Recomendación de arranque

1. Bajá el pack de **Anokolisa** y agregalo a `game/assets/` (primero verificar su licencia en la página).
2. Con el **truco del color**, usalo tal cual para el prototipo.
3. Cuando el prototipo esté andando, se puede reemplazar por arte propio o refinado, sprite por sprite.