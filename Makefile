CC=gcc
OPTS=-Werror -O0 
#-g for default debug information
#-Werror for warning as error

all: build measurement_overhead context_switch_kthreads context_switch_processes

build: 
	mkdir -p build

################### 1_cpu_scheduling_and_os_services ###################
## measurement_overhead
measurement_overhead: build
	$(CC) $(OPTS) -o build/measurement_overhead operations/1_cpu_scheduling_and_os_services/measurement_overhead/measurement_overhead.c


## context_switch_time
context_switch_kthreads: build
	$(CC) $(OPTS) -o build/context_switch_kthreads operations/1_cpu_scheduling_and_os_services/context_switch_time/context_switch_kthreads.c

context_switch_processes: build
	$(CC) $(OPTS) -o build/context_switch_processes operations/1_cpu_scheduling_and_os_services/context_switch_time/context_switch_processes.c

################### 2_memory ###################

################### 3_network ###################

################### 4_file_system ###################

clean:
	rm -f build/*;