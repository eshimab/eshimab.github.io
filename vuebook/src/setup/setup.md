




# A Semi-Integrated Development Environment



## Programs to install

1. On Laptop (referred to as `localhost`  or local machine )
    1. Visual Studio Code
        - Primary Text Editor
    2. Homebrew Package Manager CLI (“Command Line Interface” ie Terminal on macOS)
        - For installing other CLI tools
    3. Git CLI
    4. Apple XCode CLI 
    5. MkDocs for creating the documentation HTML
        1. Install MkDocs
        2. Create Python3 Virtual Machine (virtual environment or `venv`) for MkDocs
2. On iPhone if desired
    1. GitHub App
        - Mildly Useful 
        - Free
    2. Working Copy App
        - Interface with GitHub and edit text
        - Con: Requires one-time $25 to `push` files, syncing them with the GitHub Repository (which is like, half the reason to use the app. Kinda lame but whatever).
    2. iA Writer
        - An even more ridiculously priced app for editing text. It’s now $50 for the iPhone version, with separate pricing for the MacOS Version.

---

# Local Machine Setup

## Install Visual Studio Code (VS Code, VSC, or just VS)

1. Install VSC from website
2. Install Must-have Extensions:
    - Markdown All-in-One
3. Configure `settings.json` if desired
    1. Editor Tab Sizes
4. Next

## Install Homebrew CLI

1. Open Terminal
2. Check local Homebrew Installation
    ```bash
    which brew
    ```
3. If output of `which brew` shows:
    ```bash
    /usr/local/bin/brew
    ``` 
    1. Uninstall the old “Intel Based” Homebrew version which is located in `/usr/local/bin/brew` 
    2. Enter the following command into Terminal to uninstall the old Homebrew version
        ```bash
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/uninstall.sh)"
        ```
4. If output of `which brew` is empty or does not show `/opt/local/bin/brew` 
    1. Install Homebrew using the Terminal Command:
        ```bash
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
        ```
5. Check for installation by using the `which brew` command again. 
    1. Add the new Homebrew installation to the default path every time the Terminal shell opens
        - Create the text file `~/.bash_profile`. You can do this in Terminal with command `touch`
        - `touch ~/.bash_profile`
    2. Use the shell command `export ` to set the variable `PATH` to (`=`) the previous `PATH` variable (called using the `$` symbol) with the new path directory `/opt/local/bin`, separated by the `:` symbol. 
        1. Open `~/.bash_profile` to edit it. You can do this in Terminal with `nano`
            - `nano` 
        2. Add the following line to `~/.bash_profile`
            - `export PATH="/opt/homebrew/bin:$PATH"`
            - We are prepending the new path `/opt/homebrew/bin` so that it is used before the `/usr/local/bin` where the old Homebrew installation is.
        3. Write and Save the file with a `nano` 
            - Write-Out with `CTRL + O` and then To File with `CTRL + T`
            - Exit `nano` with `CTRL + X` if needed
        4. You may use `zsh` as the default shell on macOS. Add the export command to the `zsh` equivalent of `~/.bash_profile`
            1. `touch ~/.zshenv` 
            2. `nano ~/.zshenv` 
            3. Add line: `export PATH="/opt/homebrew/bin:$PATH"`
            4. Save the file and exit `nano`
    3. Verify the `brew` command works using `which brew` command. 
        - The return should now be `/opt/homebrew/bin/brew`

## Install Additional CLI using Homebrew

### Install `npm`

#### Installation error regarding old versions of `npm`

```bash
localdevice:~ username$ npm install vue
npm ERR! code EACCES
npm ERR! syscall mkdir
npm ERR! path /Users/username/.npm/_cacache/index-v5/33/bd
npm ERR! errno EACCES
npm ERR! 
npm ERR! Your cache folder contains root-owned files, due to a bug in
npm ERR! previous versions of npm which has since been addressed.
npm ERR! 
npm ERR! To permanently fix this problem, please run:
npm ERR!   sudo chown -R 501:20 "/Users/username/.npm"
```

So run that `sudo` command and enter password
```bash
sudo chown -R 501:20 "/Users/username/.npm"
```

### Install Git CLI

