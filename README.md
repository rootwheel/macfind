# HW address searching
### HW (MAC) address search script for Quanta managed switch
##### Simple example of using `sshpass` and `heredoc`

```macfind <hw-address>```

**hw-addres** - HW address format 34:d5:88:bc:14:87

! The script found an HW address on each switch in list. Keep in mind that the HW address is also displayed on the uplink interface (usually this is the 0/49, 0/50 interface), the client's HW address must be displayed on another interface.
