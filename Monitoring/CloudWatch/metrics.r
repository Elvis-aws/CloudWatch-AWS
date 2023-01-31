


*******
Metrics
*******
    - Metrics are data about the performance of your systems
    - You can push a metrics in the past and future
    - Use the PutMetricData API to send metrics to CloudWatch
        - aws cloudwatch put-metric-data --metric-name PageViewCount --namespace MyService --statistic-values
          Sum=11,Minimum=2,Maximum=5,SampleCount=3 --timestamp 2016-10-14 T12:00:00.000 Z
    - Many services provide free metrics for resources 
    - You can also enable detailed monitoring for some resources, such as your Amazon EC2 instances, or 
    publish your own application metrics
    - Metric data is kept for 15 months, enabling you to view both up-to-the-minute data and historical 
    data
    ****************
    Basic monitoring
    ****************
        - Many AWS services offer basic monitoring by publishing a default set of metrics to CloudWatch 
          with no charge, basic monitoring is automatically enabled by default
    *******************
    Detailed monitoring
    *******************
        - Detailed monitoring is offered by only some services
        - Amazon EC2 detailed monitoring provides more frequent metrics, published at one-minute intervals, 
          instead of the five-minute intervals used in Amazon EC2 basic monitoring
        - Detailed monitoring for Amazon S3 and Amazon Managed Streaming for Apache Kafka means more fine-
          grained metrics
    ***************************
    CloudWatch Metrics Insights
    ***************************
        - CloudWatch Metrics Insights is a powerful high-performance SQL query engine that you can use to 
          query your metrics at scale
    **************
    Custom metrics
    **************
        - You can publish your own metrics to CloudWatch using the AWS CLI or an API
        ***********************
        High-resolution metrics
        ***********************
            - Metrics produced by AWS services are standard resolution by default
            - When you publish a custom metric, you can define it as either standard resolution or high 
              resolution
            - When you publish a high-resolution metric, CloudWatch stores it with a resolution of 1 second, 
              and you can read and retrieve it with a period of 1 second, 5 seconds, 10 seconds, 30 seconds, 
              or any multiple of 60 seconds
            - If you set an alarm on a high-resolution metric, you can specify a high-resolution alarm with 
              a period of 10 seconds or 30 seconds, or you can set a regular alarm with a period of any 
              multiple of 60 seconds