# Commands

```bash
pwd                  # Print Working Directory.

ls                   # View contents or attributes.

ls -l                # Display items (folders or files, modification date, size on disk).

cd                   # Is the command that changes the direction ie changes the current directory to the root.

cd /home             # Send to root.

man                  # Allows you to manually view order details. (To search for the word use / and n for the next one).

ls -lh               # Display elements.

ls -la               # Shows all hidden files or folders and is characterized by the dot.

cd ..                # Allows to refer to the parent folder.

ls -a                # Show all hidden folders and make them visible.

mv                   # Changes the name of the object we want to move. (ex: mv file1 file2).

mkdir                # Make directories. (ex: mkdir folder).

rmdir                # Delete a folder. (ex: rmdir folder or rm -r folder).

rm -r                # Delete a folder or file. (ex: rm -r folder or rm -r file).

cp                   # Sets the folder that will provide a source and a destination. (ex: cp -r source destination).

ls alh > result.txt  # Allows to send the -alh to a file result.txt.

ls -l result.txt     # Displays the tail of the file.

less result.txt      # Displays the result of a file but this file cannot be modified and cannot be written to quit by typing the q key.

ls -alh|less         # Use the result of one command to pass to another command without the need to pass to a file.

vim or vi            # Text editor. (see the i=write, :wq or :wq!= save and quit or force quit tools, :q or :q!= quit or force quit tools).

cat                  # Displays what is inside the file. (ex: cat textfile.txt).

head                 # Displays the first sentence of the file. (ex: head -1 textfile.txt).

tail                 # Displays the tail of text in the file. (ex: tail -2 textfile.txt).

sort                 # Allows you to sort the words in the textfile. (ex: sort textfile.txt).

uniq                 # Allows to avoid the repetition of the text. (ex: sort textfile.txt | uniq).
```

# FS Structure Description

```bash
/boot        # Having files used by boot loader (ex:grub)

/dev         # System devices files (ex:speakers, keyboard etc)

/etc         # Have configuration

/usr/bin     # Binaries

/usr/sbin    # System binaries of the root directory

/opt         # Installation of optional add-on applications

/proc        # Running process

/usr/lib     # C Program bibary files needed by commands and apps

/tmp         # Having temporary files

/home        # Directories of users

/root        # Home directory of root user

/var         # Sytem logs

/run         # System daemons that start very early (ex: systemd and udev) to store temporary runtime files like PID 

/mnt         # To mount external filesystem (ex: NFS)

/media       # For CDROM Mounts

```