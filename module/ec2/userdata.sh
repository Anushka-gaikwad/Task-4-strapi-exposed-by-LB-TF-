user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install docker -y
              systemctl start docker
              systemctl enable docker
              docker run -d -p 1337:1337 strapi/strapi
              EOF
