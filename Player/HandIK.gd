extends Node3D

@export var ik_solver : NodePath # Assign the IK solver node path in the inspector

func adjust_hand_to_object(obj):
	if ik_solver != null:
		var target_position = obj.global_transform.origin
		get_node(ik_solver).target = target_position
		get_node(ik_solver).solver.start()
