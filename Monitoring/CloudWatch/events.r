


*****************
CloudWatch Events
*****************
    - Amazon EventBridge is the preferred way to manage your events
    - Amazon CloudWatch Events delivers a near real-time stream of system events that describe changes 
      in Amazon Web Services (AWS) resources
    - Using simple rules that you can quickly set up, you can match events and route them to one or 
      more target functions or streams
    - CloudWatch Events becomes aware of operational changes as they occur
    - CloudWatch Events responds to these operational changes and takes corrective action as necessary, 
      by sending messages to respond to the environment, activating functions, making changes, and 
      capturing state information
    *************************************
    Targets for CloudWatch Events include
    *************************************
        - Amazon EC2 instances
        - AWS Lambda functions
        - Streams in Amazon Kinesis Data Streams
        - Delivery streams in Amazon Kinesis Data Firehose
        - Log groups in Amazon CloudWatch Logs
        - Amazon ECS tasks
        - Systems Manager Run Command
        - Systems Manager Automation
        - AWS Batch jobs
        - Step Functions state machines
        - Pipelines in CodePipeline
        - CodeBuild projects
        - Amazon Inspector assessment templates
        - Amazon SNS topics
        - Amazon SQS queues
        ****************
        Built-in targets
        **************** 
        - EC2 CreateSnapshot API call
        - EC2 RebootInstances API call
        - EC2 StopInstances API call
        - EC2 TerminateInstances API call