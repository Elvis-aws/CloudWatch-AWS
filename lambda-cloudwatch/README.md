# AWS Lambda to AWS CloudWatch

This SAM template deploys a Lambda function that inserts custom metric data into AWS Cloudwatch. 
The AWS SAM template deploys the resources and the IAM permissions required to run the application.

## Deployment Instructions

1. Change directory to the pattern directory:
    ```
    cd lambda-cloudwatch
    ```
1. From the command line, use AWS SAM to deploy the AWS resources for the pattern as specified in the template.yml file:
    ```
    sam deploy --guided
    ```
1. During the prompts:
    * Enter a stack name
    * Enter the desired AWS Region
    * Allow SAM CLI to create IAM roles with the required permissions.

## How it works

The Lambda function takes values from the invocation event and inserts them as custom metric data in AWS Cloudwatch.

Event will pass the following:
* type - Data type you want to insert as a custom metric (JSON data type: string)
* value - Data value (JSON data type: number)

## Testing

1. You can test the solution by accessing the Lambda console, finding the Lambda function, and clicking Test in the 
   Code Source section.

2. Create a new test event and supply the example event.

Example Event
```
{
  "type": "1",
  "value": 1
}
```

3. After invoking the function with the test event, verify metric data in the Cloudwatch console through 
   Metrics -> All Metrics -> Custom Namespaces -> ExampleNamespace.

## Cleanup
 
1. Delete the stack
    ```bash
    aws cloudformation delete-stack --stack-name STACK_NAME
    ```
1. Confirm the stack has been deleted
    ```bash
    aws cloudformation list-stacks --query "StackSummaries[?contains(StackName,'STACK_NAME')].StackStatus"
    ```
----
Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.

SPDX-License-Identifier: MIT-0
