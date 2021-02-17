# cs153
## Part1(System Calls)
In this part we are asked to do 4 diffrent types of system calls:
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
