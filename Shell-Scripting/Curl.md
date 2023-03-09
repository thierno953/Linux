# Curl 👍

-> Curl makes a get request to the target URL and check if wheter the server is able to access the URL following HTTP request.

#### Curl flags:

- **-s** : Silent request, it will not show progress bar.
- **-w** : It will display the information on terminal.
- "**%{http_code}**" : To get the http code and for success its 200.

```bash
#!/bin/bash

URL="https://github.com/Kritika-git/Docker-Projects"

#echo "%{http_code}"
response=$(curl -s -w "%{http_code}"  $URL)

http1_code=$(tail -n1 <<< "$response")  # get the last line
content=$(sed '$ d' <<< "$response")   # get all but the last line which contains the status code

echo "$http1_code"
if [ $http1_code  == 200  ];
then
            echo "Request is working fine"
    else
            echo "send slack message that request is denied"
fi

#echo "$content"
```
