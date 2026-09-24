# GDD — Prototipo (título provisional)

> **Una línea:** Un juego sobre un protagonista que vive en piloto automático, en un mundo sin color, y el pequeño gesto cotidiano que siembra en él la pregunta de *qué significa valer*.

---

## 1. Mensaje central

> **"¿Qué significa valer?"**

De dónde sale esa pregunta:
- El valor se lo implantan las personas: *"valés si producís, si generás, si sos útil"*.
- El protagonista se mide con esa vara ajena y se siente vacío.
- La respuesta del juego no es una lección moral: es **una experiencia**. El jugador la siente, no la lee.

**Tesis (la frase secreta del juego):**
*"El valor que te dieron no se trataba de ellos; se trataba de que vos lo pudieras conservar."*

**Ancla narrativa — El Principito 🌹**
> *"No es una rosa, es MI rosa."*

El gesto es chico, pero es **suyo**. Es chico para cualquiera que lo vea; es enorme para quien viene de años de gris. La notita es la rosa del protagonista: única porque él le dedicó su gris, su historia, su tiempo.

---

## 2. El protagonista

- Sin nombre todavía (decisión abierta). Sugerencia: un nombre neutro, o directamente sin nombre (el símbolo lo es todo el mundo).
- Vive en **piloto automático**: las acciones de rutina se hacen solas, sin emoción.
- Siente que es **invisible** entre la gente.
- Desprecia a todos porque nadie lo ve — y en el fondo, se desprecia a sí mismo con la misma vara que le implantaron.
- **No es un personaje malo**: es un personaje dañado que aún no sabe que se puede ver distinto.

---

## 3. El mundo: gris → color

La regla de oro del juego: **el mundo exterior refleja el interior del protagonista.**

| Estado | Mundo | Música | Detalle |
|---|---|---|---|
| Inicio | Todo gris, desaturado, monótono | Sin melodía, sonido ambiente plano, un solo loop | Objetos idénticos, gente sin rostro |
| Primer quiebre | Un solo objeto recupera color: **la notita** | Aparece **una sola nota** musical | Primera vez que el jugador ve color |
| Avance | El color vuelve **de a poco**: primero un banco, un árbol, una esquina | Se suma una nota por cada avance significativo | Las personas recuperan rostros de a una |
| Final | El mundo entero, vivo | Melodía completa | La pregunta queda respondida por el jugador, no por el juego |

Regla narrativa: **el color nunca vuelve todo junto.** Cada objeto que recupera color es un "te vi" que el protagonista se da a sí mismo.

---

## 4. La rutina (la primera parte del juego)

El jugador debe **vivir el gris antes de que llegue el gesto.** Sin esto, el gesto no pesa.

- Misma ruta de todos los días: mismo lugar, misma gente, mismos sonidos, mismo vacío.
- Mecánicas del piloto automático: caminar solo, no poder elegir en diálogos, opciones que siempre dan igual ("da igual", "no importa").
- El jugador siente el aburrimiento del protagonista **jugándolo**, no leyéndolo.
- **Contraste:** cuanto más gris se vive, más golpea el primer color.

Duración aproximada de esta fase: la necesaria para que el jugador diga "quiero que algo cambie".

---

## 5. El punto de inflexión (el corazón del juego)

### La escena

1. El protagonista está **sentado** en un lugar que concurre mucho.
2. Ve a todos alrededor y siente que es **invisible**.
3. Alguien **lo choca por atrás por error** — él siente el roce pero **no reacciona** (piloto automático).
4. La persona lo mira... y **no se va** del todo.
5. Le pasa un **papelito** y se va, sin esperar nada, sin pedir agradecimiento.
6. El protagonista abre la nota. **Primer color del juego.**

### Por qué funciona (y por qué es "normal" a propósito)

- El gesto es **cotidiano, torpe, humano**. Esa es su fuerza.
- **La imperfección lo hace creíble:** si fuera poético, el protagonista no le creería.
- Nadie le debía nada: el gesto es **gratuito**. Esa es la diferencia entre "valor impuesto" y "valor regalado".
- Todos los jugadores se sintieron apagados alguna vez → **todos entienden al protagonista** y entienden por qué ese gesto lo mueve.

> Criterio de diseño: *"No tiene que ser algo enorme ni wow. Solo tiene que ponerle la idea de que no todo es malo."*

### La nota (texto provisional)

> *"hola estaba atras tuyo, un poco obvio pero bueno, queria pedirte disculpas por haberte chocado"*

- Sin firma al principio (decisión abierta): la firma llega al final — el gesto no necesita nombre, pero regalarlo es otro detalle.
- La nota es **un objeto jugable**: el jugador puede abrirla y releerla cuando quiera.
- **Evolución del objeto:** la nota nace blanca/gris → gana color al avanzar la historia → es la **brújula emocional** del juego (ver Estado 2 de la tabla).

