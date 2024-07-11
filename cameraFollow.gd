extends Camera3D

@export var player: Node
var isActive = true

func _process(delta):
    if player:
        # Get the player's global transform
        var playerGlobalTransform = player.global_transform
        
        # Offset the camera position relative to the player
        var offset = Vector3(0, 2, -5)  # Example offset values (adjust as needed)
        var targetPosition = playerGlobalTransform.origin + offset
        
        # Interpolate smoothly to the target position
        var speed = 5.0  # Adjust this value to control the speed of camera movement
        var newPosition = global_transform.origin.lerp(targetPosition, delta * speed)
        
        global_transform.origin = newPosition
        
        look_at(playerGlobalTransform.origin, Vector3(0, 1, 0))  # Adjust the up vector if needed
        

