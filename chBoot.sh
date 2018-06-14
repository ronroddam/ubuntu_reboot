#!/bin/bash
# Read package list for reboot requirement. Create FILE variable.
# Ron Roddam 2018 
if [ ! -f /run/reboot-required.pkgs ]; then
	echo "No packages forcing reboot."
else
	FILE=$(</run/reboot-required.pkgs)
fi
# Check if ubuntu system needs a reboot
if [ -f /run/reboot-required.pkgs ]; then
	echo "Is a reboot required? -- YES" 
	#List the files requiring the reboot.  
	echo "These files are forcing a reboot:"
	printf "\t%s\n" ${FILE}
else
	echo "Is a reboot required? -- NO"
fi