---

## 6. El mensaje interno (lo que el protagonista entiende)

Esa notita le dice, sin decirlo:

> *"Te vi como persona. Me importó lo que pensabas. Me tomé el tiempo de escribirte una disculpa."*

Y le planta una semilla que ya nadie le puede sacar:
- **No todo es malo.**
- **No solo valés por lo que producís.**
- **Podés elegir vos el valor que te das.**

El cambio no es instantáneo: la notita **siembra**, y el mundo color aparece *de a poco* — recién al final el protagonista entiende que la mejora se quedó con él **aunque el gesto no se convirtiera en otra cosa.**

---

## 7. El lugar (decisión abierta)

Requisito: un lugar de **rutina** (se concurre seguido) con gente alrededor (→ "invisible entre multitud").

| Opción | Qué aporta |
|---|---|
| 🍵 Café / bar de siempre | Íntimo, rutinario, "el mozo ni me saluda" |
| 🚌 Parada / terminal de colectivo | La espera como metáfora literal; gente apurada que no mira |
| 📚 Aula / biblioteca | Silencio, estudio, el "ser invisible entre libros" |
| 🌳 Plaza con un banco | Lo más simbólico: el banco mismo puede volverse color después |

---

## 8. Género y motor (decisiones abiertas)

- **Género candidato:** narrativo de bajo estrés (walking sim / point & click / aventura con pequeñas mecánicas de rutina). La emoción es el "gameplay".
- **Motor candidato:** Godot (gratis, open source, excelente para pixel art 2D y color grading).
- **Recursos:** packs pixel art gratuitos CC0 / itch.io (ver sección Assets al final).

---

## 9. Sonido

- Mundo gris: loop ambiente plano, sin melodía. Ruido de la rutina.
- Primer color: **una sola nota** en la música.
- Cada avance suma una nota. El jugador "escucha" la recuperación antes de verla.

---

## 10. Preguntas frecuentes (y defensas de diseño)

> **"¿Quién se pone tan pensativo por un choque?"**
> El choque solo no significa nada: significa todo **después de dos horas de gris**. El drama no está en el choque, está en la acumulación. El jugador siente el golpe porque ya siente el vacío.

> **"Ponle más drama, más sentimiento."**
> El drama del juego está en el contraste, no en la escena. Un gesto enorme sería esperado (cliché). Un gesto chico y gratuito, en el contexto correcto, golpea más que cualquier drama.

> **"Es muy normal."**
> Exacto: es normal para cualquiera que lo vea, y extraordinario para quien viene de años de no ser visto. El juego habla de eso: lo que para el mundo es nada, para una persona puede ser todo.

> **"Todos nos sentimos así, ¿por qué esto lo cambia?"**
> Todos se sintieron apagados (por eso entienden al protagonista). Lo que cambia al protagonista no es el gesto: es **la idea de que no todo es malo**. La rosa no es especial por ser rosa, es especial porque es **su** rosa.

---

## 11. Decisiones abiertas (checklist)

- [ ] Título del juego
- [ ] Nombre del protagonista (¿o anónimo a propósito?)
- [ ] El lugar (4 opciones en sección 7)
- [ ] Género definitivo (sección 8)
- [ ] Motor (¿Godot?)
- [ ] ¿La nota lleva firma? ¿Nombre real o ficticio?
- [ ] ¿Existe un NPC psicólogo/amigo después del quiebre?
- [ ] Duración de la fase gris
- [ ] Final: ¿el protagonista "devuelve" el gesto a alguien?

---

## 12. Inspiraciones

- **Gris** (mundo que pierde/recupera color — referente visual directo)
- **Omori** (monocromo, apagamiento, alternativa al mundo real)
- **Celeste** (esfuerzo por mejorar por uno mismo)
- **To the Moon** (un gesto pequeño y la pregunta por el valor de una vida)
- **Night in the Woods** (desgana, monotonía, pueblo que se apaga, detalles que conectan)
- **El Principito** (lo esencial es invisible a los ojos; "es mi rosa")

---

## 13. Assets (recursos encontrados)

- **Anokolisa — Free Pixel Art Asset Pack (Top-Down 16x16)** — 500+ sprites, CC0, sin IA. → anokolisa.itch.io
- **Anokolisa — Pixel Crawler** (interiores, NPCs) y **Hero's Journey – Moon Graveyard** (atmosférico, mundo "sin vida").
- **OpenGameArt CC0:** Top Down Tileset Template, Town Tiles, 12x12 City Tiles, lista curada "Top-Down Assets".
- **CraftPix:** tileset gratis de caminos/rutas top-down.
- **Truco clave:** un solo set de colores vivos + desaturación/recuperación de color controlada desde el motor (color grading). No hace falta redibujar sprites.