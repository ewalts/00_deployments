# 00_deployments
Code Samples - Infrastructure and Application Deployments
Most of these leverage AWS for infrastructure.  The OS configuration scripts, with a few exceptions, won't care where.  Check for lambda or s3 references on those plays. I'll try to update README information on each that leverage other parts of AWS during the configuration.  But each could be altered to provide the information I'm retrieving from other places.

 if you're interested in others I've got more just not in this public repository.

- Many of these are presented here as stand-alone deployments.
- I created them to be easily integrated using a master vars file. Many of these master vars files are named asg_vars.yml, some I renamed.   
- In many cases you won't use all available variables.  
- In production I like to completely remove, or at least separate, the unused variables and comment them out.     
- One of my earlier variable management script tools, would comment all the current values while defining the new values.  You may see some vars_files like these.

Check out my ansible repository for more goodies and on-off plays.

In some cases, I like to wrap scripts around deployments.  I find it provides agile flexibility.  If you see any that look like the vars_files are variables themselves, there is likely a script that executes the playbook, or generates a deployment from those files as templates.  If you don't see the script, feel free to message me. Or if you would like me to assist with the creation of your own deployment.  I'm happy to help out when I'm not too busy.

Aloha

