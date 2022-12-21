# SED 
### Sed ("stream editor") is a Unix utility that parses and transforms text, using a simple, compact programming language. 

* Sed is a line-oriented text processing utility: it reads text, line by line, from an input stream or file, into an internal buffer called the pattern space. Each line read starts a cycle.
* To the pattern space, sed applies one or more operations which have been specified via a sed script. sed implements a programming language with about 25 commands that specify the operations on the text.
* For each input line, after running the script, sed ordinarily outputs the pattern space (the line as modified by the script) and begins the cycle again with the next line. 

* Other end-of-script behaviors are available through sed options and script commands, e.g. d to delete the pattern space, q to quit, N to add the next line to the pattern space immediately, and so on. 

* Thus a sed script corresponds to the body of a loop that iterates through the lines of a stream, where the loop itself and the loop variable (the current line number) are implicit and maintained by sed.


#### data
```bash
ID Name Salary Country
-----------------------
1  Jonh   2000  Belgium
2  Paul  1500  French
3  Pierre 1300  Belgium
4  Maria  2500  Italia
```

* How to show only a given line or range of lines?
```bash
sed -n '1p' data
sed -n '1,5p' data
sed -n '$p' data
```
* How to see all the users from Belgium Country?
```bash
sed -n '/Belgium/p' data
```

* How to use multiple expression in sed command?
* Example: If you wanna only see 2 and 5th line
```bash
sed -n -e '2p' -e '5p' data
```
* How to see all the users from Belgium and Germany?
```bash
sed -n -e '/Belgium/p' -e '/Italia/p' data
```
* How to see next 4 lines from 2nd line?
```bash
sed -n ‘2,+4p’ data
```

* How to see every 2nd line from first line?
```bash
sed -n ‘1~2p’ data
```
* How to read expression from external file?
```bash
sed -f ex_file data
```

* How to replace a word in a file and show?
```bash
sed 's/<string_to_change>/<new_string>/g' data
```

* How to replace a word in a file and show except a given line or only in given line?
```bash
sed '5 s/<string_to_change>/<new_string>/g' data
sed '5! s/<string_to_change>/<new_string>/g' data
```

* How to replace a word and and edit in your file?
```bash
sed -i's/<string_to_change>/<new_string>/g' data
```

* How to change salary or country of a user (Paul)?
```bash
sed '/Paul/ s/2500/3500/g' data
sed '/Paul/ s/Belgium/US/g' data
```

* How to delete a line?
```bash
sed '1d' data                                    (to delete first line)
sed '1,2d' data
sed '$d' data
```

* How to delete user from Belgium country?
```bash
sed ‘/Belgium/d’ data
```
