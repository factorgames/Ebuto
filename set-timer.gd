extends Node2D

onready var timer = get_node("Timer")
onready var timer_2 = get_node("Timer-2")

func _ready():
	$start.play()
	timer.set_wait_time(3)
	timer.start()

func _on_Timer_timeout():
	get_tree().change_scene("res://main_menu.tscn")
