resource "aws_instance" "i_009a81091ab8afdc4" {
  ami               = "ami-0022f774911c1d690"
  availability_zone = "us-east-1c"
  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_core_count       = 1
  cpu_threads_per_core = 1
  credit_specification {
    cpu_credits = "standard"
  }

  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t2.micro"
  key_name                             = "fidedavid"
  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = 1
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  private_ip = "172.31.90.146"
  root_block_device {
    delete_on_termination = true
    iops                  = 100
    volume_size           = 8
    volume_type           = "gp2"
  }

  source_dest_check      = true
  subnet_id              = "subnet-0c20a71640bcb8bc5"
  tenancy                = "default"
  vpc_security_group_ids = ["sg-0b5eda9dc89e70ced"]
}

