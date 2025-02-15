#include "types.h"
#include "x86.h"
#include "defs.h"
#include "date.h"
#include "param.h"
#include "memlayout.h"
#include "mmu.h"
#include "proc.h"

int
sys_fork(void)
{
  return fork();
}

int
sys_exit(int status) //this needs a helper function(pass int status)
{
  argint(0, &status); // passing 0 as the argument to exit 
  exit(status); // helper pass the status
  return 0;  // not reached
}

int
sys_wait(int *status)
{
  argptr(0, (char**) &status, sizeof(int*)); //the status on wait is gonna be the argument pointer
  return wait(status);
}

int
sys_waitpid(int pid, int *status, int options) {
    argint(0, &pid); //0 position as wait for pid
    argptr(1, (char**) &status, sizeof(int*)); // passsing position1 for status 
    argint(2, &options); // passing position2 for options
    return waitpid(pid, status, options); // return them inot the waitpid
}

int
sys_kill(void)
{
  int pid;

  if(argint(0, &pid) < 0)
    return -1;
  return kill(pid);
}

int
sys_getpid(void)
{
  return myproc()->pid;
}

int
sys_sbrk(void)
{
  int addr;
  int n;

  if(argint(0, &n) < 0)
    return -1;
  addr = myproc()->sz;
  if(growproc(n) < 0)
    return -1;
  return addr;
}

int
sys_sleep(void)
{
  int n;
  uint ticks0;

  if(argint(0, &n) < 0)
    return -1;
  acquire(&tickslock);
  ticks0 = ticks;
  while(ticks - ticks0 < n){
    if(myproc()->killed){
      release(&tickslock);
      return -1;
    }
    sleep(&ticks, &tickslock);
  }
  release(&tickslock);
  return 0;
}

// return how many clock tick interrupts have occurred
// since start.
int
sys_uptime(void)
{
  uint xticks;

  acquire(&tickslock);
  xticks = ticks;
  release(&tickslock);
  return xticks;
}

int
sys_debug(void)
{
  debug();
  return 0;
}
