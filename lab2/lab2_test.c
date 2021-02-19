#include "types.h"
#include "user.h"

int main(int argc, char *argv[])
{
	
	int PScheduler(void);

  printf(1, "\n This program tests the correctness of your lab#2\n");
  
	//PScheduler();
	//return 0;

	if (atoi(argv[1]) == 1){
    printf(1, "\n Testing Scheduler\n");
    PScheduler();
  } else if (atoi(argv[1]) == 2){
    printf(1, "\n Testing Donation\n");
    donationScheduler(3); //donation amount
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

int donationScheduler(int value){
 int parent, pid, i, j;

 printf(1, "\n Step 1: Testing the donate systema call:\n");
 printf(1, " Step 2: The parent will have a higher priority than the child\n");
 printf(1, " Step 3: The parent will donate the value amount of priority to the child\n");
 printf(1, " Step 4: The priority of the child will go up by the same amount as the parent will go down\n");
 set_priority(20);
 parent = getpid();
 printf(1, "\n Child with pid %d has priority %d \n ", getpid(), get_priority(getpid()) );
 pid = fork();


 if(pid > 0){
   wait();
   printf(1, "\n Child with pid %d now has priority %d after donation \n", getpid(), get_priority(getpid()) );
 }
 else if(pid == 0){
   set_priority(10);
   printf(1, " Parent with pid %d has priority %d \n ", getpid(), get_priority(getpid()) );
   for (i=0;i<50000;i++) {
     for(j=0;j<10000;j++) {
       asm("nop");
     }
   }
   printf(1, "\n Parent with pid %d has donated %d priority to child %d \n", getpid(), value, parent);
   //printf(1, "\n Parent with pid %d has donated %d priority to child %d \n", parent, value, getpid());
   donate_priority(value);
   for (i=0;i<50000;i++) {
     for(j=0;j<10000;j++) {
       asm("nop");
     }
   }
   printf(1, "\n Parent with pid %d now has priority %d after donation \n", getpid(), get_priority(getpid()) );
   exit();
 }
 else{
   printf(2, "\n Error \n ");
 }

 return 0;
}	