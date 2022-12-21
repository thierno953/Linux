# I have covered the following cases of grep command usage

* To ignore the upper and lower case while searching using grep command in Linux
* To search everything except given pattern/keyword using grep command in Linux
* To print how many times (count) given keyword present in file using grep command in Linux
* To search for exact match of given keyword in a file using grep command in Linux
* To print the line no. of matches of given keyword in a file using grep command in Linux
* To search a given keyword in multiple files using grep command in Linux
* To suppress file names while search a given keyword in multiple files using grep command in Linux* 
* To search multiple keywords in a file using grep command in Linux
* To search multiple keywords in multiple file using grep command in Linux
* To only print file names which matches given keywords using grep command in Linux
* To get the keywords/pattern from a file and match with a another file using grep command in Linux
* To print the matching line which start with given keyword using grep command in Linux
* To print the matching line which end with given keyword using grep command in Linux
* Suppose we have 100 files in a directory (dirA) and we need to search a keyword in all the files using grep command in Linux*
* We can use egrep command for the multiple keywords search using grep command in Linux
* If you just wanna search but don't want to print on terminal or If you want to suppress error message using grep command in Linux

### ex: 
```bash
vi myfile
id, firstname, lastname, email, profession
1, John, Doe, john@gmail.com, frontend 
2, Paul, Dupont, paul@gmail.com, backend
3, Pierre, Duran, pierre@gmail.com, devOps
```
```bash
grep John myfile
grep -i John myfile (To ignore the upper and lowercase while searching)
grep -c John myfile (To print how many times {count} given keyword present in file)
grep -w John myfile (To search for exact match of given keyword in a file)
grep -n John myfile (To print the line no. of matches of given keyword in a file)
grep Pierre file1 file2...
ls | grep John 
```

### Here is link : 
```bash
https://docs.google.com/presentation/d/1KimpyPD9_RYY2-zjMt9V1_2s9e0QPSnrYsk5F1jTrDs/edit#slide=id.g156304c002d_0_101
```



