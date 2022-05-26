REM   Set the w32tm service to automatic and then start service
sc config w32tm start=auto
net start w32tm

REM   Configure NTP Peer List
w32tm /config /syncfromflags:manual /manualpeerlist:"time.windows.com,time.nist.gov,time.nist-nw.gov,time.nist-a.gov,time.nist-b.gov,0.pool.ntp.org,1.pool.ntp.org,2.pool.ntp.org" /update /reliable:yes

REM   Resync the clock to the above applied Time Server list\
w32tm /resync
