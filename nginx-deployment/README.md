# Deplying nginx via Ansible:
## step 1 : making the host and configuration file :
- I used the company vm for this matter.
- the ip is `192.168.30.94`.
- There is a group_vars folder for the variables related to the server.
## step 2 : defining the structure for the plays to be role based.
- one play book at the first level directory in order for ansible to gather facts then move on to the role based.
### Roles folder : 
- handlers: when there is no change -> don't do anything, only if there is change restart the service.
- tasks: main yaml file.
- files: included with the `index.html` file.
## step 3 : installing and enabling Nginx.
- nginx was installed via dnf mosule and set as systemd service and enabled.
- the `state : present ` represents that if there is no change (nginx is installed or enabled) dont do anythin.
## step 4 : Deplying custom html file.
- using copy module, I copied the index.html to nginx file root at ` /usr/share/nginx/html/index.html` which is for red hat based linuxes.
- giving the file `0644` permission for rw_r__r__.
- also added a notifier for this part in case the html changed so the nginx would restart.

# Challenges : 
I had a big problem with my local ansible since I couldnt get permission to do sudo on it and also I tested the company vm for remote method but I got problem with the python installed on the server and couldn't fix it .
so I wrote and run the ansible play book vis ssh on vm.

