Hello Aurora Labs!


This script "start_system.sh" will create a jenkins server with python_ssh_node connnected to master, both runing in container.
There is 2 jobs in this Jenkins:
1. DevOps_is_great - this is a job that run the python script.
2. trigger-pull-requests - this job pull github to check if there is a pull request merge.
if so, this job will trigger "DevOps_is_great" and print "DevOps is great" :).






run "sh start_system.sh" and you ready to do
you may need sudo permission.

this file will 
