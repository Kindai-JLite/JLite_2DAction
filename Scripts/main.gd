extends Node2D

var score = 0
var best_score = 0
@onready var HUD = $HUD


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func reset():
	pass

func game_over():
	get_tree().change_scene_to_file("res://Scenes/startmenu.tscn")
	HUD.display_best_score(best_score)
	HUD.display_score(0)

func update_score(n):
	print("add ", n, " point")
	score += n
	HUD.display_score(score)
	if best_score < score:
		best_score = score
		HUD.display_best_score(best_score)
