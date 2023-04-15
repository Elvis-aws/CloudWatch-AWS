****
Logs
****
    - You can use Amazon CloudWatch Logs to monitor, store, and access your log files from Amazon
      Elastic Compute Cloud (Amazon EC2) instances, AWS CloudTrail, Route 53, and other sources
    - Keeps and manages your logs in a central position
    - You can filter them based on specific fields
    - Logs are ordered by time stamp
    - Log Groups
        - A group of log streams
        > Log streams
            - A sequence of log events that are from the same source
            > Log Lines
                - Lines of logs
************************
CloudWatch log retention
************************
    - logs are kept indefinitely and never expire
    - You can adjust the retention policy for each log group, keeping the indefinite retention, or
      choosing a retention period between 10 years and one day
    - The CloudWatch Logs log retention feature deletes the log events in a stream based on
      retention policy. It doesnt delete log streams or log groups


