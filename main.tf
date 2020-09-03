provider "aws" {
  region = "us-east-2"
}

 resource "aws_security_group" "instance" {
  name = "instance"
   ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

    ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

}

resource "aws_launch_configuration" "example" {
  image_id        = "ami-0c55b159cbfafe1f0"
  instance_type   = "t2.micro"
  security_groups = ["${aws_security_group.instance.id}"]
  spot_price = "0.04500"

lifecycle {
    create_before_destroy = true
  }
}

resource "aws_autoscaling_group" "example" {
 	 launch_configuration = aws_launch_configuration.example.id  
  	 min_size = 1
  	 desired_capacity = 2
  	 max_size = 3  
  	 
#launch_configuration = "${aws_launch_configuration.example.name}"
 availability_zones = ["us-east-2a"] 
  
  
 lifecycle {
    create_before_destroy = true
  } 
  
  
  tag {
    key                 = "Name"
    value               = "terraform-asg-example"
    propagate_at_launch = true
  }
}















