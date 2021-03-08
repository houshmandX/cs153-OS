# cs153
## Part1(System Calls)
In this part we were asked to do 4 diffrent types of system calls:
#### a) exit system call:
To terminate the current process and store the exit status of the terminated process in the corresponding structure.
#### b) wait system call:
To prevent the current process from execution until any of its child processes is terminated (if any exists) and return the terminated child exit status through the status argument. The system call must return the process id of the child that was terminated or -1 if no child exists (or unexpected error occurred).
#### c) waitpid system call:
To act like wait system call with the following additional properties: The system call must wait for a process (not necessary a child process) with a pid that equals to one provided by the pid argument. The return value must be the process id of the process that was terminated or -1 if this process does not exist or if an unexpected error occurred.
#### d) example program:
To illustrate that waitpid works. Example program needs to be executed from inside the shell once xv6 boots.
#### e) debug system call:
A new system call, debug that takes no arguments, and that prints some of the values in the proc struct for the process. A new test example to illustrate that debug system call works.

## Part2(priority scheduling)
In ths part we were asked to change the scheduler from a simple round-robin to a priority scheduler. Add a priority value to each process, and when scheduling from the ready list you will always schedule the highest priority thread/process first.

Add a system call to change the priority of a process. A process can change its priority at any time. If the priority becomes lower than any process on the ready list, you must switch to that process.

To avoid starvation, implement aging of priority. If a process waits increase its priority. When it runs, decrease it. (Possible Bonus 1)

## Part3(Preliminaries)
### Part 1: Changing memory layout:
In this part we were asked to make changes to the xv6 memory layout. 
we rearrange the address space to look more like Linux:

code
heap (grows towards the high-end of the address space)
... (gap)
stack (at end of address space; grows backwards)

### Part 2: Growing the Stack:
In this part we were ask to grow the stack automatically when needed. 
When the stack grows beyond its allocated page(s) it will cause a page fault because it is accessing an unmapped page.
