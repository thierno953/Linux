# Finding files or directories using find command

Here I can create a folder and three subfolders and a file in the third subfolder to find my file.

```bash
cd myfoder/folder1/folder2/folder3/myfile.txt
```
  
To find the file just type

```bash
find . -name myfile.txt

    or

find . -type f -name myfile.txt

    or

find . -type d -name myfile.txt
```
