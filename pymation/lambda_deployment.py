# Automated Lambda Deployment
# Purpose: Automatically deploy updated Lambda functions.
# Setup: Package Lambda code as a .zip file and update function_name.

import boto3
lambda_client = boto3.client('lambda')

def deploy_lambda(function_name, zip_file_path):
    with open(zip_file_path, 'rb') as f:
        lambda_client.update_function_code(FunctionName=function_name, ZipFile=f.read())
    print(f"Lambda {function_name} updated successfully")

deploy_lambda('my-function', '/path/to/your/lambda.zip')