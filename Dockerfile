FROM ubuntu
ADD https://www.atlassian.com/software/jira/downloads/binary/atlassian-jira-core-7.3.6-x64.bin response.varfile /
#RUN /atlassian-jira-core-7.3.6-x64.bin -q /response.varfile
RUN chmod +x /atlassian-jira-core-7.3.6-x64.bin
RUN yes '' | /atlassian-jira-core-7.3.6-x64.bin && usermod -u 1001 jira && groupmod -g 1001 jira && chown -R --from=1000:1000 1001:1001 / || chown -R --from=1000 1001 / || true
EXPOSE 8080 8005
CMD service jira start && tail -f /var/atlassian/application-data/jira/log/atlassian-jira.log
