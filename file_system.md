# Types of File System
```bash
* ext3
* ext4
* XFS
* FAT
* BTRFS etc...
Ex: (lsblk -f)
```
### XFS(Extents File System)

XFS is 64bit high performance FS Works well with large files

### FS Structure Description

```bash
/boot  ===> Having files use by boot loader(ex:grub)

/dev   ===> System devices files(ex:speaker, keyboard etc...)

/etc   ===> Have configuration files

/usr/bin  ===> Binary

/usr/sbin   ===> System binary of the root directory

/opt   ===> Installation of optional add-on applications

/proc   ===> Running process

/usr/lib   ===> C Program library files needed by commands and apps

/tmp   ===> Having temporary

/home  ===> Directories of users

/root   ===> Home directory of root user

/var   ===> System logs

/run   ===> System daemons that start very early (ex:system and udev) to store temporary runtime files like PID

/mnt   ===> To mount external filesytem(ex: NFS)

/media   ===> For CDROM Mounts
```

