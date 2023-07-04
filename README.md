# Hello Aurora Labs!       

The script "start_system.sh" on the root level will create a Jenkins server with python_ssh_node connnected to master, both running in container. There are 2 jobs in this Jenkins:
1.	DevOps-is-great - this is a job that runs the python script.
2.	Trigger-pull-requests - this job pulls GitHub to check if there is a merge pull request. If so, the job will trigger "DevOps-is-great" and print "DevOps is great", It looks more of an elegant and generic solution to separate between the "pull-job" to the "do-something" job, therefore there are 2 Jenkins files, but I also can do it with only one. (assuming that the list of files in the home assignment in not about to limit me to only one Jenkins file)

Please note that this script creates one folder outside the repository scope. (One level up ../) so it's better to create a new folder and clone this repository to this folder.

Also: I separate the "Jenkins system and configuration files" to the different Git repository, to make it easy to maintain, and save storage space in jobs workspace, (it also was much more convenience for me to work on this assignment with separated repositories).
I assume that you want to test me about creating "mini CI" system to check monitoring and trigger Jenkins when code change etc... In this home assignment I understand that the "pull requests" is on the same repository of the Jenkins server so I monitored and triggered the same Jenkins repository, but of course we can monitor any other Git repository we want.

## How to run it.

Run "sh start_system. sh" and you ready to go,
You may need sudo permission.

jenkins user/pswd
admin/51a1e647ef094490b850687ddb15c03a  (in deployment it will be secret ... :) )



Thanks!

change
Benny
