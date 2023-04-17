

****************
Composite Alarms
****************
    - Composite alarms determine their states by monitoring the states of other alarms. You can use composite alarms
      to reduce alarm noise. For example, you can create a composite alarm where the underlying metric alarms go into
      ALARM when they meet specific conditions. You then can set up your composite alarm to go into ALARM and send you
      notifications when the underlying metric alarms go into ALARM by configuring the underlying metric alarms never
      to take actions
    - All underlying alarms must be in the same region and account
    - Rule expression must not exceed 100 child alarms
    -


****
Link
****
    - https://www.youtube.com/watch?v=5QK3FB1EsV0&list=PL9nWRykSBSFir2FLla2thQkEwmLpxPega&index=7