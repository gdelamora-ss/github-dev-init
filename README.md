# GitHub Dev Init

Mission statement

# Dependencies

* macOS -or- apt-based linux (debian, ubuntu, etc)
* bash
* curl
* tar

# Install

## Step 1: Download Scripts

    mkdir -p ~/dev-init && curl -SsL git.io/JSSVe | tar xz --strip-components=1 -C ~/dev-init

## Step 2: Install Deps

    ~/dev-init/install.sh

## Step 3: Configuration

Fill in env file
Provide a repository list

## Step 4: Now clone stuff

Nah, just use the same install.sh, detect if files are present. prompt for them if not, and use them if so

