extends RigidBody2D
@export var speed = 50

@export var point = 100 # アイテムに当たった時の獲得ポイント
@onready var sprite = $AnimatedSprite # AnimatedSprite ノードの参照
@onready var label = $Label # Label ノードの参照
@onready var anim_player = $AnimationPlayer 
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.     

func _physics_process(delta):
	position.x -= speed * delta

		

func _on_area_2d_body_entered(body):
	if body.name == "Player":
		print("Player hit Item")
		# AnimationPlayer ノードの「hit」アニメーションを再生する
		anim_player.play("hit")
		# 「hit」アニメーションが終了するまで待機
		await anim_player.animation_finished
		# この「Item」ノードを開放する（消す）
		queue_free()# Replace with function b
