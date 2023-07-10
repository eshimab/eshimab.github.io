


### Starting directory structure.

```bash
# Define the core directory
dircore="/Users/eshim/scidev"
direnvs="${dircore}/envsdir"
dirmdoc="${direnvs}/mdocs"
dirasst="${dircore}/assets"
dirpckg="${dirasst}/packges"
filecore="corefile.md"
# Make Dirs
mkdir -p "$direnvs"
mkdir -p "$dirmdoc"
mkdir -p "$dirasst"
mkdir -p "$dirpckg"
```

Tips:
1. When doing the BASH variable assignment, the `=` symbol should not have spaces on either side.
2. (CB) In this code, the directories `direnvs` and `dirmdoc` are created using the `mkdir` command with the `-p` option. The `-p` option ensures that parent directories are created if they don't already exist. The variable values are correctly concatenated using the `${variable}` syntax.
3. Pick up the command line tool `tree` to visualize the directory structure: 
		```bash
			# Get the program homebrew
			/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
			# Use homebrew to install tree
			brew install tree
		```
 		

### Create a python3 virtual environment (`venv`) to run Mkdocs

```bash
# Create the python3 venv
python3 -m venv "${dirmdoc}"
# Activate the venv
source "${dirmdoc}/bin/activate"
# Go there
cd ${dircore}
```
Tips:
	1. Notice that the variable is wrapped in "" because the command input should be a string
	2. CB: By using the -m (there is no long-form version) flag followed by the module name (venv), you are instructing the Python interpreter to execute the venv module's script functionality. This allows you to create a virtual environment using the python3 -m venv command, without explicitly running a separate Python script or invoking a specific Python file.

Now we are working in the python3 environment where lines should be preceded by `(mdocs) hostname:scidev username$`
```python
# Upgrade pip so that it doesn't complain
python3 -m pip install --upgrade pip

# install the local Mkdocs package, version 1.4.3
python3 -m pip install "/Users/eshim/scidev/assets/packages/mkdocs-1.4.3.tar.gz"
```

Then create the MkDocs project directory in the python3 venv
```python
mkdocs new "/Users/eshim/scidev/notesite"
cd /Users/eshim/scidev/notesite
mkdocs serve
```
And you get output:
```
INFO     -  Building documentation...
INFO     -  Cleaning site directory
INFO     -  Documentation built in 0.06 seconds
INFO     -  [10:50:41] Watching paths for changes: 'docs', 'mkdocs.yml'
INFO     -  [10:50:41] Serving on http://127.0.0.1:8000/
```
It will serve on [Your local Macine](http://127.0.0.1:8000/)
Now leave this Terminal instance running and let it update the site in the background. I will call this the Mkdocs Server Terminal or similarly.

**Open a new terminal window**

Get an example page from Mkdocs and send it to the Mkdocs website directory `notesite`
```bash
curl 'https://jaspervdj.be/lorem-markdownum/markdown.txt' > /Users/eshim/scidev/notesite/docs/about.md
```

In the Mkdocs Server Terminal you will see an update as it adds the new webpage:
```
INFO     -  [11:36:50] Detected file changes
INFO     -  Building documentation...
INFO     -  Documentation built in 0.07 seconds
INFO     -  [11:36:50] Reloading browsers
INFO     -  [11:36:50] Browser connected: http://127.0.0.1:8000/
```

Edit the `mkdocs.yml` file in `~/scidev/notesite`
```yaml
site_name: Super Fun Digressions # site_name and site_url are the only required fields
site_url: https://example.com # https://example.com is a placeholder value
nav: 
    - Home: index.md
    - About: about.md
```


### Creating a shell script for displaying file trees

1. Open a terminal window.
2. Open your shell's configuration file using a text editor. For example:
		```bash
		nano ~/.bashrc
		```
3. Ok
4. Ok