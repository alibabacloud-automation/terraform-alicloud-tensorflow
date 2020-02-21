Build tensorflow based on ecs  
terraform-alicloud-tensorflow
-----------------------------

English | [简体中文](https://github.com/terraform-alicloud-modules/terraform-alicloud-tensorflow/blob/master/README-CN.md)

Terraform module which creates tensorflow based on ecs on Alibaba Cloud. 

These types of resources are supported:

* [ECS Instance](https://www.terraform.io/docs/providers/alicloud/r/instance.html)

## Terraform versions

This module requires Terraform 0.12 and Terraform Provider AliCloud 1.56.0+.

## Usage

```hcl
module "tensorflow"  {
  source  = "terraform-alicloud-modules/tensorflow/alicloud"
  region  = "cn-beijing"                
  instance_name               = "myTensorflow1"
  instance_password           = "YourPassword123"
  system_disk_category        = "cloud_efficiency"
  image_id                    = "ubuntu_18_04_x64_20G_alibase_20191225.vhd"
  instance_type               = "ecs.n4.small"
  security_groups             = ["sg-12345678"]
  vswitch_id                  = "vsw-fhuqiexxxxxxxxxxxx"
  internet_max_bandwidth_out  = 10
  system_disk_size            = 50
}
```

## Examples

* [complete](https://github.com/terraform-alicloud-modules/terraform-alicloud-ecs-instance/tree/master/examples/complete)

## Notes

* This module using AccessKey and SecretKey are from `profile` and `shared_credentials_file`.
If you have not set them yet, please install [aliyun-cli](https://github.com/aliyun/aliyun-cli#installation) and configure it.

Submit Issues
-------------
If you have any problems when using this module, please opening a [provider issue](https://github.com/terraform-providers/terraform-provider-alicloud/issues/new) and let us know.

**Note:** There does not recommend to open an issue on this repo.

Authors
-------
Created and maintained by He Guimin(@xiaozhu36, heguimin36@163.com) and Yi Jincheng(yi785301535@163.com) 

License
----
Apache 2 Licensed. See LICENSE for full details.

Reference
---------
* [Terraform-Provider-Alicloud Github](https://github.com/terraform-providers/terraform-provider-alicloud)
* [Terraform-Provider-Alicloud Release](https://releases.hashicorp.com/terraform-provider-alicloud/)
* [Terraform-Provider-Alicloud Docs](https://www.terraform.io/docs/providers/alicloud/index.html)

