##PUPPET
root    ALL=(ALL) ALL
%itlinux ALL=(ALL) NOPASSWD: ALL
User_Alias      MAILCLEANER = mailcleaner
Runas_Alias     ROOT = root
Cmnd_Alias      NTPSTARTER = /etc/init.d/ntp-server
Cmnd_Alias      NTPCSTARTER = /etc/init.d/ntp
Cmnd_Alias      NTPDATESTARTER = /etc/init.d/ntpdate
Cmnd_Alias      NTPDATE = /usr/sbin/ntpdate
Cmnd_Alias      DATE = /bin/date
Cmnd_Alias      IFDOWN = /sbin/ifdown
Cmnd_Alias      IFUP = /sbin/ifup
Cmnd_Alias      PASSWD = /usr/mailcleaner/bin/setpassword
Cmnd_Alias      UPDATE = /usr/mailcleaner/scripts/cron/mailcleaner_cron.pl

Defaults        mailto = root

MAILCLEANER     * = (ROOT) NOPASSWD: NTPSTARTER
MAILCLEANER     * = (ROOT) NOPASSWD: NTPCSTARTER
MAILCLEANER     * = (ROOT) NOPASSWD: NTPDATESTARTER
MAILCLEANER     * = (ROOT) NOPASSWD: NTPDATE
MAILCLEANER     * = (ROOT) NOPASSWD: DATE
MAILCLEANER     * = (ROOT) NOPASSWD: IFDOWN
MAILCLEANER     * = (ROOT) NOPASSWD: IFUP
MAILCLEANER     * = (ROOT) NOPASSWD: PASSWD
MAILCLEANER     * = (ROOT) NOPASSWD: UPDATE
MAILCLEANER     * = (ROOT) NOPASSWD: STOPSTART

bb        ALL=(root) NOPASSWD:/etc/init.d/xymon, /sbin/poweroff
