extends Area2D


@export var point = 100 # アイテムに当たった時の獲得ポイント
@onready var sprite = $AnimatedSprite # AnimatedSprite ノードの参照
@onready var label = $Label # Label ノードの参照
@onready var anim_player = $AnimationPlayer # AnimationPlayer ノードの参照
	# Called when the node enters the scene tree for the first time.

#	sprite.modulate = Color(1, 1, 1, 1)
#	sprite.position = Vector2.ZERO
#	sprite.scale = Vector2.ONE
#	label.modulate = Color(1, 1, 1, 0)
#	label.rect_position = Vector2(-32, -20)
#	label.text = str(point)

	# Called every frame. 'delta' is the elapsed time since the previous frame.


# Called when the Area2D enters another Area2D (in this case, when the player enters the item's area).



func  _on_body_entered(body):	
	if body.name == "Player":
		print("Player hit Item")
		# AnimationPlayer ノードの「hit」アニメーションを再生する
		anim_player.play("hit")
		# 「hit」アニメーションが終了するまで待機
		await anim_player.animation_finished
		# この「Item」ノードを開放する（消す）
		queue_free()# Replace with function body.
