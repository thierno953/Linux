# Grep Command

- Grep commad search for a particuliar sring/keyword from a file print lines matching a pattern.

- It check line by line and print lines matching given pattern.

example: myfile

```bash
id, firstname, lastname,    email,           profession
1,  John,      Doe,       john@gmail.com,    frontend 
2,  Paul,      Dupont,    paul@gmail.com,    backend
3,  Pierre,    Duran,     pierre@gmail.com,  devOps
```

case:

```bash
grep John myfile

grep -v John myfile   #To search everything except given pattern/keyword.

grep -i John myfile   #To ignore the upper and lowercase while searching.

grep -c John myfile   #To print how many times (count) given keyword present in file.

grep -w John myfile   #To search for exact match of given keyword in a file.

grep -n John myfile   #To print the line no. of matches of given keyword in a file.

grep Pierre file1 file2...

ls | grep John 
```



