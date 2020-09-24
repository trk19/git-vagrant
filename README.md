# Prerequisites
 - [vagrant](https://www.vagrantup.com/)  
 - [virtualbox](https://www.virtualbox.org/) 

# Creation of git server

By running `vagrant up`  command :

- a Git server will be automatically installed .
- a remote git repo is prepared in the folder `/project1.git` situed in the following hierarchy
```
home
└───git
    └───projects
	    └───project1.git

```
# How it works 

To try your git server , do the following :

- run `vagrant ssh` to enter to your git server .
- run `ip add show` and retrieve the server IP address .
- generate an SSH key pair from your host machine 
- copy the public key to the git server using `ssh-copy-id -i[path_to_public_key] git@IP_ADDRESS_OF_YOUR_GIT_SERVER`

**PS** : "git" is the password of the user **git** on the git-server-machine .

**PS** : if there is any error while copying ssh key to remote machine , don't forget to turn `PasswordAuthentication` to  `yes` in the git-server-machine via the file `/etc/ssh/sshd_config` then reload `sshd.service` by running the command `systemctl reload sshd.service` 

- go to the local git repo on your host machine 
- run the command `git remote add origin git@IP_ADDRESS_OF_YOUR_GIT_SERVER:/home/git/projects/project1.git` to link your local repo to the remote repo 
- run `git push origin [branch]` to push your changes on the git-server 
- to clone the repo use the command `git clone git@IP_ADDRESS_OF_YOUR_GIT_SERVER:/home/git/projects/project1.git`
