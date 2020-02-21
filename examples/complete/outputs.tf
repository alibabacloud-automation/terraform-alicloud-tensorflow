###############
# ECS Instance
###############
output "this_instance_public_ip" {
  description = "The instance public ip."
  value       = module.tensorflow.this_instance_public_ip
}

output "this_security_group_ids" {
  description = "The security group ids in which the instance."
  value       = module.tensorflow.this_security_group_ids
}

output "this_vswitch_id" {
  description = "The vswitch id in which the instance."
  value       = module.tensorflow.this_vswitch_id
}

output "this_instance_id" {
  description = "The instance id"
  value       = module.tensorflow.this_instance_id
}
output "this_instance_name" {
  description = "The instance name."
  value       = module.tensorflow.this_instance_name
}

output "this_private_ip" {
  description = "The instance private ip."
  value       = module.tensorflow.this_private_ip
}

output "this_instance_tags" {
  description = "The tags for this instance."
  value       = module.tensorflow.this_instance_tags
}

output "this_image_id" {
  description = "The image ID used by this instance."
  value       = module.tensorflow.this_image_id
}

output "this_instance_type" {
  description = "The instance type."
  value       = module.tensorflow.this_instance_type
}
