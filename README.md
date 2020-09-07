
# Welcome

![Bayport](/Bayport_Logo.png)

Welcome to Bayport's DevOps skills assessment.
Please fork this repository and answer any questions on this markdown document.

# Linux
* What is the command to list the contents of a direcory, line by line and ordered by size ascending in human readable format?
du -sh *
* How would you add a DNS server to a network interface in Linux?
vi /etc/network/interfaces
add the follwing line:
dns-nameservers <DNS configs> <dns configs> 
* If the DNS server you've just added is not reachable, how can you get any particular hostname to resolve locally? 
cat /etc/hosts
* How would you check for SELinux related errors?
tail -f /var/log/messages
tail -f var/log/audit/audit
* Write the commands to add 30GB disk space to a logical volume named "docker" that belongs to a logical group named "docker-group".
Add new physical disk. Boot.
 pvscan
 fdisk /dev/sdb
 pvcreate /dev/sdb1
 vgextend VolGroup00 /dev/sdb1
 pvscan
 lvextend -L+40G /dev/VolGroup00/docker

* In the root of this repository, create a Bash script called "listit.sh", when executed, this script must do the following (in order):
    * Create a file called directories.list that contains the directory names only of the current directory.
    * Add a line at the beginning of the directories.list file that reads "line one's line".
    * Output the first three lines of directories.list on the console.
    * Accept an integer parameter when executed and repeat the previous question's output x amount of times based on the parameter provided at execution.
* Commit and push your changes.

# Docker
* In the root of this repository, create a Dockerfile that is based on the latest mariadb image.
    * Expose port 3307.
    * Define an evironment variable called BRUCE with a value of WAYNE.
    * Run a command that will output the value from BRUCE into a file called BATCAVE in the root directory of the container. 
* Create a Bash script in the root of this repository called FLY.sh that will do the following:
    * Install Docker if it is not yet installed.
    * Ensure the installed version of Docker is the latest version available.
    * Start a container using the image you've craeted above with your Dockerfile - this container must run as follows:
        * It must be named ALFRED.
        * It must mount /var/lib/mysql to the host operating system to /var/lib/mysql.
        * It must mount /BATCAVE to the host operating system.
    * Checks whether a container exists called ALFRED and if it does, removes an recreates it.
    * Create a schema in the database called "wayneindustries" with one table in it called "fox" with columns "ID" and "Name".
    * Insert an entry with ID "50" and Name "BATMOBILE".
* Create an encrypted file called "secret" in the root of this repository that contains the root password of the database (the password must be "thisisadatabasepassword123456789!").
* Change your Bash script to start the conainer using the root password from the "secret" file.
* Commit and push your changes.

# General
* How would you ensure any change made to this Dockerfile is source controlled, approved, tested and deployed. Explain which tools you will use as if this was going into a production environment.
I would use a deployment pipeline which be made up of the following:
- Git Repo 
- Gerrir/Bit bucket for version control and approval. This is where a pull request will be logged and and need to be approved before being merged/deployed.
- A deployment tool to automate the deployment to the environment and run unit tests on the syntax to ensure the standard.
* Commit and push your changes.