1. Use Homebrew to install the git CLI
    ```bash
    brew install git
    ```

## Install XCode CLI

1. The first time you run the `git` command, you may be prompted to install the Apple XCode Command Line Tools. Do so.

## Install CLI tool `tree`

1. Prints a visual representation of a filetree from the command line
    ```bash
    # Use homebrew to install tree
    brew install tree
    ```

---

# Setup Local Git 

## Create Local Directory

We will mirror the installation on my MacBook.

1. In Terminal, move to your Home directory, using the `cd` (Change Directory) command. Your Home Directory is located at `/Users/username` where `username` is the login on your laptop. For example, my `username` is `eshim` and my Home Directory is `/Users/eshim`. In Terminal on MacOS, the tilde `~` is used in filepaths as a shorthand for the user’s Home Directory. So on my machine, `/Users/eshim/Downloads` and `~/Downloads` are the same thing.
```bash
cd ~
```
1. Create the directory `scidev` in your Home Directory using the `mkdir` (Make Directory) command. We will use `scidev` to house the local Git Branch. After making `scidev`, `cd` into that directory 
```bash
mkdir ~/scidev
cd ~/scidev
```
1. You can check what directory your in by using the `pwd` (Present Working Directory) command
```bash
pwd
```

## Setup Git and Checkout Branch `main` from GitHub Remote Repository

1. Using Terminal in the `scidev` directory, create a Git Remote Repository URL Alias. This is a nick-name for a Git Repository URL, in this case at GitHub. We will use the alias `scimain`.
2. Use the command `git` with the argument `remote`, to `add` a new Remote Repository URL Alias called `scimain` which links to the GitHub Repository with the URL ‌`https://github.com/eshimab/scidev` 
```bash
git remote add scimain https://github.com/eshimab/scidev
```
3. Still working in `~/scidev` directory in Terminal, create the local copy of the GitHub Repository Branch `main`. We do this by using the command `git` with argument `checkout`, we specify we want a branch with the `-b` flag. We will name the branch `main` to match the Remote Repository which has the primary branch `main`. We could create a new branch here by using a new name instead of `main`. We specify the GitHub Repository using the alias `scimain` and denote the desired Branch of `scimain` with the `/main` notation.
```bash
cd ~/scidev
git checkout -b main scimain/main
```

---

# Setup MkDocs in a python3 virtual environment 

## Create a python3 virtual environment (`venv`) to run Mkdocs

1. Using Terminal, go to the primary directory `~/scidev`
```bash
cd ~/scidev
```
2. Create the `python3` `venv` (the full filepath will be `/Users/username/scidev/envsdir/mdocs`)
```bash
# Create the python3 venv
python3 -m venv envsdir/mdocs
```
3. Activate the `venv` with `source` command 
```bash 
source ~/scidev/envsdir/mdocs/bin/activate
``` 
4. When the `venv` is active, the prompt (text to the left of where you enter commands) will change, showing your active virtual env `mdocs` in parentheses. Example:
    - To exit the `venv`, use the command `deactivate`. Don't do this yet.

        ```bash
        (mdocs) hostname:scidev username$ 
        ``` 

    - ok

5. ok

## Configure python3 `venv`

1. Working in the `venv` `mdocs`, go to the primary directory `scidev` (if not already there, remember you can check with command `pwd`)
2. The Python package manager is called `pip`. First, update `pip`:
    ```bash
    python3 -m pip install --upgrade pip
    ``` 
    - Technically, installing Python 3 packages is done with `pip3` instead of `pip`. Functionally it rarely matters.
3. Install the local Mkdocs package that was downloaded from the Mkdocs website. The absolute path to this file should be `/Users/username/scidev/assets/packages/mkdocs-1.4.3.tar.gz` but it is hosted on the GitHub repo.
    ```bash 
    python3 -m pip install "assets/packages/mkdocs-1.4.3.tar.gz"
    ```
4. Use `pip` to install the MkDocs plugins:
    1.  `img2fig` to allow for dynamic creation and referencing of figures.
    2.  `pygments` for syntax high-lighting in codeblocks
    ```bash
    pip3 install mkdocs-img2fig-plugin
    pip3 install pygments
    pip3 install mkdocs-material
    ```
5. 
    

---

