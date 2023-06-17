# To Change Default Permission

```bash
r - read
w - write
x - execute
```

**Permissions (rwx) levels:**

```bash
u - yourself (current user)
g - group in which user belongs to
o - others users
a - all users
```

**Permission = 0777 - 0022 = 0755**

```bash
-------------------------------------------------------
|binary  | octal  |   permissions Type      |   Symbol
|--------|--------| ------------------------|----------                                 
|000     |  0     | No permission           |    ---
|001     |  1     | Execute                 |    --x
|010     |  2     | Write                   |    -w-
|011     |  3     | Execute + Write         |    -wx-
|100     |  4     | Read                    |    r--
|101     |  5     | Read + Execute          |    r-x
|110     |  6     | Read + Write            |    rw-
|111     |  7     | Read + Write + Execute  |    rwx
-------------------------------------------------------
```

```bash
chmod u+r myfile.txt  # adding permission

chmod u-r myfile.txt  # removing permission

chmod ugo+r myfile.txt

chmod ugo-r myfile.txt

chmod a+rwx myfile.txt  # adding for all

chmod 756 myfile.txt   # 7 = user, 5 = group, 6 = others user
```
