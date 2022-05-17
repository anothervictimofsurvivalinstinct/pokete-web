#!/bin/sh
exec /usr/bin/xterm -maximized -e /bin/sh -c 'cd /app && ./pokete.py'
#if you want it in dark mode replace with: exec /usr/bin/xterm -maximized -bg black -fg white -e /bin/sh -c 'cd /app && ./pokete.py'
