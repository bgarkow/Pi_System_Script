#!/bin/bash
# Brandon Garkow

#************************************#
#******* OUTPUT SYSTEM STATS ********#
#************************************#

# Make a directory called System_Stats and change directories to that directory
# Try to make the output for each file look as neat and organized as you can.

mkdir System_Stats
cd System_Stats


# Output the following information to a file called kernel
    # 1. Kernel Name
    # 2. Kernel Release
    # 3. Kernel Version
    # 4. The operating system
    
uname -s > kernel
uname -r >> kernel
uname -v >> kernel
uname -o >> kernel

# Output the following information to a file called network
    # 1. Do not print any serial numbers or sensitive information related to the system
    # 2. All network interfaces
sudo lshw -short -sanitize > network
    
    
# Output the following information to a file called disk.html
    # 1. All disks
    # 2. The output should include html tags, i.e. <html></html>
    
sudo lshw -html > disk.html


# Output the following information to a file called cpu
    # 1. The first five lines of the command lscpu
    # 2. The last 12 lines of the command lscpu
    
lscpu | head -n5 > cpu
lscpu | tail -n12 >> cpu

# Output the following information to a file called block_dev
    # 1. Only the name, size, and type of the block devices
    # 2. The output should use ascii characters for any tree formatting
    
lsblk -i -o NAME,SIZE,TYPE > block_dev    
    
# Output the following information to a file called sata
    # 1. Any Sata devices connected to the machine along with human readable sizes of the devices
    # 2. More specific information about each device that is connected to the machine.
    
lsscsi -s > sata
sudo hdparm pi >> sata
