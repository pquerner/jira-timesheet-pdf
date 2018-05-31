# open http://localhost:8080/worklog/P.Querner
docker build -t jira-timesheet-export .
docker run --env-file=env -it -p 8080:80 -v `pwd`:/code jira-timesheet-export python3 src/main.py
