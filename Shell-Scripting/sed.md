# What is sed?

- Sed command statds for stream editor.
- Sed command performs lot of functions like :
- a - Viewing file contents
- b - Searching
- c - Find and Replace
- d - Insertion and deletion
- Sed also supports regular expressions which allows it perform complex pattern matching.

# Avantages of sed over vi/vim editor:

- Sed can perform any operations on file without opening the file.
- Sed syntax:

```bash
Sed [options] commands [file-to-work-with-sed]
```

# Find and replace with sed

- Sed 's/root/devopsclass' filename (Substitute root with devops 1st word occurence with new word).
- Sed 's/root/devopsclass/g' filename (Substitute root with devops global in whole file).
- Sed -i.back 's/root/devopsclass/g' filename (Changed original file itself);
- Sed '/search/s/old/new/g' filename (Replaces the old word with new word if that new line consists of search word).

# Insertion and deletion with sed command

```bash
Insert a new line (sed 'line_numberi' filename)

Sed -i (1i s_no name) filename

Sed -i '1a -----' filename

i and a (Insert before and insert after)
```

 **data**

```bash
ID Name Salary Country
-----------------------
1  Jonh   2000  Belgium
2  Paul  1500  French
3  Pierre 1300  Belgium
4  Maria  2500  Italia
```

- How to show only a given line or range of lines?

```bash
sed -n '1p' data
sed -n '1,5p' data
sed -n '$p' data
```

- How to see all the users from Belgium Country?

```bash
sed -n '/Belgium/p' data
```

- How to use multiple expression in sed command?
- Example: If you wanna only see 2 and 5th line

```bash
sed -n -e '2p' -e '5p' data
```

- How to see all the users from Belgium and Germany?

```bash
sed -n -e '/Belgium/p' -e '/Italia/p' data
```

- How to see next 4 lines from 2nd line?

```bash
sed -n ‘2,+4p’ data
```

- How to see every 2nd line from first line?

```bash
sed -n ‘1~2p’ data
```

- How to read expression from external file?

```bash
sed -f ex_file data
```

- How to replace a word in a file and show?

```bash
sed 's/<string_to_change>/<new_string>/g' data
```

- How to replace a word in a file and show except a given line or only in given line?

```bash
sed '5 s/<string_to_change>/<new_string>/g' data
sed '5! s/<string_to_change>/<new_string>/g' data
```

- How to replace a word and and edit in your file?

```bash
sed -i's/<string_to_change>/<new_string>/g' data
```

- How to change salary or country of a user (Paul)?

```bash
sed '/Paul/ s/2500/3500/g' data
sed '/Paul/ s/Belgium/US/g' data
```

- How to delete a line?

```bash
sed '1d' data                                    (to delete first line)
sed '1,2d' data
sed '$d' data
```

- How to delete user from Belgium country?

```bash
sed ‘/Belgium/d’ data
```
