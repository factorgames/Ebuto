extends Node2D

onready var timer = get_node("Timer")
var ctrl = "of"

func redirector():
	randomize()
	var ctrl_number = int(rand_range(0,19)) # 20 chracter (-1=(19))
	if(ctrl_number==0):
		get_tree().change_scene("res://press(w).tscn")
	elif(ctrl_number==1):
		get_tree().change_scene("res://press(a).tscn")
	elif(ctrl_number==2):
		get_tree().change_scene("res://press(s).tscn")
	elif(ctrl_number==3):
		get_tree().change_scene("res://press(d).tscn")
	elif(ctrl_number==4):
		get_tree().change_scene("res://press(0).tscn")
	elif(ctrl_number==5):
		get_tree().change_scene("res://press(1).tscn")
	elif(ctrl_number==6):
		get_tree().change_scene("res://press(2).tscn")
	elif(ctrl_number==7):
		get_tree().change_scene("res://press(3).tscn")
	elif(ctrl_number==8):
		get_tree().change_scene("res://press(4).tscn")
	elif(ctrl_number==9):
		get_tree().change_scene("res://press(5).tscn")
	elif(ctrl_number==10):
		get_tree().change_scene("res://press(6).tscn")
	elif(ctrl_number==11):
		get_tree().change_scene("res://press(7).tscn")
	elif(ctrl_number==12):
		get_tree().change_scene("res://press(8).tscn")
	elif(ctrl_number==13):
		get_tree().change_scene("res://press(9).tscn")
	elif(ctrl_number==14):
		get_tree().change_scene("res://press(up).tscn")
	elif(ctrl_number==15):
		get_tree().change_scene("res://press(down).tscn")
	elif(ctrl_number==16):
		get_tree().change_scene("res://press(right).tscn")
	elif(ctrl_number==17):
		get_tree().change_scene("res://press(left).tscn")
	elif(ctrl_number==18):
		get_tree().change_scene("res://press(e).tscn")
	elif(ctrl_number==19):
		get_tree().change_scene("res://press(f).tscn")
	else:
		print("eror")

func _ready():
	timer.set_wait_time(1)
	timer.start()

func _physics_process(delta):
	if Input.is_action_pressed("2"):
		ctrl = "on"


func _on_Timer_timeout():
	if(ctrl=="on"):
		redirector()
	else:
		get_tree().change_scene("res://failed_manu.tscn")
