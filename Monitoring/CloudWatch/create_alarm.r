

*****************
Creating an Alarm
*****************
        - Select Alarm and create
        - Select metric (This gives you the option to select the AWS resource you want to create the alarm)
        - If you select a Lambda function, it gives you a set of metrics you can use as below;
            - Errors
            - Concurrent Executions
            - Invocations
            - Duration
            - Throttles
        - If you select Graph metrics, you have the option of configuring the metrics based on Statistics and time
          period. The min and max time period to select is between 10 seconds to 1 day. Then click on select metrics
            - Average
            - Min
            - Max
            - Sum (This is the best to select)
            - Sample count
        - You can either use Static (Use a value as a threshold) or Anomaly detection (Use a band as a threshold)
        - You can use a number of conditions to set the threshold. For example if we selected Sum and 1 min interval,
          then we can say, raise an alarm if the sum of the number of errors is greater/equal to the threshold number
          in a certain period which is 1 min.
          In the case of lower/equal, we can use this in auto-scaling for example if the CPU Utilization of an EC2
          instance is lower than the threshold, remove some instances or scale down and vice-versa.
            - Greater
            - Greater/Equal
            - Lower/Equal
            - Lower
        - Set period to 1 minute and threshold to 5 (This always has to be configured before we can set additional
          configuration)
        - Additional configuration
            - Time period and Data points
                - If we have data point and time period of 1:1, this implies we are going to evaluate our alarm
                  every 1 minute for 5 errors
                - If we change the configuration to 3:5, then this implies there shall be an evaluation of 5 minutes
                  behind (lets say we are at the 7 th minute, then we shall evaluate from 3-7 minutes back). Remember
                  we set our threshold to 5 errors. Now looking at data points, if we have 1 data point set, the alarm
                  will only be in alarm state if we have 1 error above the number of threshold errors which is 5. This
                  helps to reduce noise. If we have 3 data points set, then the alarm with be in alarm state if we have
                  3 errors above the threshold of 5 in the interval of 3-7 minutes.
        - Treating missing data is very important to be configured. This is because there might be situations were the
          service is not being triggered, in this case, treating missing data as missing might keep the alarm in alarm
          state. What we want to do is treat missing data as good so it does not impact the alarm. This is because it
          treats missing data as below the threshold
            - Missing data points are treated as "good" and within the threshold: notBreaching
            - Missing data points are treated as "bad" and breaching the threshold: breaching
            - Missing data as ignore: The current alarm state is maintained
            - Missing data as missing: The alarm transitions to INSUFFICIENT_DATA
        - Notification in alarm state lets you set how you want to be notified when in alarm. SNS is the defined way
          of getting notification when in alarm state. You can add notifications for OK and INSUFFICIENT_DATA.
