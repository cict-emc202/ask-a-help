extends Node2D

var snake_health = 100 #snake case

func _ready():
	get_node("SnakeHealthbar").value = snake_health
	get_node("Player").play("idle")
	get_node("Snake").play("idle")

func _on_AttackButton_pressed():
	get_node("SnakeHealthbar").value = snake_health
	get_node("Player").play("attack")
	get_node("Snake").play("damaged")

func _on_Player_animation_finished():
	get_node("Player").play("idle")

func _on_Snake_animation_finished(animation):
	if animation == "damaged":
		get_node("Snake").play("idle")
		snake_health-=10
	
func _on_SpecialButton_pressed():
	get_node("SnakeHealthbar").value = snake_health
	get_node("Player").play("special")
	get_node("Snake").play("damaged")
