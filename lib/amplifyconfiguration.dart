const amplifyConfig = '''{
  "UserAgent": "@aws-amplify/client-config/1.0.4",
  "Version": "1.0",
  "auth": {
    "plugins": {
      "awsCognitoAuthPlugin": {
        "UserAgent": "@aws-amplify/client-config/1.0.4",
        "Version": "1.0",
        "CognitoUserPool": {
          "Default": {
            "PoolId": "us-east-1_4NoQrsS3d",
            "AppClientId": "pk42v0814eqhr7r9kp0rrmms6",
            "Region": "us-east-1"
          }
        },
        "CredentialsProvider": {
          "CognitoIdentity": {
            "Default": {
              "PoolId": "us-east-1:b1e12cf1-5489-4694-b7ee-7e28ec736816",
              "Region": "us-east-1"
            }
          }
        },
        "Auth": {
          "Default": {
            "authenticationFlowType": "USER_SRP_AUTH",
            "mfaConfiguration": "OFF",
            "mfaTypes": [],
            "passwordProtectionSettings": {
              "passwordPolicyMinLength": 8,
              "passwordPolicyCharacters": [
                "REQUIRES_NUMBERS",
                "REQUIRES_LOWERCASE",
                "REQUIRES_UPPERCASE",
                "REQUIRES_SYMBOLS"
              ]
            },
            "signupAttributes": [
              "EMAIL"
            ],
            "usernameAttributes": [
              "EMAIL"
            ],
            "verificationMechanisms": [
              "EMAIL"
            ]
          }
        },
        "AppSync": {
          "Default": {
            "ApiUrl": "https://3plshf6h2jd65lpvopbktval3y.appsync-api.us-east-1.amazonaws.com/graphql",
            "Region": "us-east-1",
            "AuthMode": "AMAZON_COGNITO_USER_POOLS",
            "ClientDatabasePrefix": "data_AMAZON_COGNITO_USER_POOLS"
          },
          "data_AWS_IAM": {
            "ApiUrl": "https://3plshf6h2jd65lpvopbktval3y.appsync-api.us-east-1.amazonaws.com/graphql",
            "Region": "us-east-1",
            "AuthMode": "AWS_IAM",
            "ClientDatabasePrefix": "data_AWS_IAM"
          }
        }
      }
    }
  },
  "api": {
    "plugins": {
      "awsAPIPlugin": {
        "data": {
          "endpointType": "GraphQL",
          "endpoint": "https://3plshf6h2jd65lpvopbktval3y.appsync-api.us-east-1.amazonaws.com/graphql",
          "region": "us-east-1",
          "authorizationType": "AMAZON_COGNITO_USER_POOLS"
        }
      }
    }
  }
}''';