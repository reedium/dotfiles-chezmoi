# Show current system load average and what the max load average is for your system (max = full system resource utilization)
function systemload() {
	loadAverage=$(uptime | cut -d',' -f4 | grep -o "[0-9]*\.[0-9]*$")
	processors=$(cat /proc/cpuinfo | grep processor | tail -n1 | awk '{ print $3 }')
	let processors=$processors+1
	echo "$loadAverage ($processors.00 max)"
}
