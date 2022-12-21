# Finding files or directories using find and locate command

Here I can create a folder and three subfolders and a file in the third subfolder to find my file.

### ex: 
```bash
  cd myfoder/folder1/folder2/folder3/myfile.txt
```
  
## To find the file just type
```bash
find . -name myfile.txt
    or
find . -type f -name myfile.txt
    or
find . -type d -name myfile.txt
```
## another method is enough to install mlocate
```bash
sudo apt-get update -y
sudo apt-get install -y mlocate
rpm -qa | grep mlocate
locate myfile.txt
```
