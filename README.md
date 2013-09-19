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

2. Add the publickey name in `~/.ssh/config` file like this:

        Host bitbucket.org
          IdentityFile ~/.ssh/mybitbucketpubkeyfile # the leading space is important!

Note: For Windows, you must run Pageant (included in Putty) as the SSH key manager.
Pageant runs in the system tray and is called whenever an SSH key is needed by your programs.

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
