# CloudFormation Exercise 3:

Typing the whole bucket name is actually quite some work, you only want your name to be the parameter right?
Try to create the bucket:
`aws-devops-session-2-<YOUR_NAME>-ex3`, by using only your name as the input parameter.

You should be able to run with something like
`aws cloudformation deploy --stack-name exercise3 --template-file mytemplate.json --parameter-overrides MyName=MY_NAME`

Take a loot at the `Join` function that CloudFormation provides: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-join.html

You can check whether your solution is correct by checking the AWS console to see if your bucket was created.