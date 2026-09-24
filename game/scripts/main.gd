extends Node2D

# Ata la textura del viewport interno a la pantalla que ve el jugador.
# (Así el shader de desaturación lee una textura normal y funciona en cualquier renderer)

@onready var mundo: SubViewport = $Mundo
@onready var pantalla: TextureRect = $UI/PantallaGris

func _ready() -> void:
	pantalla.texture = mundo.get_texture()