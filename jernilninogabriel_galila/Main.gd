extends Node2D

var slime_health = 100 #snake case

func _ready():
	get_node("SlimeHPBar").value = slime_health
	get_node("Player").play("Idle")
	get_node("Slime").play("Idle")


func _on_AttackButton_pressed():
	get_node("SlimeHPBar").value = slime_health
	get_node("Player").play("Attack")
	get_node("Slime").play("Damaged")

func _on_Player_animation_finished():
	get_node("Player").play("Idle")


func _on_Slime_animation_finished():
	get_node("Slime").play("Idle")
	slime_health -= 10
