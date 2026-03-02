#EC2

resource "aws_instance" "my_ec2" {                  #my_ec2 is a local name used to call inside the codefile
  ami           = "ami-051a31ab2f4d498f5"
  instance_type = "t3.micro"
  tags = {
    Name = "project_instance"                       #project instance is the actual name displayed in console.
  }
}


#S3


resource "aws_s3_bucket" "my_bucket" {
  bucket = "project-bucket-4567876545689"

  tags = {
    Name = "project-s3-bucket"
  }
}


#IAM GROUP WITH EC2 ACCESS

resource "aws_iam_group" "ec2_group" {
  name = "project_group"
}

resource "aws_iam_group_policy_attachment" "ec2_policy" {
  group      = aws_iam_group.ec2_group.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
}


#USER creation

resource "aws_iam_user" "my_user" {
  name = "project_user"

  tags = {
    Name = "terraform-iam-user"
  }
}



#ADD USER TO GROUP

resource "aws_iam_user_group_membership" "user_group" {
  user = aws_iam_user.my_user.name
  groups = [
    aws_iam_group.ec2_group.name
  ]
}