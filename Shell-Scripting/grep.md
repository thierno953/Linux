# Grep

- Project: Write a shell script to chack errors in error logs.
- Prerequisite:
- The grep filter searches a file for a particular pattern of characters, and displays all lines that contain that pattern. The pattern that is searched in the file is referred to as the regular expression(grep stands for global search for regular expression and print out).

- **Syntax**:

```bash
grep [options] pattern [files]
```

## Grep Continued...

- **grep -i** "amazing" devopsclass.txt
- **grep -c **"devops" testdevops.txt
- **grep -w** "devops" devopsclass.txt[checking whole word]

- Disploying only the matched pattern: By default, grep displays the entire line which has the matched string. We can make the grep to display only the matched string by using the -o option.
- grep -o "devops" Disploying only the matched pattern: By default, grep displays the entire line which has the matched string. We can make the grep to display only the matched string by using the -o option.

```bash
error_file=`cat /var/log/messages`
matched_error=`grep -i error /var/log/messages`
echo $matched_error
if [[ $? -eq 0 ]]
then
    echo "found error in OS logs: $matched_error "
else
    echo "no error in message logs "
fi
```
