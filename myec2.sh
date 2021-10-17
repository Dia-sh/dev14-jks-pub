#!/bin/bash
aws ec2 run-instances --image-id ami-02e136e904f3da870 --count 1 --instance-type t2.micro --key-name Dia --region us-east-1
