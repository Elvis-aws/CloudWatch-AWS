# Amazon API Gateway to Amazon CloudWatch

This pattern creates an Amazon API Gateway with access logging to Amazon CloudWatch configured
## Deployment Instructions
1. Change directory to the pattern directory:
    ```
    cd apigw-cloudwatch
    ```
2. From the command line, use AWS SAM to deploy the AWS resources for the pattern as specified in the template.yml file:
    ```
    sam deploy --guided
    ```
3. During the prompts:
    * Enter a stack name
    * Enter the desired AWS Region
    * Allow SAM CLI to create IAM roles with the required permissions

## Testing

Deploy the application and then go to the output URL. Refresh the screen multiple times. Then go to Amazon CloudWatch 
and check the log group that is created. The name will be in the outputs. You will see something like:

```
{
    "requestId": "d14676c9-a4a3-46e0-9168-87ed1a429eb3",
    "waf-error": "-",
    "waf-status": "-",
    "waf-latency": "-",
    "waf-response": "-",
    "authenticate-error": "-",
    "authenticate-status": "-",
    "authenticate-latency": "-",
    "authorize-error": "-",
    "authorize-status": "-",
    "authorize-latency": "-",
    "integration-error": "-",
    "integration-status": "200",
    "integration-latency": "15",
    "integration-requestId": "55c51049-49c2-42f6-bb23-48e9595094da",
    "integration-integrationStatus": "200",
    "response-latency": "17",
    "status": "200"
}
```
## Cleanup
 
1. Delete the stack
    ```bash
    sam delete --stack-name STACK_NAME
    ```
2. Confirm the stack has been deleted
    ```bash
    aws cloudformation list-stacks --query "StackSummaries[?contains(StackName,'STACK_NAME')].StackStatus"
    ```