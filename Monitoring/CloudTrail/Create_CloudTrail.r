
*******************************************
# Analysing Cloud Trail Using S3 and Athena
*******************************************
(1) Create a trail
(2) Go to Event History and Create an Amazon Athena Table
(3) Select S3 bucket
(4) Configure CloudWatchLogs
(5) Select Event Type
    - Management events: Capture management operations performed on your AWS resources
    - Data events: Log the resource operations performed on or within a resource
    - Insights events: Identify unusual activity, errors, or user behavior in your account
(6) Navigate to Athena Console
(7) Click on Query editor
(8) Go to Edit Settings and select S3 bucket to query from
(9) Select Athena table and add in your query
############################
    SELECT
     useridentity.arn,
     eventname,
     sourceipaddress,
     eventtime
    FROM cloudtrail_logs_aws_cloudtrail_logs_934433842270_dc3e0a29
    LIMIT 100;

    SELECT
    awsregion,
    replace(unnested.resources_entry.ARN,'arn:aws:s3:::') as deleted_bucket,
    eventtime AS time_deleted,
    useridentity.username,
    unnested.resources_entry.accountid as bucket_acct_id
    FROM cloudtrail_logs_aws_cloudtrail_logs_elvis t
    CROSS JOIN UNNEST(t.resources) unnested (resources_entry)
    WHERE eventname = 'DeleteBucket'
    ORDER BY eventtime
############################