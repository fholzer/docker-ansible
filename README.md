# How to Use

* Run `make build` to build the ansible docker image.
* Run `make install` to install create the symlinks necessary to use it.

Running `make install` will create symlinks to run.sh in `~/bin` with below names. Make sure it is in your `$PATH`.

* ansible
* ansible-connection
* ansible-console
* ansible-doc
* ansible-galaxy
* ansible-playbook
* ansible-pull
* ansible-vault

At this point, each time you run one of above command, a new container is created, and destroyed immediately after the command exits.

## Security Disclaimer
The run.sh (and thus all the ansible related links created by `make install`) will:

* Mount `~/.ssh/known_hosts` inside the container. The file can be read and modified by the container.
* Forward your SSH Agent to the container. The container will have full access to your SSH Agent. This is so it can use your loaded keys to connect to servers.

If you don't want this, modify run.sh or don't use this image.
