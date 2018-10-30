# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

#Update dotfiles
cd ~
git remote get-url nopasswd 2>&1 >/dev/null
if [ $? -ne 0 ]; then
	git remote add nopasswd https://github.com/techwolfy/dotfiles.git
fi
LASTUPDATE=$(cat .dotfile_version)
NOW=$(date +%s)
if [ $(expr $NOW - $LASTUPDATE) -gt 3600 ]; then
	(git pull --quiet nopasswd master &)
fi
echo $NOW > .dotfile_version
unset LASTUPDATE
unset NOW
