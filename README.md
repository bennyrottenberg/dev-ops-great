Hello Aurora Labs!


the script "start_system.sh" on the root level will create a jenkins server with python_ssh_node connnected to master, both runing in container.
There is 2 jobs in this Jenkins:
1. DevOps-is-great - this is a job that run the python script.
2. trigger-pull-requests - this job pull github to check if there is a merge pull request.
if so, the job will trigger "DevOps-is-great" and print "DevOps is great" :).

Run "sh start_system. sh" and you ready to go.
You may need sudo permission.

jenkins user/pswd
admin/51a1e647ef094490b850687ddb15c03a  (in deployment it will be secret ... :) )

notes:
I separate the "Jenkins system and configuration files" to the different git repository, to make it easy to maintain,
it also was mach more convenience for me to work with separate repositories.

I assume that you want to test me about creating "mini chi" system to check monitoring and trigger Jenkins when code change etc...
In this home assignment the I understand that the "pull requests" is on the same repository of the Jenkins server,
So I monitor and trigger the same Jenkins repository, but of course we can monitor any other git repository that we want.

thanks!

