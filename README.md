# Summary

This is an integration vagrant box for the weewikipaint project from http://www.letscodejavascript.com/.

## Prerequisites  
To use this repository, you need VirtualBox, ruby and bundler installed.
Before continuing, set the path to your weewikipaint repository in line
46 of the Vagrantfile.
You should also specify your node dependencies (as of part 4: Jake and
JSHint) in `package.json` of your weewikipaint project.

## Getting started
 * Install VirtualBox, ruby, and bundler
 * Clone this repository.
 * Change line 46 of the Vagrantfile to point to your (local copy of your) weewikipaint git
   repository.
 * Run `setup.sh`
 * Run `run_remote_integration.sh`

Whenever you want to run integration tests again, run
`run_remote_integration.sh` again, it will sync the git repository,
check for new node dependencies and install them and run the jakefile.

## Details

To set up the vm, run `setup.sh`. This will run bundler (to install
vagrant and librarian), add the default lucid32 image to vagrant, and
pull the chef cookbooks specified in Cheffile to the cookbooks directory.
Then it will provision the vm. Installed packages (above the default)
are built-essential, git, and nodejs (also, an apt-get update is
performed).
After this is done, the integration branch of weewikipaint repository is
cloned.
**Important:** The `Vagrantfile` shares the weewikipaint git repo in line 46, you probably
have to adapt your path. 
Node dependencies speccified in `package.json` are installed using npm i.

If you want to run the integration tests, just run
`run_remote_integration.sh`, this uses vagrant ssh to run the jakefile
(also, it ensures that the vm is up and provisioned). 

## Potential Pitfalls

 * You did not specify the path to your git repository in line 46 of
   Vagrantfile.
 * The address used by the host network adapter 192.168.33.10 is already
   in use. You can change this in line 32 of Vagrantfile.
 * I overlooked something else, so please feel free to just file an issue or submit a patch.
