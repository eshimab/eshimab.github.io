






### `rsync`

The `rsync` ("**remote synchronization**") command is a widely-used utility for file synchronization and data transfer in Unix-like operating systems. `rsync` is designed to efficiently synchronize files between different locations. Here's a brief summary of what `rsync` does:

- **File Synchronization**: `rsync` is used to synchronize files and directories between a source and destination, ensuring that the target matches the source by copying or updating only the differences.
- **Efficient Transfer**: It uses a delta-transfer algorithm that compares the files' contents and transfers only the changed portions, minimizing network bandwidth usage and reducing transfer time.
- **Remote and Local Transfers**: `rsync` can synchronize files between local directories or between local and remote systems using secure shell (SSH) or remote shell (RSH) protocols.
- **Preserving Metadata**: It can preserve various file attributes such as permissions, timestamps, ownership, and symbolic links during synchronization.
- **Recursive and Incremental**: `rsync` can synchronize directories and their subdirectories recursively, ensuring that all files and subdirectories are accurately replicated.
- **Resumable Transfers**: If a transfer is interrupted, `rsync` can resume from where it left off, avoiding retransmission of already synchronized files.

In summary, `rsync` is a powerful command-line tool used for efficient file synchronization and data transfer. It minimizes data transfer by copying only the changed parts of files, supports remote and local transfers, preserves metadata, and provides resumable transfers, making it a popular choice for various backup and synchronization scenarios.

#### `rsync` - Common Flags

- `-v` or `--verbose`: The `-v` or `--verbose` flag enables verbose output during rsync operations, providing detailed information about the transferred files and progress of the synchronization.
- `-a` or `--archive`: The `-a` or `--archive` flag is a combination of several flags including `-rlptgoD`. It is used for archiving and preserving file permissions, timestamps, symbolic links, and more during the rsync process.
- `-r` or `--recursive`: The `-r` or `--recursive` flag indicates recursive mode and enables the synchronization of directories and their subdirectories, ensuring a complete transfer of files within the directory hierarchy.
- `--delete-after`: The `--delete-after` flag tells rsync to perform deletions on the destination after the files are transferred. This means any files that exist in the destination but not in the source will be deleted after the synchronization.
- `--progress`: The `--progress` flag displays real-time progress information during the rsync operation, providing updates on the number of files transferred, data transferred, and estimated completion time.