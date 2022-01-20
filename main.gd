extends Node2D

# first
func _ready():
	$main_manu_fon.play()

func defould_button_click():
	pass

# 0 -> w
# 1 -> a
# 2 -> s
# 3 -> d
# 4 -> e
# 5 -> f
# 6 -> 0
# 7 -> 1
# 8 -> 2
# 9 -> 3
# 10 -> 4
# 11 -> 5
# 1 -> 6
# 2 -> 7
# 3 -> 8
# 4 -> 9
# 5 -> up
# 6 -> down
# 7 -> right
# 8 -> left

# var ctrl_number = int(rand_range(0,19))

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

func _physics_process(delta):
	if Input.is_action_pressed("enter"):
		redirector()
	elif Input.is_action_pressed("space"):
		get_tree().change_scene("res://info.tscn")
