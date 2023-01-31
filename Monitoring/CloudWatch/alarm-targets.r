


******************************
Alarms have three main targets
******************************
    ***
    EC2
    ***
        - Stop
        - Terminate
        - Reboot or Recover
    ************
    Auto Scaling
    ************
        - In
        - out
    ***
    SNS
    ***
        - Send notifications

High resolution alarms can be triggered every 1 second with a 10 second interval
***************
set-alarm-state
***************
    - Temporarily sets the state of an alarm for testing purposes
    - When the updated state differs from the previous value, the action configured for the appropriate 
      state is invoked
    - For example, if your alarm is configured to send an Amazon SNS message when an alarm is triggered, 
      temporarily changing the alarm state to ALARM sends an SNS message
