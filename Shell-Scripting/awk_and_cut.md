# AWK & CUT

### data

```bash
ID Name Salary Country
-----------------------
1  Jonh   2000  Belgium
2  Paul  1500  French
3  Pierre 1300  Belgium
4  Maria  2500  Italia
```

###  names

```bash
ID Name
---------
1 Thierno
2 Ludo
3 Axel
4 Sylvain
4 Arthur
5 Loran
6 Marion
7 Ninon
8 Clara
```

### countries

```bash
id, firstname, lastname, email,          profession, country
-------------------------------------------------------------
100, john,     Doe,      john@gmail.com,  frontend    Belgium
101, pierre,   Durant,   pierre@gmail.com, backend    Germany
103, paul,     Dupon,    paul@gmail.com,  devOps    French
```

```bash
awk '{print $2}' data
awk '{print $2, $4}' data
awk '{print $NF} data
awk '{if($4 > 2000) print $0}' data
awk '{print if($2=="Jonh"){$3=3000} print $0}' data
awk 'NF==0 {print NR}' data
```
```bash
awk '{print $NF $0}' names
awk '{print NR, $0}' names
awk '{print NR ": " $0}' names
cut -c1.5 names
```
```bash
awk -F '{print $4}' countries
awk '/Belgium/ {print $0}' countries
awk '{print NR "- " $0}' countries
awk 'NR==4 {print $0}' countries
awk 'NR=="2", NR=="4" {print $0}' countries
awk 'END {print NR}' countries
awk 'BEGIN{for(i=0;i<=10;i++}-) print i;}'
awk 'BEGIN{while(i<10){i++; print "num is " i}}'
cut -d, -f 2 countries
cut -d, -f 1- countries --output-delimiter=" | "
cut -d, -f 1- countries --output-delimiter=" : "
```
```bash
ls -ltr | awk '{print $NF}
```



