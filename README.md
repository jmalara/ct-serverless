# Serverless example for CT
This code deploys an example serverless configuration.  I know, you asked for EC2 but I threw this one in as a bonus because I kind of love Serverless.

# Requirements
1. Node must be installed, I didnt want to auto install Node in case you have any dependency issues on older Nodejs versions and have you hate me later. https://nodejs.org/en/download/
2. AWS CLI
3. Access Key and Secret key for an administrator setup in your aws credential file under the default profile

# Usage
1. Clone the repository
2. CD into the repository directory
3. Run ./create.sh
4. Wait for stack to complete and it will spit out the API Gateway URL
5. Profit
