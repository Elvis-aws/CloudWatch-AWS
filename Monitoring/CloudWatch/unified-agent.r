

************************
Unified CloudWatch agent
************************
    - Collect internal system-level metrics from Amazon EC2 instances across operating systems
    - Collect logs from Amazon EC2 instances and on-premises servers, running either Linux or Windows 
      Server
    - By default no logs from your EC2 instance will go to ClodWatch
    - You need to run a CloudWatch agent on EC2 to push the log files you want
    - Make sure IAM permissions are correct
    - This log agent can be set-up on-premise as well
    - The newer one is the Unified agent and can send both logs and events
    - Easy to configure using SSM Parameter store


