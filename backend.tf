# terraform {  
#     backend "s3" {
#         bucket         = "$(BackendBucketName)"    # the name of the S3 bucket that was created
#         encrypt        = true
#         key            = "$(PathToTFStateFile)"    # the path to the terraform.tfstate file stored inside the bucket
#         region         = "$(BucketRegion)"         # the location of the bucket
#         dynamodb_table = "$(BackendLockTableName)" # the name of the table to store the lock
#     }
# }


terraform {  
    backend "s3" {
        bucket         = "aws-s3-bucket-test-state"    # the name of the S3 bucket that was created
        encrypt        = true
        key            = "terraform.tfstate"    # the path to the terraform.tfstate file stored inside the bucket
        region         = "us-east-1"         # the location of the bucket
        dynamodb_table = "aws-locks" # the name of the table to store the lock
    }
}