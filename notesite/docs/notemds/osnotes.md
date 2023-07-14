

# Terminal

## Use `ls -a` to see hidden folder and files that start with `.` 

```bash
# Short-form
ls -a
# Combine with -l
ls -al
```

Yes, the long form of the -a option in the ls command is --all. Both -a and --all have the same functionality of showing all files, including hidden ones.

Need to add `code`
```bash
nano ~/.bash_profile
```


## Working with BASH variables

### Bash Variable Example: Creating directories by defining variables:

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

### Bash Variable Example: Creating python3 `venv`

```bash
# Create the python3 venv
python3 -m venv "${dirmdoc}"
# Activate the venv
source "${dirmdoc}/bin/activate"
# Go there
cd ${dircore}
```

1. Notice that the variable `${dirmdoc}` is wrapped in `””` because the command `source` takes a string as input. Thus, `"${dirmdoc}"` returns the variable output as a string. In this case `"${dirmdoc}/bin/acticate"` appends the string stored in `${dirmdoc}` to `"/bin/activate"`
2. CB: By using the -m (there is no long-form version) flag followed by the module name (venv), you are instructing the Python interpreter to execute the venv module's script functionality. This allows you to create a virtual environment using the python3 -m venv command, without explicitly running a separate Python script or invoking a specific Python file.

---

# Creating a Cronjob for a Shell Script

1. Write `shell` script `~/scidev/heic2png.sh` for converting `~/Downloads/$filename.HEIC` to `~/screenshots/$filename.png`.
    ```bash
      #!/bin/bash
      # Specify the input directory containing HEIC files
      input_directory="/Users/eshim/Downloads"
      # Create an output directory for the converted PNG files
      output_directory="/Users/eshim/screenshots"
      # Convert HEIC files to PNG
      for file in "$input_directory"/*.HEIC; do
          filename=$(basename "$file")
          output_file="$output_directory/${filename%.*}.png"
          sips -s format png "$file" --out "$output_file"
      done
      echo "Conversion complete!"  
    ```
2. Make `~/scidev/heic2png.s` executable with command: `chmod +x ~/scidev/heic2png.sh`
3. Open the crontab in terminal with `crontab -e`  using the `-e` flag to denote we are editing the Crontab
4. Use `vim` to edit the crontab. You Start in Command Mode (see the `-- INSERT --`) at bottom of window

    ![Terminal-Based VIM Editor - Command Mode - Insert text](img/example-cron/crontabExample-vimEditorCommandMode.png)
5. Press `i` to enable text editing. Add the following line to the `crontab`
    ```bash
      * * * * * /bin/bash ~/scidev/heic2png.sh
    ``` 
    1. This tells to cronjob to run every minute
6. Exit the Text Insertion Mode by pressing `esc`
7. Exit the vim by typing `:wq` To `write` to file and `quit` editor

    ![Terminal-Based VIM Editor - Command Mode - Write/Quit](img/example-cron/crontabExample-vimEditorWriteQuit.png)
8. 

Cronjob Starting Process:



