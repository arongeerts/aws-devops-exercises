# CloudFormation Exercise 5:

You should know how to create a default bucket by now. What about spicing it up a little. Create a bucket that is configured for static website hosting, and return the website URL. Make sure that the index document is called `index.html`.
Try to create the bucket:
`aws-devops-session-2-<YOUR_NAME>-ex5`, by using only your name as the input parameter.

You should be able to run with something like
`aws cloudformation deploy --stack-name exercise5 --template-file mytemplate.json --parameter-overrides MyName=MY_NAME`

You can check whether your solution is correct by uploading the `index.html` file in your bucket and browsing to the URL that was returned.
Make sure you upload this file with public read access!