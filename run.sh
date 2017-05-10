#!/bin/bash
docker run --name jira -p 8080:8080 -v /var/atlassian/application-data/jira:/var/atlassian/application-data/jira --restart=unless-stopped -d jira
