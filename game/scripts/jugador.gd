extends CharacterBody2D

# Prototipo: protagonista que camina por el mundo gris.
# Movimiento WASD / flechas. Animación simple con sprite-sheets.

const TX_CAMINAR := preload("res://assets/sprites/jugador_walk.png")
const TX_QUIETO := preload("res://assets/sprites/jugador_idle.png")

@export var velocidad: float = 140.0
@export var fps_anim: float = 8.0

@onready var sprite: Sprite2D = $Sprite

var t_anim: float = 0.0

func _physics_process(delta: float) -> void:
	var dir := Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = dir * velocidad
	move_and_slide()
	_animar(delta, dir)

func _animar(delta: float, dir: Vector2) -> void:
	var moviendose := dir.length() > 0.1
	if moviendose:
		t_anim += delta * fps_anim
		sprite.texture = TX_CAMINAR
		sprite.hframes = 8
		sprite.frame = int(t_anim) % 8
		if absf(dir.x) > 0.01:
			sprite.flip_h = dir.x < 0.0
	else:
		t_anim = 0.0
		sprite.texture = TX_QUIETO
		sprite.hframes = 9
		sprite.frame = 0