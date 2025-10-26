# CloudWatch Alert Setup
# Purpose: Set up CloudWatch alerts for AWS resources.
# Setup: Replace <SNS_TOPIC_ARN> and instance_id.

import boto3
cloudwatch = boto3.client('cloudwatch')

def create_cloudwatch_alarm(instance_id):
    cloudwatch.put_metric_alarm(
        AlarmName=f'CPU_Utilization_{instance_id}',
        MetricName='CPUUtilization',
        Namespace='AWS/EC2',
        Statistic='Average',
        Period=300,
        EvaluationPeriods=1,
        Threshold=70.0,
        ComparisonOperator='GreaterThanThreshold',
        AlarmActions=['<SNS_TOPIC_ARN>'],
        Dimensions=[{'Name': 'InstanceId', 'Value': instance_id}]
    )
    print(f"CloudWatch alarm created for {instance_id}")

create_cloudwatch_alarm('i-1234567890abcdef0')