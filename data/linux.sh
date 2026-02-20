### 1 File Listing
ls -a     # List all files (including hidden)
ls -l     # Long format (permissions, size, etc)
ls -lh    # Long format with human-readable sizes
ls -R     # Recursive listing
tree      # Tree view of directory structure

### 2 File Manipulation
cp file1 file2        # Copy file
cp -r dir1 dir2       # Copy directory recursively
mv file1 newname      # Move/Rename file
rm file1              # Remove file
rm -rf dir1           # Remove directory recursively (Force)
touch file1           # Create empty file or update timestamp
mkdir -p a/b/c        # Create nested directories

### 3 File Viewing
cat file              # Output file content
less file             # View file page by page
head -n 5 file        # View first 5 lines
tail -n 5 file        # View last 5 lines
tail -f logfile       # Follow log file updates

### 4 Permissions
chmod 755 file        # rwx for owner, rx for group/others
chmod +x script.sh    # Make file executable
chown user:group file # Change owner and group
chown -R user dir     # Change owner recursively

### 5 Search (Grep)
grep "text" file      # Search text in file
grep -r "text" dir    # Search recursively in directory
grep -i "text" file   # Case insensitive search
grep -v "text" file   # Invert match (lines NOT containing text)

### 6 Find Files
find . -name "*.txt"          # Find files by name
find . -type f -size +10M     # Find files larger than 10MB
find . -mtime -7              # Find files modified in last 7 days
find . -name "*.log" -delete  # Find and delete files

### 7 Archives (Tar)
tar -czvf archive.tar.gz dir  # Create compressed archive
tar -xzvf archive.tar.gz      # Extract archive
tar -tf archive.tar.gz        # List archive content

### 8 Disk Usage
df -h                 # Disk space usage (Human readable)
du -sh dir            # Directory size summary
du -h --max-depth=1   # Size of immediate subdirectories
free -h               # Memory usage

### 9 Process Management
ps aux | grep app     # Find process by name
top                   # Real-time process view
htop                  # Better real-time process view
kill <pid>            # Kill process by ID
pkill -f name         # Kill process by name
killall name          # Kill all processes with name

### 10 Networking
ip addr show          # Show IP addresses
ip route show         # Show routing table
ping google.com       # Check connectivity
netstat -tulpn        # Show listening ports
ss -tulpn             # Modern alternative to netstat
curl -I url           # Fetch headers only
wget url              # Download file

### 11 System Info
uname -a              # Kernel info
hostnamectl           # Hostname info
uptime                # System uptime
lscpu                 # CPU info
lsblk                 # Block devices (disks)

### 12 Users
id                    # Show current user ID/groups
whoami                # Show current username
last                  # Show last logins
useradd -m user       # Create user with home dir
passwd user           # Set password
usermod -aG group user # Add user to group

### 13 SSH
ssh user@host         # Connect to host
ssh -p 2222 user@host # Connect on port 2222
scp file user@host:~  # Copy file to remote
scp user@host:file .  # Copy file from remote
ssh-keygen -t ed25519 # Generate SSH key

### 14 IO Redirection
cmd > file            # Redirect stdout to file (overwrite)
cmd >> file           # Redirect stdout to file (append)
cmd 2> error.log      # Redirect stderr to file
cmd &> all.log        # Redirect both stdout and stderr
cmd1 | cmd2           # Pipe stdout of cmd1 to stdin of cmd2

### 15 Environment Variables
env                   # List all environment variables
export VAR=value      # Set variable
echo $VAR             # Print variable
unset VAR             # Remove variable

### 16 History
history               # Show command history
!123                  # Run command #123 from history
!!                    # Run previous command
Ctrl+R                # Reverse search history

### 17 Systemd (Services)
systemctl start svc   # Start service
systemctl stop svc    # Stop service
systemctl restart svc # Restart service
systemctl status svc  # Check status
systemctl enable svc  # Enable on boot

### 18 Cron (Scheduling)
crontab -e            # Edit cron jobs
crontab -l            # List cron jobs
# * * * * * command   # Minute Hour Day Month Weekday

### 19 Screen / Tmux
screen -S name        # Start named session
screen -r name        # Attach to session
# Ctrl+A, D           # Detach from screen
tmux new -s name      # Start tmux session
tmux attach -t name   # Attach tmux session

### 20 Package Manager (APT)
apt update            # Update package list
apt upgrade           # Upgrade packages
apt install pkg       # Install package
apt remove pkg        # Remove package
apt autoremove        # Remove unused dependencies

### 21 Git Basics
git init              # Initialize repo
git clone url         # Clone repo
git status            # Check status
git add .             # Stage all changes
git commit -m "msg"   # Commit changes
git push              # Push to remote
git pull              # Pull from remote

### 22 Docker Basics
docker ps             # List running containers
docker ps -a          # List all containers
docker images         # List images
docker run image      # Run container
docker stop container # Stop container
docker rm container   # Remove container

