FROM ubuntu
ADD atlassian-jira-core-7.3.6-x64.bin response.varfile /
#RUN /atlassian-jira-core-7.3.6-x64.bin -q /response.varfile
RUN yes '' | /atlassian-jira-core-7.3.6-x64.bin
EXPOSE 8080 8005
CMD service jira start && tail -f /var/atlassian/application-data/jira/log/atlassian-jira.log
