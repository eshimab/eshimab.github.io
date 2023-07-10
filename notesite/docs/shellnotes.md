


### Terminal

#### Use `ls -a` to see hidden folder and files that start with `.` 

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

## Git

### Initializing a git repo using a local directory (with a generic, empty repo already on GitHub)

To use your local "scidev" folder to update your GitHub repository named "scidev" while creating a .gitignore file and a pre-commit Git hook to limit staging to files below 1MB, follow these steps:

- [ ]  Create the .gitignore file:
   - [ ] Open a text editor and create a file named ".gitignore" in the root directory of your "scidev" folder.
   - [ ] Add the necessary patterns to ignore files in the .gitignore file. For example, you can add `*.pdf` to ignore all PDF files.
    ```bash
    # Ignore directories withim scidev:
    # The leading / means that these are subdirectories within scidev where the .gitignore file is found
    # The trailing / means that we are targetting a directory and all it's contents
    /assets/packages/
    /envsdir/mdocs/bin/
    /envsdir/mdocs/lib/
    # 
    # Ignore Filetypes
    *.pdf
    *.mat
    ```
- [ ] Create the pre-commit Git hook:
   - [ ] Open a text editor and create a file named "pre-commit" (without an extension) in the ".git/hooks" directory of your "scidev" repository.
    ```bash
    touch /Users/eshim/scidev/.git/hooks/pre-commit
    ```
   - [ ] Copy and paste the following script into the "pre-commit" file:
     ```bash
     #!/bin/bash
     
     MAX_FILE_SIZE=1048576  # 1MB in bytes
     
     # Get the list of staged files
     files=$(git diff --cached --name-only)
     
     # Loop through the staged files
     for file in $files; do
       # Get the file size in bytes
       file_size=$(wc -c < "$file")
       
       # Compare file size with the maximum size
       if [ "$file_size" -gt "$MAX_FILE_SIZE" ]; then
         # Remove the file from the staging area
         git reset HEAD "$file"
         echo "File $file exceeds the maximum file size limit. It has been excluded from the commit."
       fi
     done
     #
     exit 0
     ```
   - [ ] Save the file and make it executable by running the following command in the terminal:
      ```bash
      chmod +x /Users/eshim/scidev/.git/hooks/pre-commit
      ```
- [ ] Initialize Git and connect to your GitHub repository:
   - [ ] Open a terminal or command prompt and navigate to your "scidev" folder.
       ```bash
       cd /Users/eshim/scidev
       ``` 
   - [ ] Run the following commands:
     ```bash
     git init
     git remote add origin https://github.com/eshimab/scidev
     ```
   - [ ] Replace `<repository-url>` with the URL of your GitHub repository.
- [ ] Add and commit files:
   - [ ] Add the files you want to include in the commit using `git add`.
   - [ ] Commit the changes using `git commit -m "Initial commit"`.
   ```bash
   git add notesite/**
   git commit -m "Initial Commit for directory notesite/**"
   ```

- [ ] Push the changes to your GitHub repository:
   - [ ] Run `git push -u origin master` to push your local commits to the "master" branch of your remote repository.
   ```bash
   git add notesite/**
   git commit -m "Initial Commit for directory notesite/**"
   ```

With these steps, your local "scidev" folder will be updated with the .gitignore file and the pre-commit Git hook. The pre-commit hook will exclude files above 1MB from being staged in your commits. Remember to customize the MAX_FILE_SIZE variable in the pre-commit script if you want a different maximum file size limit.

