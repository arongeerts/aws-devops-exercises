# CloudFormation Exercise 2:

Next step: Create the same S3 bucket (make sure you delete your old one first), but put the bucket name as a parameter.

`aws-devops-session-2-<YOUR_NAME>-ex2`
Take a loot at the `!Ref` command that CloudFormation provides: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-ref.html

From here on, you are free to use JSON or YAML. You can convert between the two online: https://www.json2yaml.com/

You should be able to run the deployment using:
`aws cloudformation deploy --stack-name exercise2 --template-file mytemplate.json --parameter-overrides BucketName=aws-devops-session-2-<YOUR_NAME>-ex2`

You can check whether your solution is correct by checking the AWS console to see if your bucket was created.