### 23 Vim Basics
vim file              # Open file
# i                   # Insert mode
# Esc                 # Exit insert mode
# :w                  # Save
# :q                  # Quit
# :wq                 # Save and Quit

### 24 Compression (Zip)
zip -r archive.zip dir # Zip directory
unzip archive.zip      # Unzip
gzip file              # Compress file (.gz)
gunzip file.gz         # Uncompress file

### 25 DNS Lookup
nslookup google.com    # Query DNS
dig google.com         # Detailed DNS query
dig +short google.com  # Short DNS query

### 26 Hardware Info
lspci                  # List PCI devices
lsusb                  # List USB devices
lshw                   # List hardware (needs sudo)
dmidecode              # DMI table info

### 27 Shutdown & Reboot
shutdown now           # Shutdown immediately
shutdown -r now        # Reboot immediately
reboot                 # Reboot
poweroff               # Power off

### 28 Date & Time
date                   # Show date/time
cal                    # Show calendar
timedatectl            # Control system time

### 29 Text Processing
cut -d: -f1 /etc/passwd # Cut columns
awk '{print $1}' file   # Print first column
sed 's/foo/bar/g' file  # Replace foo with bar
sort file               # Sort lines
uniq                    # Remove duplicates
wc -l file              # Count lines

### 30 System Monitoring
vmstat 1              # System stats every 1 sec
iostat -xz 1          # Disk I/O stats
sar -u 1              # CPU usage history
free -m               # Memory usage in MB
watch -n 1 "df -h"    # Watch command output

### 31 Network Analysis
tcpdump -i eth0       # Capture packets on eth0
tcpdump port 80       # Capture HTTP traffic
nmap -sP 192.168.1.0/24 # Ping scan subnet
nmap -p 22 192.168.1.1 # Scan port 22
traceroute google.com # Trace path to host
mtr google.com        # Interactive traceroute

### 32 Disk Management
fdisk -l              # List partitions
mkfs.ext4 /dev/sdb1   # Format partition as ext4
mount /dev/sdb1 /mnt  # Mount partition
umount /mnt           # Unmount
blkid                 # List block device UUIDs
lsblk -f              # List block devices with FS info

### 33 Firewall (UFW)
ufw status            # Check firewall status
ufw enable            # Enable firewall
ufw allow 22          # Allow SSH
ufw allow 80/tcp      # Allow HTTP
ufw deny 23           # Deny Telnet
ufw delete allow 22   # Remove rule

### 34 Logs (Journalctl)
journalctl -xe        # Show all logs (end)
journalctl -u ssh     # Show logs for unit ssh
journalctl -f         # Follow logs
journalctl --since "1 hour ago" # Recent logs
dmesg -w              # Follow kernel ring buffer

### 35 Kernel Modules
lsmod                 # List loaded modules
modinfo module_name   # Show module info
modprobe module_name  # Load module
modprobe -r module    # Remove module
uname -r              # Kernel version

### 36 File Attributes
chattr +i file        # Make file immutable
chattr -i file        # Remove immutable flag
lsattr file           # List file attributes
umask 022             # Set default permissions

### 37 Job Control
jobs                  # List background jobs
bg %1                 # Resume job 1 in background
fg %1                 # Bring job 1 to foreground
nohup cmd &           # Run command immune to hangups
disown %1             # Remove job from shell

### 38 SSL / TLS
openssl genrsa -out key.pem 2048 # Generate private key
openssl req -new -key key.pem -out csr.pem # Generate CSR
openssl x509 -req -days 365 -in csr.pem -signkey key.pem -out cert.pem # Self-sign cert
openssl s_client -connect google.com:443 # Test SSL connection

### 39 System Limits
ulimit -a             # Show all limits
ulimit -n             # Show max open files
sysctl -a             # Show all kernel parameters
sysctl -w key=value   # Set kernel parameter

### 40 Miscellaneous
alias ll='ls -la'     # Create alias
unalias ll            # Remove alias
type cmd              # Identify command type
which cmd             # Locate command executable
man cmd               # Show manual page
whatis cmd            # Show command description

### 41 Text Editors (Nano)
nano file             # Open file
# Ctrl+O              # Save
# Ctrl+X              # Exit
# Ctrl+W              # Search
# Ctrl+K              # Cut line
# Ctrl+U              # Uncut line

### 42 File Transfer (Rsync)
rsync -av source dest # Sync directory locally
rsync -avz source user@host:dest # Sync to remote
rsync -avz user@host:source dest # Sync from remote
rsync --progress      # Show progress

### 43 Hardware (Lshw)
lshw -short           # Hardware summary
lshw -class disk      # Disk info
lshw -class network   # Network info
lshw -class memory    # Memory info

### 44 Package Manager (Yum/DNF)
yum update            # Update packages
yum install pkg       # Install package
yum remove pkg        # Remove package
yum search pkg        # Search package
yum info pkg          # Package info

### 45 User Groups
groups user           # Show user groups
groupadd group        # Create group
groupdel group        # Delete group
gpasswd -a user group # Add user to group
newgrp group          # Log in to new group