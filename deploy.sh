#!/bin/bash

STACK="read-dd-table-ui"

aws cloudformation deploy --template-file template.yaml --stack-name $STACK --capabilities CAPABILITY_IAM

aws cloudformation describe-stacks --stack-name $STACK  --query Stacks[].Outputs[].OutputValue[] --output text