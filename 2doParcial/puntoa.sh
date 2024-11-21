
sudo fdisk /dev/sdd
n 
p 
enter
enter
+1G

n 
p 
enter
enter
+1G

n 
p 
enter
enter
+.8G



n 
e 
enter
enter
+3G



n 
enter
+1G

n 
enter
+.8G



sudo fdisk /dev/sdd
t 
1 
L listado de fs
82 elige fs swap
w 


free -h
sudo mkswap /dev/sdd1
sudo swapon /dev/sdd1
free -h




sudo fdisk /dev/sdd

t
2 
L 
8e 

t
3 
L 
8e 

t
5 
L 
8e 

t
6 
L 
8e 
w 

sudo fdisk -l



sudo pvcreate /dev/sdc2 /dev/sdc3 /dev/sdc5 /dev/sdc6
sudo pvs

sudo vgcreate vgAdmin /dev/sdc2 /dev/sdc3
sudo vgcreate vgDevelopers /dev/sdc5 /dev/sdc6


sudo lvcreate -L 1G vgDevelopers -n lvDevelopers
sudo lvcreate -L 1G vgDevelopers -n lvTesters
sudo lvcreate -L .8G vgDevelopers -n lvDevops
sudo lvcreate -L 2G vgAdmin -n lvAdmin

sudo fdisk -l




sudo mkfs.ext4 /dev/mapper/vgDevelopers-lvDevelopers
sudo mkfs.ext4 /dev/mapper/vgDevelopers-lvTesters
sudo mkfs.ext4 /dev/mapper/vgDevelopers-lvDevops
sudo mkfs.ext4 /dev/mapper/vgAdmin-lvAdmin


sudo lsblk -f

sudo mkdir /mnt/lvDevelopers
sudo mkdir /mnt/lvTesters
sudo mkdir /mnt/lvDevops
sudo mkdir /mnt/lvAdmin

sudo mount /dev/mapper/vgDevelopers-lvDevelopers /mnt/lvDevelopers
sudo mount /dev/mapper/vgDevelopers-lvTesters /mnt/lvTesters
sudo mount /dev/mapper/vgDevelopers-lvDevops /mnt/lvDevops
sudo mount /dev/mapper/vgAdmin-lvAdmin /mnt/lvAdmin


df -h
lsblk -f




