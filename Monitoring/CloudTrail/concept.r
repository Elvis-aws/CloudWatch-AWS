
**********
Cloudtrail
**********
    - It is an AWS service that helps you enable operational and risk auditing, governance, and compliance of 
      your AWS account 
    - Actions taken by a user, role, or an AWS service are recorded as events in CloudTrail
    - When activity occurs in your AWS account, that activity is recorded in a CloudTrail event
    - You can easily view recent events in the CloudTrail console by going to Event history
    - You can use CloudTrail to view, search, download, archive, analyze, and respond to account activity 
      across your AWS infrastructure
    - You can identify who or what took which action, what resources were acted upon, when the event occurred, 
      and other details to help you analyze and respond to activity in your AWS account
    - You can put logs from Cloudtrail into S3 and CloudWatch logs
    - Events are stored for 90 days
    - For longer retention, transfer them to S3 then use Athena to analyse the logs
