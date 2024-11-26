#!/bin/bash

# Load utility functions
source ./scripts/utils.sh

# Check if git is installed
if ! command_exists git; then
    print_error "Git is not installed. Please install Git and run this script again."
    exit 1
fi

# Prompt the user for their email and username
read -p "Enter your Git email: " git_email
read -p "Enter your Git username: " git_username

# Configure git with the provided email and username
git config --global user.email "$git_email"
git config --global user.name "$git_username"

# Add git aliases
git config --global alias.st "status"
git config --global alias.co "checkout"
git config --global alias.br "branch"
git config --global alias.sw "switch"

git config --global alias.c "commit"
git config --global alias.cm "commit -m"
git config --global alias.clo "clone"
git config --global alias.chp "cherry-pick"
git config --global alias.chpa "cherry-pick --abort"
git config --global alias.chpc "cherry-pick --continue"

git config --global alias.d "diff"
git config --global alias.dc "diff --cached"
git config --global alias.dh "diff --histogram"

git config --global alias.f "fetch"
git config --global alias.fa "fetch --all"
git config --global alias.fap "fetch --all --prune"

git config --global alias.i "init"

git config --global alias.lo "log --graph --oneline --decorate"
git config --global alias.loa "log --graph --oneline --decorate --all"

git config --global alias.me "merge"
git config --global alias.mea "merge --abort"
git config --global alias.mec "merge --continue"

git config --global alias.pl "pull"
git config --global alias.ps "push"
git config --global alias.psf "push --force"
git config --global alias.psu "push -u"

git config --global alias.reb "rebase"
git config --global alias.rebi "rebase -i"
git config --global alias.rebc "rebase --continue"
git config --global alias.reba "rebase --abort"

git config --global alias.res "reset"
git config --global alias.resh "reset --hard"
git config --global alias.ress "reset --soft"

git config --global alias.rev "revert"
git config --global alias.reva "revert --abort"
git config --global alias.revc "revert --continue"

git config --global alias.sth "stash"
git config --global alias.sthl "stash list"
git config --global alias.sthp "stash pop"
git config --global alias.sths "stash show -p"
git config --global alias.stt "status"

# Set the default branch name to main
git config --global init.defaultBranch main

# Set colorization of git output
git config --global color.ui true

# Set the default text editor to nano
git config --global core.editor "nano"

# SSH setup
mkdir .ssh/
ssh-keygen -t rsa -b 4096 -C "$git_email"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
echo "Your SSH public key is:"
cat ~/.ssh/id_rsa.pub

# Verify the configuration
git config --global --list
