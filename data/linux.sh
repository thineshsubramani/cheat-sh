### 1 Shell Basics

- List files: `ls -la`
- Change dir: `cd /path/to/dir`
- Find files: `find . -name '*.conf'`

### 2 Networking

- Show interfaces: `ip addr show`
- Show listening sockets: `ss -tuln` (or `netstat -tuln`)
- Routing table: `ip route show`
- DNS lookup: `dig example.com +short` or `host example.com`
- Ping: `ping -c 4 1.1.1.1`
- Tracepath/traceroute: `tracepath example.com` / `traceroute example.com`

### 3 Processes & Services

- List processes: `ps aux | less`
- Top/htop: `top` / `htop`
- Systemd status: `systemctl status sshd`
- Kill by PID: `kill -9 <pid>`

### 4 Permissions

- Change mode: `chmod 755 file`
- Change owner: `chown user:group file`
- Recursive: `chmod -R 755 dir`

### 5 Archiving

- Tar compress: `tar -czvf archive.tar.gz /path/to/dir`
- Tar extract: `tar -xzvf archive.tar.gz`
- Zip: `zip -r archive.zip dir`

### 6 Search

- Grep text: `grep "text" file.txt`
- Recursive grep: `grep -r "text" .`

### 7 Disk Usage

- Free space: `df -h`
- Dir size: `du -sh dir/`
- Largest files: `du -ah . | sort -rh | head -5`

### 8 System Info

- Kernel: `uname -r`
- OS Release: `cat /etc/os-release`
- CPU Info: `lscpu`
- Memory: `free -h`
