#include "types.h"
#include "user.h"

int main(int argc, char *argv[])
{
	
	int PScheduler(void);
	int AGcheduler(void);
  printf(1, "\n This program tests the correctness of your lab#2\n");
  
	//PScheduler();
	//return 0;

	if (atoi(argv[1]) == 1){
    printf(1, "\n Testing Scheduler\n");
    PScheduler();
  } else if (atoi(argv[1]) == 2){
    printf(1, "\n Testing aging of priority\n");
    AGcheduler(); //donation amount
  }
  return 0;
  
 }
  
    
     int PScheduler(void){
		 
    // use this part to test the priority scheduler. Assuming that the priorities range between range between 0 to 31
    // 0 is the highest priority and 31 is the lowest priority.  

  int pid;
  int i,j,k;
  
    printf(1, "\n  Step 2: testing the priority scheduler and setpriority(int priority)) systema call:\n");
    printf(1, "\n  Step 2: Assuming that the priorities range between range between 0 to 31\n");
    printf(1, "\n  Step 2: 0 is the highest priority. All processes have a default priority of 10\n");
    printf(1, "\n  Step 2: The parent processes will switch to priority 0\n");
    set_priority(0);
    for (i = 0; i <  3; i++) {
	pid = fork();
	if (pid > 0 ) {
		continue;}
	else if ( pid == 0) {
		//int myp = set_priority(30-10*i);
		set_priority(30-10*i);

		for (j=0;j<50000;j++) {
			for(k=0;k<1000;k++) {
				asm("nop"); }}
		printf(1, "\n child# %d with priority %d has finished! \n",getpid(),30-10*i);		
		exit();
        }
        else {
			printf(2," \n Error \n");
			
        }
	}

	if(pid > 0) {
		for (i = 0; i <  3; i++) {
			wait();

		}
                     printf(1,"\n if processes with highest priority finished first then its correct \n");
}
	exit();		
	return 0;}

int AGcheduler(void){
		 
    // use this part to test the priority scheduler. Assuming that the priorities range between range between 0 to 31
    // 0 is the highest priority and 31 is the lowest priority.  

  int pid;
  int i,j,k,a,b;
  
    printf(1, "\n  Step 2: testing the priority scheduler and setpriority(int priority)) systema call:\n");
    printf(1, "\n  Step 2: Assuming that the priorities range between range between 0 to 31\n");
    printf(1, "\n  Step 2: 0 is the highest priority. All processes have a default priority of 10\n");
    printf(1, "\n  Step 2: The parent processes will switch to priority 0\n");
    set_priority(0);
    for (i = 0; i <  3; i++) {
	pid = fork();
	if (pid > 0 ) {
		continue;}
	else if ( pid == 0) {
		set_priority(30-10*i);
		//set_priority(30-10*i);
        int justcurrent = 0;
        
        for (a=0;a<80000;a++) {
			for(b=0;b<2000;b++) {
				asm("nop");
			}
			if(a % 100 ==0 && get_priority() != justcurrent) {
				justcurrent = get_priority();
				printf(1, "\n process with pid %d has priority %d", getpid(), get_priority());
			}
		}
		for (j=0;j<50000;j++) {
			for(k=0;k<1000;k++) {
				asm("nop"); }}
		printf(1, "\n child# %d with priority %d has finished! \n",getpid(),get_priority());		
		exit();
        }
        else {
			printf(2," \n Error \n");
			
        }
	}

	if(pid > 0) {
		for (i = 0; i <  3; i++) {
			wait();

		}
                     printf(1,"\n if processes with highest priority finished first then its correct \n");
}
	exit();		
	return 0;}	
