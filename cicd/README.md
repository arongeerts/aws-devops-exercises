# CICD Exercise:

Copy the files in this folder into an AWS CodeCommit repo. 
Try to create a CodeBuild project that builds and pushes a Docker image into an ECR repository. 
This project should also run the unittest test cases.
These can be run using `python -m unittest`.

Now create a CodeDeploy project where you try to deploy this docker image to AWS ECS Fargate.

Finally, merge your two projects into one using AWS CodePipeline.
