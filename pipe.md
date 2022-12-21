# What is a Pipe ?

* Pipe are used to redirect a stream from one program to another program.

* The output of one command redirect it to the input of another.

* The pipe and tee commands are used to pipe two streams of data together and the xargs command is used to process a list of files one at a time. This is a very useful command for scripting and on Linux systems it can be used to load libraries, parse configuration files or process command line arguments.

* This is a very useful command for tasks such as filtering text output or the combined operations of multiple commands in a single line of code.

* The Linux pipe and tee commands are two powerful tools that can be used to manipulate files and streams.

## The Linux pipe and tee commands are used to copy files from one location to another. We can also use the Xargs command, which is used to automatically execute commands after a certain number of arguments have been supplied.

```bash
ps -ef | grep httpd
ls - 1 | wc l
```
#### ex:  people.txt
```bash
N° NAME	GENDER	AGE	ADDRESS
1 Alicia Fuentes	F	48	Walton Street, line 433
2 Jo-Ting Losev	F	46	Hemenway Street, line 390
3 Elena Edmonds	F	58	Elmwood Avenue, line 123
4 Naydene Cabral	F	46	Winthrop Street, line 454
5 Dato Rosengren	M	22	Mystic Street, line 477
6 Fernanda Serrano	F	37	Redlands Road, line 392
7 Emiliano Wenk	M	90	Paulding Street, line 490
8 Larry Lapin	M	71	Atwill Road, line 298
9 Jakub Gondos	M	61	Mitchell Street, line 187
10 Derek Kazanin	M	55	Tennis Road, line 440
11 Jens Tuimalealiifano	M	83	Rockwood Street, line 205
12 Nikola Kadhi	M	75	Glenville Avenue, line 226
13 Takayuki Dundar	M	27	Cornelia Street, line 61
14 Njisane Arkhipova	M	73	Charles River Avenue, line 459
```

#### ex: names.txt
```bash
Zhizhi 
Suyoung 
Aman 
Bilel 
Amel 
Nooijer
Tumurkhuleg 
Alexa 
Patrick	
Zhizhi 
Suyoung 
Aman 
Bilel 
Bartlomiej 
Ryan 
Maialen 
Boon 
Deniz 	
```
```bash
cat people.txt names.txt | sort
cat names.txt | sort | uniq
cat people.txt | head -10 
cat people.txt | head -10 | tail 3
```
The netstat command generates displays showing network status and protocol statistics.
```bash
netstat
netstat more
netstat less
```
Display the files
```bash
ls > test.txt 
cat test.txt
```
```bash
ls | tee test.txt
ls | tee test.txt | wc -l
```
```bash
ls | xargs echo "hello"
```



