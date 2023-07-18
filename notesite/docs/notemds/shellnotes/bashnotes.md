

# Terminal


## Command Line Package Installers



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


---

# Piping output of `tree` command to text file.

Working with the code:
```bash
# Find the line numbers of the section header and the existing fenced code block
header_line=$(grep -n '## Tree Output' output.md | cut -d ':' -f1)
start_line=$((header_line + 1))
end_line=$(grep -n '```' output.md | grep -A 1 "^${start_line}:" | tail -n 1 | cut -d ':' -f1)

# Remove the old fenced code block
sed -i "${start_line},${end_line}d" output.md

# Insert the new fenced code block
sed -i "${start_line}i\`\`\`text" output.md
tree >> output.md
sed -i "${start_line}a\`\`\`" output.md
``` 

A breakdown of the code:

1. The first line uses `grep` to find the line number of the section header "## Tree Output" in the `output.md` file and extracts the line number using `cut`. It stores the line number in the variable `header_line`.
2. The second line calculates the `start_line` by incrementing the `header_line` by 1, indicating the line immediately after the section header.
3. The third line uses `grep` to find the line number of the closing triple backticks ("```") after the `start_line`, along with the following line using `grep -A 1` and `tail`. It extracts the line number using `cut` and stores it in the variable `end_line`.
4. The fourth line uses `sed` to remove the old fenced code block by specifying the line range from `start_line` to `end_line` and deleting those lines in the `output.md` file.
5. The fifth line uses `sed` to insert the opening triple backticks before the `start_line` to create a new fenced code block of "```text" in the `output.md` file.
6. The sixth line uses the `tree` command to generate the directory tree structure and appends the output to the `output.md` file.
7. The seventh line uses `sed` to insert the closing triple backticks after the `start_line` to complete the fenced code block in the `output.md` file.

These lines together remove the old fenced code block, insert the new fenced code block with the updated directory tree structure, and modify the `output.md` file accordingly.

# Shell Commands

## Shell command structure

### Flags vs Arguments
In the context of command-line interfaces, such as `rsync`, the terms "flags" and "arguments" have specific meanings:
- Flags: Flags are options that modify the behavior of a command. They are typically denoted by a hyphen or double hyphen followed by a letter or a word. Flags are used to enable or disable specific features, set certain configurations, or provide additional information. Examples of flags include `-v`, `-a`, `-r`, etc.
- Arguments: Arguments, on the other hand, are the values or inputs provided to a command to perform its operation. They can be filenames, directory paths, options, or any other data required by the command to carry out its functionality. Arguments are typically positional and come after the command and any flags. In the case of rsync, the source and destination directories are common arguments.

## Useful shell commands

### `grep`

The name "grep" stands for "Global Regular Expression Print." The `grep` command is a powerful tool used in Unix-like operating systems to search for patterns or specific text within files or streams.

Here's a breakdown of its functionality:
- **Global Search**: The primary purpose of `grep` is to search for text patterns globally, meaning it scans the entire input for matches.
- **Regular Expressions**: `grep` supports regular expressions, which are patterns used to describe and match specific text patterns. Regular expressions provide flexible and powerful search capabilities, allowing you to search for complex patterns, not just literal strings.
- **Print Matching Lines**: By default, `grep` prints the lines that match the search pattern. It can display the entire line or just the matching portion of the line, depending on the options used.
- **File Search**: `grep` can search within one or multiple files. You can specify the files explicitly or use wildcard patterns to search in a set of files that match a certain pattern.
- **Command Pipelines**: `grep` is often used in conjunction with other commands by utilizing input/output redirection or piping. This allows you to chain together multiple commands to perform complex operations.
- **Options and Customization**: `grep` offers various options to customize the search behavior. For example, you can control case sensitivity, search recursively in directories, display line numbers, invert the match, and more.

Here's a basic example of using `grep` to search for a pattern in a file:

```bash
grep "pattern" filename
```

In this example, `pattern` is the text pattern you want to search for, and `filename` is the name of the file you want to search within. `grep` will display all the lines in `filename` that contain the specified pattern.

`grep` is a versatile and widely-used command-line tool that helps in extracting specific information, filtering text, and performing various text-processing tasks efficiently.



### `sed`

The `sed` command, short for "**stream editor**," is a powerful text processing tool used in Unix-like operating systems. It performs operations on text streams, such as file contents or output from other commands. Here's a brief summary of what `sed` does:

- **Text Manipulation**: `sed` is primarily used for text manipulation tasks, such as search and replace, deletion, insertion, and transformation of text.
- **Regex Support**: It supports regular expressions, allowing complex pattern matching and substitution in text.
- **In-place Editing**: `sed` can modify files directly by using the `-i` option or by redirecting output to a new file.
- **Stream-based**: `sed` processes text input line by line, making it suitable for working with large files or streams of data.
- **Line Selection**: It can select specific lines based on line numbers or patterns.
- **Scripting Language**: `sed` has its own scripting language with commands, addresses, and modifiers to define the operations to be performed on the input.

In summary, `sed` is a versatile command-line tool used for text manipulation and transformation. It can modify text streams based on patterns, perform complex operations using regular expressions, and efficiently process large files or streams of data.