# Hard and Soft Links in command

### What are links in linux ?

A connection between a file name and the actuel data on the disk.

We can call it a shortcut.

#### Difference between Soft and Hard link:

Soft link: Link will be removed if original file removed or deleted. ( ln -s ).
Hard link: Renaming, Deleting or removing the file will not effect the link. ( ln ).

###### example:


### windows 1                                                 =                    windows 2
                                                          
```bash
ln -s /home/user/folder1/folder2/folder3/myfile1 softlink     =    cd folder1/folder2/folder3/
ls -ltr                                                       =     ls
cat softlink                                                  =    cat myfile_1
echo "hello buddy" >> softlink                                =    echo "hello bro" > myfile_1
                                                              =
cat softlink                                                  =    cd folder4/
                                                              =    touch myfile_2
ln ../folder1/folder2/folder3/folder4/myfile_2                =    echo "hello boys" > myfile_2
ls -ltr                                                       =    cat myfile_2
cat myfile_2                                                  =
```
