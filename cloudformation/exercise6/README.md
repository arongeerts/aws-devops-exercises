# CloudFormation Exercise 6:

### Assignment

Enough with the S3 buckets already, now let's create a real application!
If you can solve this one, it is fair to say that you master the basic skills in cloudformation
Your application consists of three resources
* An S3 bucket (again)
* An AWS Lambda Function running a Python 3.6 application
* An IAM role for your lambda function to use

The lambda function logic is quite simple, it will take its input and put it as a file on s3, the code for it is:
```python
import boto3
import os
import json
import datetime

def lambda_handler(event, context):
    key = datetime.datetime.now().strftime("%Y%m%d%H%M%S")
    boto3.client('s3').put_object(Bucket=os.environ['BUCKET_NAME'], Key=key, Body=json.dumps(event))
    return {
        "status": "done",
        "key": key
    }
```

### Useful tips

The easiest way to upload this code to your Lambda function is to embed it in the `Code` field:
https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-code.html.
Inline functions are only available in YAML templates, so it might be easier to do this exercise in YAML. You can also upload this code as a py file into an other S3 bucket and configure it from theree

As you can see in the code, the function makes use of an environment variable for the bucket name. This means that you will have to reference your created bucket in your lambda resource.

Your Lambda function will also require an IAM role. For simplicity, you can give it `s3:*` permissions. To make it more secure, try to reference the bucket name in the policy document.

Make sure the name of your bucket is `aws-devops-session-2-<YOUR_NAME>-ex6`

For creating IAM resources, add the `--capabilities CAPABILITY_IAM` flag to your `aws cloudformation deploy` command. This is a security measure.

### Testing

You can test if your solution is correct by runnnig:
`aws lambda invoke --function-name my-function --payload '{ "hello": "world" }' response.json`

This should result in a file being created in the S3 bucket.

### CloudFormation in action

Your app now has to upgrade to Python 3.7. Simply change the Python version in your CloudFormation template and run the same deploy command.
You'll notice that your function is modified.
