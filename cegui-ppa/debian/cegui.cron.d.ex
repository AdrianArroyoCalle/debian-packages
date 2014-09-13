#
# Regular cron jobs for the cegui package
#
0 4	* * *	root	[ -x /usr/bin/cegui_maintenance ] && /usr/bin/cegui_maintenance
