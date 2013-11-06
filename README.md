Using the .bash_profile and .bashrc files (~/.bash*)
----------------------------------------
* Mac OS X uses the `.bash_profile` file 
* Ubuntu uses `.bashrc` file (but the `.profile` is invoked first) 
* Windows Git Bash program uses `.bashrc` which should be located in your `c:\Users\Me\` folder. 


Using the .ssh config files (~/.ssh/config)
--------------------------
1. Generate public & private ssh keys:
          `ssh-keygen -t rsa`
    Type in a name which will be put in `~/.ssh` directory

2. To bypass password prompt, you should add the `foo.pub` file to the `authorized_keys` file on the
server's `~/.ssh` directory. You can do a pipe via ssh.
    
    `cat mykey.pub | ssh myuser@mysite.com -p 3222 'cat >> .ssh/authorized_keys' `

3. Add the publickey name in `~/.ssh/config` file like this:

        Host bitbucket.org
          IdentityFile ~/.ssh/mybitbucketpubkeyfile # the leading space is important!
          Port 1234

SSH and SFTP for Windows
-----------------------
For Windows, you can use either Putty or OpenSSH to do SSH and Git pushes.
If you're using Putty for SSH and SFTP, you must run Pageant (included in Putty) as the SSH key manager.
Pageant runs in the system tray and is called whenever an SSH key is needed by your system. 

If you're using OpenSSH (included when install Git for Windows) you must setup your ssh keys like
in Unix systems (see above instructions). You run OpenSSH in the Git Bash window.

For SFTP, I recommend using WinSCP because you can easy do file synchronizations as you edit your file on your local machine.

Possible problems from text files saved from Windows
----------------------------------------------------
If the dotfiles are giving you errors then you should install tofrodos:

```    
sudo apt-get install tofrodos
```
then convert your file from dos
```
fromdos myfile
```
