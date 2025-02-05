provider "aws" {
  region = "us-east-1"
}

import {
  to = aws_instance.web
  id = "i-0c323678f8061b8ca"
}
