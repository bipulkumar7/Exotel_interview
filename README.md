> STEP 1 : On teletype terminal put your given credential with export

```
	export AWS_ACCESS_KEY_ID= 
	export AWS_SECRET_ACCESS_KEY=
```

> STEP 2: Download the script 
  
>      mkdir -p Terraform; cd Terraform;  wget https://raw.githubusercontent.com/bipulkumar7/Exotel_interview/master/main.tf ; 


> STEP 3: terraform plan
  
```
	Refreshing Terraform state in-memory prior to plan...
	The refreshed state will be used to calculate this plan, but will not be
	persisted to local or remote state storage.
      # aws_autoscaling_group.example will be created
  + resource "aws_autoscaling_group" "example" {
      + arn                       = (known after apply)
      + availability_zones        = [
          + "us-east-2a",
        ]
      + default_cooldown          = (known after apply)
      + desired_capacity          = 2
      + force_delete              = false
      + health_check_grace_period = 300
      + health_check_type         = (known after apply)
      + id                        = (known after apply)
      + launch_configuration      = (known after apply)
      + max_size                  = 3
      + metrics_granularity       = "1Minute"
      + min_size                  = 1
      + name                      = (known after apply)
      + protect_from_scale_in     = false
      + service_linked_role_arn   = (known after apply)
      + vpc_zone_identifier       = (known after apply)
      + wait_for_capacity_timeout = "10m"

      + tag {
          + key                 = "Name"
          + propagate_at_launch = true
          + value               = "terraform-asg-example"
        }
    }

  # aws_launch_configuration.example will be created
  + resource "aws_launch_configuration" "example" {
      + arn                         = (known after apply)
      + associate_public_ip_address = false
      + ebs_optimized               = (known after apply)
      + enable_monitoring           = true
      + id                          = (known after apply)
      + image_id                    = "ami-0c55b159cbfafe1f0"
      + instance_type               = "t3a.micro"
      + key_name                    = (known after apply)
      + name                        = (known after apply)
      + security_groups             = (known after apply)
      + spot_price                  = "0.002800"

      + ebs_block_device {
          + delete_on_termination = (known after apply)
          + device_name           = (known after apply)
          + encrypted             = (known after apply)
          + iops                  = (known after apply)
          + no_device             = (known after apply)
          + snapshot_id           = (known after apply)
          + volume_size           = (known after apply)
          + volume_type           = (known after apply)
        }

      + root_block_device {
          + delete_on_termination = (known after apply)
          + encrypted             = (known after apply)
          + iops                  = (known after apply)
          + volume_size           = (known after apply)
          + volume_type           = (known after apply)
        }
    }

  # aws_security_group.instance will be created
  + resource "aws_security_group" "instance" {
      + arn                    = (known after apply)
      + description            = "Managed by Terraform"
      + egress                 = (known after apply)
      + id                     = (known after apply)
      + ingress                = [
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + description      = ""
              + from_port        = 443
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "tcp"
              + security_groups  = []
              + self             = false
              + to_port          = 443
            },
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + description      = ""
              + from_port        = 8080
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "tcp"
              + security_groups  = []
              + self             = false
              + to_port          = 8080
            },
        ]
      + name                   = "instance"
      + owner_id               = (known after apply)
      + revoke_rules_on_delete = false
      + vpc_id                 = (known after apply)
    }

Plan: 3 to add, 0 to change, 0 to destroy.

-----------------------------------------------------------------------
```

> STEP 4: terraform apply

```
    An execution plan has been generated and is shown below.
    Resource actions are indicated with the following symbols:
  + create
    Terraform will perform the following actions:

    # aws_autoscaling_group.example will be created
  + resource "aws_autoscaling_group" "example" {
      + arn                       = (known after apply)
      + availability_zones        = [
          + "us-east-2a",
        ]
      + default_cooldown          = (known after apply)
      + desired_capacity          = 2
      + force_delete              = false
      + health_check_grace_period = 300
      + health_check_type         = (known after apply)
      + id                        = (known after apply)
      + launch_configuration      = (known after apply)
      + max_size                  = 3
      + metrics_granularity       = "1Minute"
      + min_size                  = 1
      + name                      = (known after apply)
      + protect_from_scale_in     = false
      + service_linked_role_arn   = (known after apply)
      + vpc_zone_identifier       = (known after apply)
      + wait_for_capacity_timeout = "10m"

      + tag {
          + key                 = "Name"
          + propagate_at_launch = true
          + value               = "terraform-asg-example"
        }
    }

   # aws_launch_configuration.example will be created
   + resource "aws_launch_configuration" "example" {
      + arn                         = (known after apply)
      + associate_public_ip_address = false
      + ebs_optimized               = (known after apply)
      + enable_monitoring           = true
      + id                          = (known after apply)
      + image_id                    = "ami-0c55b159cbfafe1f0"
      + instance_type               = "t2.micro"
      + key_name                    = (known after apply)
      + name                        = (known after apply)
      + security_groups             = (known after apply)
      + spot_price                  = "0.002800"

      + ebs_block_device {
          + delete_on_termination = (known after apply)
          + device_name           = (known after apply)
          + encrypted             = (known after apply)
          + iops                  = (known after apply)
          + no_device             = (known after apply)
          + snapshot_id           = (known after apply)
          + volume_size           = (known after apply)
          + volume_type           = (known after apply)
        }

      + root_block_device {
          + delete_on_termination = (known after apply)
          + encrypted             = (known after apply)
          + iops                  = (known after apply)
          + volume_size           = (known after apply)
          + volume_type           = (known after apply)
        }
    }

  # aws_security_group.instance will be created
  + resource "aws_security_group" "instance" {
      + arn                    = (known after apply)
      + description            = "Managed by Terraform"
      + egress                 = (known after apply)
      + id                     = (known after apply)
      + ingress                = [
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + description      = ""
              + from_port        = 443
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "tcp"
              + security_groups  = []
              + self             = false
              + to_port          = 443
            },
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + description      = ""
              + from_port        = 8080
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "tcp"
Plan: 3 to add, 0 to change, 0 to destroy.
 



Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.



  Enter a value: yes

aws_security_group.instance: Creating...
aws_security_group.instance: Still creating... [10s elapsed]
aws_security_group.instance: Creation complete after 11s [id=sg-0f6d83e0cba5be34d]
aws_launch_configuration.example: Creating...
aws_launch_configuration.example: Creation complete after 6s [id=terraform-20200903151913082700000001]
aws_autoscaling_group.example: Creating...
aws_autoscaling_group.example: Still creating... [10s elapsed]
aws_autoscaling_group.example: Still creating... [20s elapsed]
aws_autoscaling_group.example: Still creating... [30s elapsed]
aws_autoscaling_group.example: Still creating... [40s elapsed]
aws_autoscaling_group.example: Still creating... [50s elapsed]
aws_autoscaling_group.example: Creation complete after 51s [id=tf-asg-20200903151916739600000002]

Apply complete! Resources: 3 added, 0 changed, 0 destroyed.
```

> Note: If your account is new and you have terminated your instances frequently then there might be chances of error of  Max Spot Instance count exceeded
