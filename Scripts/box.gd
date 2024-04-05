extends RigidBody2D
@onready var sprite = $AnimatedSprite2D # AnimatedSprite ノードの参照
@export var item_scene: PackedScene
var empty = false
	
# Called when the node enters the scene tree for the first time.
func _ready():
	sprite.play("default")


# Called every frame. 'delta' is the elapsed time since the previous frame.






func _on_area_2d_body_exited(body):
	if body.name == "Player":
	
	
		print("Player hit Item")
		# AnimationPlayer ノードの「hit」アニメーションを再生する
		sprite.play("empty")
		# この「Item」ノードを開放する（消す）
		
		if not empty and item_scene != null:
			var item = item_scene.instantiate()
			item.position = $Marker2D.global_position
			get_parent().add_child(item)
		
		empty = true
		# Replace with function body. # Replace with function body.



