
_example1:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
#include "types.h"
#include "user.h"

int main(int argc, char *argv[])
{
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	53                   	push   %ebx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	83 ec 10             	sub    $0x10,%esp
   a:	8b 5d 0c             	mov    0xc(%ebp),%ebx

    int exitWait(void);
    int waitPid(void);
    //int CELEBW02(void);

    printf(1, "\n This program tests the correctness of your lab#1\n");
   d:	c7 44 24 04 80 0c 00 	movl   $0xc80,0x4(%esp)
  14:	00 
  15:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  1c:	e8 3f 07 00 00       	call   760 <printf>

    if (atoi(argv[1]) == 1)
  21:	8b 43 04             	mov    0x4(%ebx),%eax
  24:	89 04 24             	mov    %eax,(%esp)
  27:	e8 84 05 00 00       	call   5b0 <atoi>
  2c:	83 f8 01             	cmp    $0x1,%eax
  2f:	74 30                	je     61 <main+0x61>
        exitWait();
    else if (atoi(argv[1]) == 2)
  31:	8b 43 04             	mov    0x4(%ebx),%eax
  34:	89 04 24             	mov    %eax,(%esp)
  37:	e8 74 05 00 00       	call   5b0 <atoi>
  3c:	83 f8 02             	cmp    $0x2,%eax
  3f:	74 27                	je     68 <main+0x68>
        waitPid();
    //else if (atoi(argv[1]) == 3)
       // CELEBW02();
    else
        printf(1, "\ntype \"lab1 1\" to test exit and wait, \"lab1 2\" to test waitpid and \"lab1 3\" to test the extra credit WNOHANG option \n");
  41:	c7 44 24 04 b4 0c 00 	movl   $0xcb4,0x4(%esp)
  48:	00 
  49:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  50:	e8 0b 07 00 00       	call   760 <printf>

    // End of test
    exit(0);
  55:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  5c:	e8 b1 05 00 00       	call   612 <exit>
        exitWait();
  61:	e8 1a 00 00 00       	call   80 <exitWait>
  66:	eb ed                	jmp    55 <main+0x55>
  68:	90                   	nop
  69:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        waitPid();
  70:	e8 0b 01 00 00       	call   180 <waitPid>
  75:	eb de                	jmp    55 <main+0x55>
  77:	66 90                	xchg   %ax,%ax
  79:	66 90                	xchg   %ax,%ax
  7b:	66 90                	xchg   %ax,%ax
  7d:	66 90                	xchg   %ax,%ax
  7f:	90                   	nop

00000080 <exitWait>:
    return 0;
}

int exitWait(void)
{
  80:	55                   	push   %ebp
  81:	89 e5                	mov    %esp,%ebp
  83:	56                   	push   %esi
  84:	53                   	push   %ebx
    int i;
    // use this part to test exit(int status) and wait(int* status)

    printf(1, "\n  Parts a & b) testing exit(int status) and wait(int* status):\n");

    for (i = 0; i < 2; i++)
  85:	31 db                	xor    %ebx,%ebx
{
  87:	83 ec 20             	sub    $0x20,%esp
    printf(1, "\n  Parts a & b) testing exit(int status) and wait(int* status):\n");
  8a:	c7 44 24 04 c8 0a 00 	movl   $0xac8,0x4(%esp)
  91:	00 
                exit(-1);
            }
        }
        else if (pid > 0)
        { // only the parent executes this code
            ret_pid = wait(&exit_status);
  92:	8d 75 f4             	lea    -0xc(%ebp),%esi
    printf(1, "\n  Parts a & b) testing exit(int status) and wait(int* status):\n");
  95:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  9c:	e8 bf 06 00 00       	call   760 <printf>
        pid = fork();
  a1:	e8 64 05 00 00       	call   60a <fork>
        if (pid == 0)
  a6:	83 f8 00             	cmp    $0x0,%eax
  a9:	74 45                	je     f0 <exitWait+0x70>
  ab:	90                   	nop
  ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        else if (pid > 0)
  b0:	0f 8e a3 00 00 00    	jle    159 <exitWait+0xd9>
            ret_pid = wait(&exit_status);
  b6:	89 34 24             	mov    %esi,(%esp)
    for (i = 0; i < 2; i++)
  b9:	83 c3 01             	add    $0x1,%ebx
            ret_pid = wait(&exit_status);
  bc:	e8 59 05 00 00       	call   61a <wait>
            printf(1, "\n This is the parent: child with PID# %d has exited with status %d\n", ret_pid, exit_status);
  c1:	8b 55 f4             	mov    -0xc(%ebp),%edx
  c4:	c7 44 24 04 48 0b 00 	movl   $0xb48,0x4(%esp)
  cb:	00 
  cc:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  d3:	89 54 24 0c          	mov    %edx,0xc(%esp)
  d7:	89 44 24 08          	mov    %eax,0x8(%esp)
  db:	e8 80 06 00 00       	call   760 <printf>
    for (i = 0; i < 2; i++)
  e0:	83 fb 02             	cmp    $0x2,%ebx
  e3:	75 bc                	jne    a1 <exitWait+0x21>
            printf(2, "\nError using fork\n");
            exit(-1);
        }
    }
    return 0;
}
  e5:	83 c4 20             	add    $0x20,%esp
  e8:	31 c0                	xor    %eax,%eax
  ea:	5b                   	pop    %ebx
  eb:	5e                   	pop    %esi
  ec:	5d                   	pop    %ebp
  ed:	c3                   	ret    
  ee:	66 90                	xchg   %ax,%ax
            if (i == 0)
  f0:	85 db                	test   %ebx,%ebx
  f2:	75 34                	jne    128 <exitWait+0xa8>
                printf(1, "\nThis is child with PID# %d and I will exit with status %d\n", getpid(), 0);
  f4:	e8 a1 05 00 00       	call   69a <getpid>
  f9:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 100:	00 
 101:	c7 44 24 04 0c 0b 00 	movl   $0xb0c,0x4(%esp)
 108:	00 
 109:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 110:	89 44 24 08          	mov    %eax,0x8(%esp)
 114:	e8 47 06 00 00       	call   760 <printf>
                exit(0);
 119:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 120:	e8 ed 04 00 00       	call   612 <exit>
 125:	8d 76 00             	lea    0x0(%esi),%esi
                printf(1, "\nThis is child with PID# %d and I will exit with status %d\n", getpid(), -1);
 128:	e8 6d 05 00 00       	call   69a <getpid>
 12d:	c7 44 24 0c ff ff ff 	movl   $0xffffffff,0xc(%esp)
 134:	ff 
 135:	c7 44 24 04 0c 0b 00 	movl   $0xb0c,0x4(%esp)
 13c:	00 
 13d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 144:	89 44 24 08          	mov    %eax,0x8(%esp)
 148:	e8 13 06 00 00       	call   760 <printf>
                exit(-1);
 14d:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
 154:	e8 b9 04 00 00       	call   612 <exit>
            printf(2, "\nError using fork\n");
 159:	c7 44 24 04 2c 0d 00 	movl   $0xd2c,0x4(%esp)
 160:	00 
 161:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 168:	e8 f3 05 00 00       	call   760 <printf>
            exit(-1);
 16d:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
 174:	e8 99 04 00 00       	call   612 <exit>
 179:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000180 <waitPid>:

int waitPid(void)
{
 180:	55                   	push   %ebp
 181:	89 e5                	mov    %esp,%ebp
 183:	56                   	push   %esi
 184:	53                   	push   %ebx
 185:	83 ec 30             	sub    $0x30,%esp
    int ret_pid, exit_status;
    int i;
    int pid_a[5] = {0, 0, 0, 0, 0};
    // use this part to test wait(int pid, int* status, int options)

    printf(1, "\n  Part c) testing waitpid(int pid, int* status, int options):\n");
 188:	c7 44 24 04 8c 0b 00 	movl   $0xb8c,0x4(%esp)
 18f:	00 
 190:	8d 5d e4             	lea    -0x1c(%ebp),%ebx
 193:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 19a:	8d 75 f8             	lea    -0x8(%ebp),%esi
    int pid_a[5] = {0, 0, 0, 0, 0};
 19d:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
 1a4:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
 1ab:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
 1b2:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 1b9:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    printf(1, "\n  Part c) testing waitpid(int pid, int* status, int options):\n");
 1c0:	e8 9b 05 00 00       	call   760 <printf>

    for (i = 0; i < 5; i++)
    {
        pid_a[i] = fork();
 1c5:	e8 40 04 00 00       	call   60a <fork>
        if (pid_a[i] == 0)
 1ca:	85 c0                	test   %eax,%eax
        pid_a[i] = fork();
 1cc:	89 03                	mov    %eax,(%ebx)
        if (pid_a[i] == 0)
 1ce:	0f 84 d5 01 00 00    	je     3a9 <waitPid+0x229>
 1d4:	83 c3 04             	add    $0x4,%ebx
    for (i = 0; i < 5; i++)
 1d7:	39 f3                	cmp    %esi,%ebx
 1d9:	75 ea                	jne    1c5 <waitPid+0x45>
            printf(1, "\n The is child with PID# %d and I will exit with status %d\n", getpid(), getpid() + 4);
            exit(getpid() + 4);
        }
    }

    sleep(5);
 1db:	c7 04 24 05 00 00 00 	movl   $0x5,(%esp)
    printf(1, "\n This is the parent: Now waiting for child with PID# %d\n", pid_a[3]);
    ret_pid = waitpid(pid_a[3], &exit_status, 0);
 1e2:	8d 5d e0             	lea    -0x20(%ebp),%ebx
    sleep(5);
 1e5:	e8 c0 04 00 00       	call   6aa <sleep>
    printf(1, "\n This is the parent: Now waiting for child with PID# %d\n", pid_a[3]);
 1ea:	8b 75 f0             	mov    -0x10(%ebp),%esi
 1ed:	c7 44 24 04 08 0c 00 	movl   $0xc08,0x4(%esp)
 1f4:	00 
 1f5:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 1fc:	89 74 24 08          	mov    %esi,0x8(%esp)
 200:	e8 5b 05 00 00       	call   760 <printf>
    ret_pid = waitpid(pid_a[3], &exit_status, 0);
 205:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 209:	89 34 24             	mov    %esi,(%esp)
 20c:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 213:	00 
 214:	e8 09 04 00 00       	call   622 <waitpid>
    printf(1, "\n This is the partent: Child# %d has exited with status %d\n", ret_pid, exit_status);
 219:	8b 55 e0             	mov    -0x20(%ebp),%edx
 21c:	c7 44 24 04 44 0c 00 	movl   $0xc44,0x4(%esp)
 223:	00 
 224:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 22b:	89 54 24 0c          	mov    %edx,0xc(%esp)
 22f:	89 44 24 08          	mov    %eax,0x8(%esp)
 233:	e8 28 05 00 00       	call   760 <printf>
    sleep(5);
 238:	c7 04 24 05 00 00 00 	movl   $0x5,(%esp)
 23f:	e8 66 04 00 00       	call   6aa <sleep>
    printf(1, "\n This is the parent: Now waiting for child with PID# %d\n", pid_a[1]);
 244:	8b 75 e8             	mov    -0x18(%ebp),%esi
 247:	c7 44 24 04 08 0c 00 	movl   $0xc08,0x4(%esp)
 24e:	00 
 24f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 256:	89 74 24 08          	mov    %esi,0x8(%esp)
 25a:	e8 01 05 00 00       	call   760 <printf>
    ret_pid = waitpid(pid_a[1], &exit_status, 0);
 25f:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 263:	89 34 24             	mov    %esi,(%esp)
 266:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 26d:	00 
 26e:	e8 af 03 00 00       	call   622 <waitpid>
    printf(1, "\n This is the partent: Child# %d has exited with status %d\n", ret_pid, exit_status);
 273:	8b 55 e0             	mov    -0x20(%ebp),%edx
 276:	c7 44 24 04 44 0c 00 	movl   $0xc44,0x4(%esp)
 27d:	00 
 27e:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 285:	89 54 24 0c          	mov    %edx,0xc(%esp)
 289:	89 44 24 08          	mov    %eax,0x8(%esp)
 28d:	e8 ce 04 00 00       	call   760 <printf>
    sleep(5);
 292:	c7 04 24 05 00 00 00 	movl   $0x5,(%esp)
 299:	e8 0c 04 00 00       	call   6aa <sleep>
    printf(1, "\n This is the parent: Now waiting for child with PID# %d\n", pid_a[2]);
 29e:	8b 75 ec             	mov    -0x14(%ebp),%esi
 2a1:	c7 44 24 04 08 0c 00 	movl   $0xc08,0x4(%esp)
 2a8:	00 
 2a9:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 2b0:	89 74 24 08          	mov    %esi,0x8(%esp)
 2b4:	e8 a7 04 00 00       	call   760 <printf>
    ret_pid = waitpid(pid_a[2], &exit_status, 0);
 2b9:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 2bd:	89 34 24             	mov    %esi,(%esp)
 2c0:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 2c7:	00 
 2c8:	e8 55 03 00 00       	call   622 <waitpid>
    printf(1, "\n This is the partent: Child# %d has exited with status %d\n", ret_pid, exit_status);
 2cd:	8b 55 e0             	mov    -0x20(%ebp),%edx
 2d0:	c7 44 24 04 44 0c 00 	movl   $0xc44,0x4(%esp)
 2d7:	00 
 2d8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 2df:	89 54 24 0c          	mov    %edx,0xc(%esp)
 2e3:	89 44 24 08          	mov    %eax,0x8(%esp)
 2e7:	e8 74 04 00 00       	call   760 <printf>
    sleep(5);
 2ec:	c7 04 24 05 00 00 00 	movl   $0x5,(%esp)
 2f3:	e8 b2 03 00 00       	call   6aa <sleep>
    printf(1, "\n This is the parent: Now waiting for child with PID# %d\n", pid_a[0]);
 2f8:	8b 75 e4             	mov    -0x1c(%ebp),%esi
 2fb:	c7 44 24 04 08 0c 00 	movl   $0xc08,0x4(%esp)
 302:	00 
 303:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 30a:	89 74 24 08          	mov    %esi,0x8(%esp)
 30e:	e8 4d 04 00 00       	call   760 <printf>
    ret_pid = waitpid(pid_a[0], &exit_status, 0);
 313:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 317:	89 34 24             	mov    %esi,(%esp)
 31a:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 321:	00 
 322:	e8 fb 02 00 00       	call   622 <waitpid>
    printf(1, "\n This is the partent: Child# %d has exited with status %d\n", ret_pid, exit_status);
 327:	8b 55 e0             	mov    -0x20(%ebp),%edx
 32a:	c7 44 24 04 44 0c 00 	movl   $0xc44,0x4(%esp)
 331:	00 
 332:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 339:	89 54 24 0c          	mov    %edx,0xc(%esp)
 33d:	89 44 24 08          	mov    %eax,0x8(%esp)
 341:	e8 1a 04 00 00       	call   760 <printf>
    sleep(5);
 346:	c7 04 24 05 00 00 00 	movl   $0x5,(%esp)
 34d:	e8 58 03 00 00       	call   6aa <sleep>
    printf(1, "\n This is the parent: Now waiting for child with PID# %d\n", pid_a[4]);
 352:	8b 75 f4             	mov    -0xc(%ebp),%esi
 355:	c7 44 24 04 08 0c 00 	movl   $0xc08,0x4(%esp)
 35c:	00 
 35d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 364:	89 74 24 08          	mov    %esi,0x8(%esp)
 368:	e8 f3 03 00 00       	call   760 <printf>
    ret_pid = waitpid(pid_a[4], &exit_status, 0);
 36d:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 371:	89 34 24             	mov    %esi,(%esp)
 374:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 37b:	00 
 37c:	e8 a1 02 00 00       	call   622 <waitpid>
    printf(1, "\n This is the partent: Child# %d has exited with status %d\n", ret_pid, exit_status);
 381:	8b 55 e0             	mov    -0x20(%ebp),%edx
 384:	c7 44 24 04 44 0c 00 	movl   $0xc44,0x4(%esp)
 38b:	00 
 38c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 393:	89 54 24 0c          	mov    %edx,0xc(%esp)
 397:	89 44 24 08          	mov    %eax,0x8(%esp)
 39b:	e8 c0 03 00 00       	call   760 <printf>

    return 0;
}
 3a0:	83 c4 30             	add    $0x30,%esp
 3a3:	31 c0                	xor    %eax,%eax
 3a5:	5b                   	pop    %ebx
 3a6:	5e                   	pop    %esi
 3a7:	5d                   	pop    %ebp
 3a8:	c3                   	ret    
            printf(1, "\n The is child with PID# %d and I will exit with status %d\n", getpid(), getpid() + 4);
 3a9:	e8 ec 02 00 00       	call   69a <getpid>
 3ae:	89 c3                	mov    %eax,%ebx
 3b0:	e8 e5 02 00 00       	call   69a <getpid>
 3b5:	83 c3 04             	add    $0x4,%ebx
 3b8:	89 5c 24 0c          	mov    %ebx,0xc(%esp)
 3bc:	c7 44 24 04 cc 0b 00 	movl   $0xbcc,0x4(%esp)
 3c3:	00 
 3c4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 3cb:	89 44 24 08          	mov    %eax,0x8(%esp)
 3cf:	e8 8c 03 00 00       	call   760 <printf>
            exit(getpid() + 4);
 3d4:	e8 c1 02 00 00       	call   69a <getpid>
 3d9:	83 c0 04             	add    $0x4,%eax
 3dc:	89 04 24             	mov    %eax,(%esp)
 3df:	e8 2e 02 00 00       	call   612 <exit>
 3e4:	66 90                	xchg   %ax,%ax
 3e6:	66 90                	xchg   %ax,%ax
 3e8:	66 90                	xchg   %ax,%ax
 3ea:	66 90                	xchg   %ax,%ax
 3ec:	66 90                	xchg   %ax,%ax
 3ee:	66 90                	xchg   %ax,%ax

000003f0 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
 3f0:	55                   	push   %ebp
 3f1:	89 e5                	mov    %esp,%ebp
 3f3:	8b 45 08             	mov    0x8(%ebp),%eax
 3f6:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 3f9:	53                   	push   %ebx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 3fa:	89 c2                	mov    %eax,%edx
 3fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 400:	83 c1 01             	add    $0x1,%ecx
 403:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
 407:	83 c2 01             	add    $0x1,%edx
 40a:	84 db                	test   %bl,%bl
 40c:	88 5a ff             	mov    %bl,-0x1(%edx)
 40f:	75 ef                	jne    400 <strcpy+0x10>
    ;
  return os;
}
 411:	5b                   	pop    %ebx
 412:	5d                   	pop    %ebp
 413:	c3                   	ret    
 414:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 41a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000420 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 420:	55                   	push   %ebp
 421:	89 e5                	mov    %esp,%ebp
 423:	8b 55 08             	mov    0x8(%ebp),%edx
 426:	53                   	push   %ebx
 427:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 42a:	0f b6 02             	movzbl (%edx),%eax
 42d:	84 c0                	test   %al,%al
 42f:	74 2d                	je     45e <strcmp+0x3e>
 431:	0f b6 19             	movzbl (%ecx),%ebx
 434:	38 d8                	cmp    %bl,%al
 436:	74 0e                	je     446 <strcmp+0x26>
 438:	eb 2b                	jmp    465 <strcmp+0x45>
 43a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 440:	38 c8                	cmp    %cl,%al
 442:	75 15                	jne    459 <strcmp+0x39>
    p++, q++;
 444:	89 d9                	mov    %ebx,%ecx
 446:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
 449:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
 44c:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 44f:	0f b6 49 01          	movzbl 0x1(%ecx),%ecx
 453:	84 c0                	test   %al,%al
 455:	75 e9                	jne    440 <strcmp+0x20>
 457:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
 459:	29 c8                	sub    %ecx,%eax
}
 45b:	5b                   	pop    %ebx
 45c:	5d                   	pop    %ebp
 45d:	c3                   	ret    
 45e:	0f b6 09             	movzbl (%ecx),%ecx
  while(*p && *p == *q)
 461:	31 c0                	xor    %eax,%eax
 463:	eb f4                	jmp    459 <strcmp+0x39>
 465:	0f b6 cb             	movzbl %bl,%ecx
 468:	eb ef                	jmp    459 <strcmp+0x39>
 46a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000470 <strlen>:

uint
strlen(const char *s)
{
 470:	55                   	push   %ebp
 471:	89 e5                	mov    %esp,%ebp
 473:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
 476:	80 39 00             	cmpb   $0x0,(%ecx)
 479:	74 12                	je     48d <strlen+0x1d>
 47b:	31 d2                	xor    %edx,%edx
 47d:	8d 76 00             	lea    0x0(%esi),%esi
 480:	83 c2 01             	add    $0x1,%edx
 483:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
 487:	89 d0                	mov    %edx,%eax
 489:	75 f5                	jne    480 <strlen+0x10>
    ;
  return n;
}
 48b:	5d                   	pop    %ebp
 48c:	c3                   	ret    
  for(n = 0; s[n]; n++)
 48d:	31 c0                	xor    %eax,%eax
}
 48f:	5d                   	pop    %ebp
 490:	c3                   	ret    
 491:	eb 0d                	jmp    4a0 <memset>
 493:	90                   	nop
 494:	90                   	nop
 495:	90                   	nop
 496:	90                   	nop
 497:	90                   	nop
 498:	90                   	nop
 499:	90                   	nop
 49a:	90                   	nop
 49b:	90                   	nop
 49c:	90                   	nop
 49d:	90                   	nop
 49e:	90                   	nop
 49f:	90                   	nop

000004a0 <memset>:

void*
memset(void *dst, int c, uint n)
{
 4a0:	55                   	push   %ebp
 4a1:	89 e5                	mov    %esp,%ebp
 4a3:	8b 55 08             	mov    0x8(%ebp),%edx
 4a6:	57                   	push   %edi
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 4a7:	8b 4d 10             	mov    0x10(%ebp),%ecx
 4aa:	8b 45 0c             	mov    0xc(%ebp),%eax
 4ad:	89 d7                	mov    %edx,%edi
 4af:	fc                   	cld    
 4b0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 4b2:	89 d0                	mov    %edx,%eax
 4b4:	5f                   	pop    %edi
 4b5:	5d                   	pop    %ebp
 4b6:	c3                   	ret    
 4b7:	89 f6                	mov    %esi,%esi
 4b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000004c0 <strchr>:

char*
strchr(const char *s, char c)
{
 4c0:	55                   	push   %ebp
 4c1:	89 e5                	mov    %esp,%ebp
 4c3:	8b 45 08             	mov    0x8(%ebp),%eax
 4c6:	53                   	push   %ebx
 4c7:	8b 55 0c             	mov    0xc(%ebp),%edx
  for(; *s; s++)
 4ca:	0f b6 18             	movzbl (%eax),%ebx
 4cd:	84 db                	test   %bl,%bl
 4cf:	74 1d                	je     4ee <strchr+0x2e>
    if(*s == c)
 4d1:	38 d3                	cmp    %dl,%bl
 4d3:	89 d1                	mov    %edx,%ecx
 4d5:	75 0d                	jne    4e4 <strchr+0x24>
 4d7:	eb 17                	jmp    4f0 <strchr+0x30>
 4d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4e0:	38 ca                	cmp    %cl,%dl
 4e2:	74 0c                	je     4f0 <strchr+0x30>
  for(; *s; s++)
 4e4:	83 c0 01             	add    $0x1,%eax
 4e7:	0f b6 10             	movzbl (%eax),%edx
 4ea:	84 d2                	test   %dl,%dl
 4ec:	75 f2                	jne    4e0 <strchr+0x20>
      return (char*)s;
  return 0;
 4ee:	31 c0                	xor    %eax,%eax
}
 4f0:	5b                   	pop    %ebx
 4f1:	5d                   	pop    %ebp
 4f2:	c3                   	ret    
 4f3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 4f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000500 <gets>:

char*
gets(char *buf, int max)
{
 500:	55                   	push   %ebp
 501:	89 e5                	mov    %esp,%ebp
 503:	57                   	push   %edi
 504:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 505:	31 f6                	xor    %esi,%esi
{
 507:	53                   	push   %ebx
 508:	83 ec 2c             	sub    $0x2c,%esp
    cc = read(0, &c, 1);
 50b:	8d 7d e7             	lea    -0x19(%ebp),%edi
  for(i=0; i+1 < max; ){
 50e:	eb 31                	jmp    541 <gets+0x41>
    cc = read(0, &c, 1);
 510:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 517:	00 
 518:	89 7c 24 04          	mov    %edi,0x4(%esp)
 51c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 523:	e8 0a 01 00 00       	call   632 <read>
    if(cc < 1)
 528:	85 c0                	test   %eax,%eax
 52a:	7e 1d                	jle    549 <gets+0x49>
      break;
    buf[i++] = c;
 52c:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
  for(i=0; i+1 < max; ){
 530:	89 de                	mov    %ebx,%esi
    buf[i++] = c;
 532:	8b 55 08             	mov    0x8(%ebp),%edx
    if(c == '\n' || c == '\r')
 535:	3c 0d                	cmp    $0xd,%al
    buf[i++] = c;
 537:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 53b:	74 0c                	je     549 <gets+0x49>
 53d:	3c 0a                	cmp    $0xa,%al
 53f:	74 08                	je     549 <gets+0x49>
  for(i=0; i+1 < max; ){
 541:	8d 5e 01             	lea    0x1(%esi),%ebx
 544:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 547:	7c c7                	jl     510 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 549:	8b 45 08             	mov    0x8(%ebp),%eax
 54c:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 550:	83 c4 2c             	add    $0x2c,%esp
 553:	5b                   	pop    %ebx
 554:	5e                   	pop    %esi
 555:	5f                   	pop    %edi
 556:	5d                   	pop    %ebp
 557:	c3                   	ret    
 558:	90                   	nop
 559:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000560 <stat>:

int
stat(const char *n, struct stat *st)
{
 560:	55                   	push   %ebp
 561:	89 e5                	mov    %esp,%ebp
 563:	56                   	push   %esi
 564:	53                   	push   %ebx
 565:	83 ec 10             	sub    $0x10,%esp
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 568:	8b 45 08             	mov    0x8(%ebp),%eax
 56b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 572:	00 
 573:	89 04 24             	mov    %eax,(%esp)
 576:	e8 df 00 00 00       	call   65a <open>
  if(fd < 0)
 57b:	85 c0                	test   %eax,%eax
  fd = open(n, O_RDONLY);
 57d:	89 c3                	mov    %eax,%ebx
  if(fd < 0)
 57f:	78 27                	js     5a8 <stat+0x48>
    return -1;
  r = fstat(fd, st);
 581:	8b 45 0c             	mov    0xc(%ebp),%eax
 584:	89 1c 24             	mov    %ebx,(%esp)
 587:	89 44 24 04          	mov    %eax,0x4(%esp)
 58b:	e8 e2 00 00 00       	call   672 <fstat>
  close(fd);
 590:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 593:	89 c6                	mov    %eax,%esi
  close(fd);
 595:	e8 a8 00 00 00       	call   642 <close>
  return r;
 59a:	89 f0                	mov    %esi,%eax
}
 59c:	83 c4 10             	add    $0x10,%esp
 59f:	5b                   	pop    %ebx
 5a0:	5e                   	pop    %esi
 5a1:	5d                   	pop    %ebp
 5a2:	c3                   	ret    
 5a3:	90                   	nop
 5a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    return -1;
 5a8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 5ad:	eb ed                	jmp    59c <stat+0x3c>
 5af:	90                   	nop

000005b0 <atoi>:

int
atoi(const char *s)
{
 5b0:	55                   	push   %ebp
 5b1:	89 e5                	mov    %esp,%ebp
 5b3:	8b 4d 08             	mov    0x8(%ebp),%ecx
 5b6:	53                   	push   %ebx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 5b7:	0f be 11             	movsbl (%ecx),%edx
 5ba:	8d 42 d0             	lea    -0x30(%edx),%eax
 5bd:	3c 09                	cmp    $0x9,%al
  n = 0;
 5bf:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
 5c4:	77 17                	ja     5dd <atoi+0x2d>
 5c6:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 5c8:	83 c1 01             	add    $0x1,%ecx
 5cb:	8d 04 80             	lea    (%eax,%eax,4),%eax
 5ce:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
  while('0' <= *s && *s <= '9')
 5d2:	0f be 11             	movsbl (%ecx),%edx
 5d5:	8d 5a d0             	lea    -0x30(%edx),%ebx
 5d8:	80 fb 09             	cmp    $0x9,%bl
 5db:	76 eb                	jbe    5c8 <atoi+0x18>
  return n;
}
 5dd:	5b                   	pop    %ebx
 5de:	5d                   	pop    %ebp
 5df:	c3                   	ret    

000005e0 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 5e0:	55                   	push   %ebp
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 5e1:	31 d2                	xor    %edx,%edx
{
 5e3:	89 e5                	mov    %esp,%ebp
 5e5:	56                   	push   %esi
 5e6:	8b 45 08             	mov    0x8(%ebp),%eax
 5e9:	53                   	push   %ebx
 5ea:	8b 5d 10             	mov    0x10(%ebp),%ebx
 5ed:	8b 75 0c             	mov    0xc(%ebp),%esi
  while(n-- > 0)
 5f0:	85 db                	test   %ebx,%ebx
 5f2:	7e 12                	jle    606 <memmove+0x26>
 5f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
 5f8:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
 5fc:	88 0c 10             	mov    %cl,(%eax,%edx,1)
 5ff:	83 c2 01             	add    $0x1,%edx
  while(n-- > 0)
 602:	39 da                	cmp    %ebx,%edx
 604:	75 f2                	jne    5f8 <memmove+0x18>
  return vdst;
}
 606:	5b                   	pop    %ebx
 607:	5e                   	pop    %esi
 608:	5d                   	pop    %ebp
 609:	c3                   	ret    

0000060a <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 60a:	b8 01 00 00 00       	mov    $0x1,%eax
 60f:	cd 40                	int    $0x40
 611:	c3                   	ret    

00000612 <exit>:
SYSCALL(exit)
 612:	b8 02 00 00 00       	mov    $0x2,%eax
 617:	cd 40                	int    $0x40
 619:	c3                   	ret    

0000061a <wait>:
SYSCALL(wait)
 61a:	b8 03 00 00 00       	mov    $0x3,%eax
 61f:	cd 40                	int    $0x40
 621:	c3                   	ret    

00000622 <waitpid>:
SYSCALL(waitpid)
 622:	b8 16 00 00 00       	mov    $0x16,%eax
 627:	cd 40                	int    $0x40
 629:	c3                   	ret    

0000062a <pipe>:
SYSCALL(pipe)
 62a:	b8 04 00 00 00       	mov    $0x4,%eax
 62f:	cd 40                	int    $0x40
 631:	c3                   	ret    

00000632 <read>:
SYSCALL(read)
 632:	b8 05 00 00 00       	mov    $0x5,%eax
 637:	cd 40                	int    $0x40
 639:	c3                   	ret    

0000063a <write>:
SYSCALL(write)
 63a:	b8 10 00 00 00       	mov    $0x10,%eax
 63f:	cd 40                	int    $0x40
 641:	c3                   	ret    

00000642 <close>:
SYSCALL(close)
 642:	b8 15 00 00 00       	mov    $0x15,%eax
 647:	cd 40                	int    $0x40
 649:	c3                   	ret    

0000064a <kill>:
SYSCALL(kill)
 64a:	b8 06 00 00 00       	mov    $0x6,%eax
 64f:	cd 40                	int    $0x40
 651:	c3                   	ret    

00000652 <exec>:
SYSCALL(exec)
 652:	b8 07 00 00 00       	mov    $0x7,%eax
 657:	cd 40                	int    $0x40
 659:	c3                   	ret    

0000065a <open>:
SYSCALL(open)
 65a:	b8 0f 00 00 00       	mov    $0xf,%eax
 65f:	cd 40                	int    $0x40
 661:	c3                   	ret    

00000662 <mknod>:
SYSCALL(mknod)
 662:	b8 11 00 00 00       	mov    $0x11,%eax
 667:	cd 40                	int    $0x40
 669:	c3                   	ret    

0000066a <unlink>:
SYSCALL(unlink)
 66a:	b8 12 00 00 00       	mov    $0x12,%eax
 66f:	cd 40                	int    $0x40
 671:	c3                   	ret    

00000672 <fstat>:
SYSCALL(fstat)
 672:	b8 08 00 00 00       	mov    $0x8,%eax
 677:	cd 40                	int    $0x40
 679:	c3                   	ret    

0000067a <link>:
SYSCALL(link)
 67a:	b8 13 00 00 00       	mov    $0x13,%eax
 67f:	cd 40                	int    $0x40
 681:	c3                   	ret    

00000682 <mkdir>:
SYSCALL(mkdir)
 682:	b8 14 00 00 00       	mov    $0x14,%eax
 687:	cd 40                	int    $0x40
 689:	c3                   	ret    

0000068a <chdir>:
SYSCALL(chdir)
 68a:	b8 09 00 00 00       	mov    $0x9,%eax
 68f:	cd 40                	int    $0x40
 691:	c3                   	ret    

00000692 <dup>:
SYSCALL(dup)
 692:	b8 0a 00 00 00       	mov    $0xa,%eax
 697:	cd 40                	int    $0x40
 699:	c3                   	ret    

0000069a <getpid>:
SYSCALL(getpid)
 69a:	b8 0b 00 00 00       	mov    $0xb,%eax
 69f:	cd 40                	int    $0x40
 6a1:	c3                   	ret    

000006a2 <sbrk>:
SYSCALL(sbrk)
 6a2:	b8 0c 00 00 00       	mov    $0xc,%eax
 6a7:	cd 40                	int    $0x40
 6a9:	c3                   	ret    

000006aa <sleep>:
SYSCALL(sleep)
 6aa:	b8 0d 00 00 00       	mov    $0xd,%eax
 6af:	cd 40                	int    $0x40
 6b1:	c3                   	ret    

000006b2 <uptime>:
SYSCALL(uptime)
 6b2:	b8 0e 00 00 00       	mov    $0xe,%eax
 6b7:	cd 40                	int    $0x40
 6b9:	c3                   	ret    
 6ba:	66 90                	xchg   %ax,%ax
 6bc:	66 90                	xchg   %ax,%ax
 6be:	66 90                	xchg   %ax,%ax

000006c0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 6c0:	55                   	push   %ebp
 6c1:	89 e5                	mov    %esp,%ebp
 6c3:	57                   	push   %edi
 6c4:	56                   	push   %esi
 6c5:	89 c6                	mov    %eax,%esi
 6c7:	53                   	push   %ebx
 6c8:	83 ec 4c             	sub    $0x4c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
 6cb:	8b 5d 08             	mov    0x8(%ebp),%ebx
 6ce:	85 db                	test   %ebx,%ebx
 6d0:	74 09                	je     6db <printint+0x1b>
 6d2:	89 d0                	mov    %edx,%eax
 6d4:	c1 e8 1f             	shr    $0x1f,%eax
 6d7:	84 c0                	test   %al,%al
 6d9:	75 75                	jne    750 <printint+0x90>
    neg = 1;
    x = -xx;
  } else {
    x = xx;
 6db:	89 d0                	mov    %edx,%eax
  neg = 0;
 6dd:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
 6e4:	89 75 c0             	mov    %esi,-0x40(%ebp)
  }

  i = 0;
 6e7:	31 ff                	xor    %edi,%edi
 6e9:	89 ce                	mov    %ecx,%esi
 6eb:	8d 5d d7             	lea    -0x29(%ebp),%ebx
 6ee:	eb 02                	jmp    6f2 <printint+0x32>
  do{
    buf[i++] = digits[x % base];
 6f0:	89 cf                	mov    %ecx,%edi
 6f2:	31 d2                	xor    %edx,%edx
 6f4:	f7 f6                	div    %esi
 6f6:	8d 4f 01             	lea    0x1(%edi),%ecx
 6f9:	0f b6 92 46 0d 00 00 	movzbl 0xd46(%edx),%edx
  }while((x /= base) != 0);
 700:	85 c0                	test   %eax,%eax
    buf[i++] = digits[x % base];
 702:	88 14 0b             	mov    %dl,(%ebx,%ecx,1)
  }while((x /= base) != 0);
 705:	75 e9                	jne    6f0 <printint+0x30>
  if(neg)
 707:	8b 55 c4             	mov    -0x3c(%ebp),%edx
    buf[i++] = digits[x % base];
 70a:	89 c8                	mov    %ecx,%eax
 70c:	8b 75 c0             	mov    -0x40(%ebp),%esi
  if(neg)
 70f:	85 d2                	test   %edx,%edx
 711:	74 08                	je     71b <printint+0x5b>
    buf[i++] = '-';
 713:	8d 4f 02             	lea    0x2(%edi),%ecx
 716:	c6 44 05 d8 2d       	movb   $0x2d,-0x28(%ebp,%eax,1)

  while(--i >= 0)
 71b:	8d 79 ff             	lea    -0x1(%ecx),%edi
 71e:	66 90                	xchg   %ax,%ax
 720:	0f b6 44 3d d8       	movzbl -0x28(%ebp,%edi,1),%eax
 725:	83 ef 01             	sub    $0x1,%edi
  write(fd, &c, 1);
 728:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 72f:	00 
 730:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 734:	89 34 24             	mov    %esi,(%esp)
 737:	88 45 d7             	mov    %al,-0x29(%ebp)
 73a:	e8 fb fe ff ff       	call   63a <write>
  while(--i >= 0)
 73f:	83 ff ff             	cmp    $0xffffffff,%edi
 742:	75 dc                	jne    720 <printint+0x60>
    putc(fd, buf[i]);
}
 744:	83 c4 4c             	add    $0x4c,%esp
 747:	5b                   	pop    %ebx
 748:	5e                   	pop    %esi
 749:	5f                   	pop    %edi
 74a:	5d                   	pop    %ebp
 74b:	c3                   	ret    
 74c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    x = -xx;
 750:	89 d0                	mov    %edx,%eax
 752:	f7 d8                	neg    %eax
    neg = 1;
 754:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
 75b:	eb 87                	jmp    6e4 <printint+0x24>
 75d:	8d 76 00             	lea    0x0(%esi),%esi

00000760 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 760:	55                   	push   %ebp
 761:	89 e5                	mov    %esp,%ebp
 763:	57                   	push   %edi
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
 764:	31 ff                	xor    %edi,%edi
{
 766:	56                   	push   %esi
 767:	53                   	push   %ebx
 768:	83 ec 3c             	sub    $0x3c,%esp
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 76b:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  ap = (uint*)(void*)&fmt + 1;
 76e:	8d 45 10             	lea    0x10(%ebp),%eax
{
 771:	8b 75 08             	mov    0x8(%ebp),%esi
  ap = (uint*)(void*)&fmt + 1;
 774:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  for(i = 0; fmt[i]; i++){
 777:	0f b6 13             	movzbl (%ebx),%edx
 77a:	83 c3 01             	add    $0x1,%ebx
 77d:	84 d2                	test   %dl,%dl
 77f:	75 39                	jne    7ba <printf+0x5a>
 781:	e9 c2 00 00 00       	jmp    848 <printf+0xe8>
 786:	66 90                	xchg   %ax,%ax
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 788:	83 fa 25             	cmp    $0x25,%edx
 78b:	0f 84 bf 00 00 00    	je     850 <printf+0xf0>
  write(fd, &c, 1);
 791:	8d 45 e2             	lea    -0x1e(%ebp),%eax
 794:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 79b:	00 
 79c:	89 44 24 04          	mov    %eax,0x4(%esp)
 7a0:	89 34 24             	mov    %esi,(%esp)
        state = '%';
      } else {
        putc(fd, c);
 7a3:	88 55 e2             	mov    %dl,-0x1e(%ebp)
  write(fd, &c, 1);
 7a6:	e8 8f fe ff ff       	call   63a <write>
 7ab:	83 c3 01             	add    $0x1,%ebx
  for(i = 0; fmt[i]; i++){
 7ae:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
 7b2:	84 d2                	test   %dl,%dl
 7b4:	0f 84 8e 00 00 00    	je     848 <printf+0xe8>
    if(state == 0){
 7ba:	85 ff                	test   %edi,%edi
    c = fmt[i] & 0xff;
 7bc:	0f be c2             	movsbl %dl,%eax
    if(state == 0){
 7bf:	74 c7                	je     788 <printf+0x28>
      }
    } else if(state == '%'){
 7c1:	83 ff 25             	cmp    $0x25,%edi
 7c4:	75 e5                	jne    7ab <printf+0x4b>
      if(c == 'd'){
 7c6:	83 fa 64             	cmp    $0x64,%edx
 7c9:	0f 84 31 01 00 00    	je     900 <printf+0x1a0>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
 7cf:	25 f7 00 00 00       	and    $0xf7,%eax
 7d4:	83 f8 70             	cmp    $0x70,%eax
 7d7:	0f 84 83 00 00 00    	je     860 <printf+0x100>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
 7dd:	83 fa 73             	cmp    $0x73,%edx
 7e0:	0f 84 a2 00 00 00    	je     888 <printf+0x128>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
 7e6:	83 fa 63             	cmp    $0x63,%edx
 7e9:	0f 84 35 01 00 00    	je     924 <printf+0x1c4>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
 7ef:	83 fa 25             	cmp    $0x25,%edx
 7f2:	0f 84 e0 00 00 00    	je     8d8 <printf+0x178>
  write(fd, &c, 1);
 7f8:	8d 45 e6             	lea    -0x1a(%ebp),%eax
 7fb:	83 c3 01             	add    $0x1,%ebx
 7fe:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 805:	00 
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 806:	31 ff                	xor    %edi,%edi
  write(fd, &c, 1);
 808:	89 44 24 04          	mov    %eax,0x4(%esp)
 80c:	89 34 24             	mov    %esi,(%esp)
 80f:	89 55 d0             	mov    %edx,-0x30(%ebp)
 812:	c6 45 e6 25          	movb   $0x25,-0x1a(%ebp)
 816:	e8 1f fe ff ff       	call   63a <write>
        putc(fd, c);
 81b:	8b 55 d0             	mov    -0x30(%ebp),%edx
  write(fd, &c, 1);
 81e:	8d 45 e7             	lea    -0x19(%ebp),%eax
 821:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 828:	00 
 829:	89 44 24 04          	mov    %eax,0x4(%esp)
 82d:	89 34 24             	mov    %esi,(%esp)
        putc(fd, c);
 830:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 833:	e8 02 fe ff ff       	call   63a <write>
  for(i = 0; fmt[i]; i++){
 838:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
 83c:	84 d2                	test   %dl,%dl
 83e:	0f 85 76 ff ff ff    	jne    7ba <printf+0x5a>
 844:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    }
  }
}
 848:	83 c4 3c             	add    $0x3c,%esp
 84b:	5b                   	pop    %ebx
 84c:	5e                   	pop    %esi
 84d:	5f                   	pop    %edi
 84e:	5d                   	pop    %ebp
 84f:	c3                   	ret    
        state = '%';
 850:	bf 25 00 00 00       	mov    $0x25,%edi
 855:	e9 51 ff ff ff       	jmp    7ab <printf+0x4b>
 85a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 860:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 863:	b9 10 00 00 00       	mov    $0x10,%ecx
      state = 0;
 868:	31 ff                	xor    %edi,%edi
        printint(fd, *ap, 16, 0);
 86a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 871:	8b 10                	mov    (%eax),%edx
 873:	89 f0                	mov    %esi,%eax
 875:	e8 46 fe ff ff       	call   6c0 <printint>
        ap++;
 87a:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
 87e:	e9 28 ff ff ff       	jmp    7ab <printf+0x4b>
 883:	90                   	nop
 884:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 888:	8b 45 d4             	mov    -0x2c(%ebp),%eax
        ap++;
 88b:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
        s = (char*)*ap;
 88f:	8b 38                	mov    (%eax),%edi
          s = "(null)";
 891:	b8 3f 0d 00 00       	mov    $0xd3f,%eax
 896:	85 ff                	test   %edi,%edi
 898:	0f 44 f8             	cmove  %eax,%edi
        while(*s != 0){
 89b:	0f b6 07             	movzbl (%edi),%eax
 89e:	84 c0                	test   %al,%al
 8a0:	74 2a                	je     8cc <printf+0x16c>
 8a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8a8:	88 45 e3             	mov    %al,-0x1d(%ebp)
  write(fd, &c, 1);
 8ab:	8d 45 e3             	lea    -0x1d(%ebp),%eax
          s++;
 8ae:	83 c7 01             	add    $0x1,%edi
  write(fd, &c, 1);
 8b1:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 8b8:	00 
 8b9:	89 44 24 04          	mov    %eax,0x4(%esp)
 8bd:	89 34 24             	mov    %esi,(%esp)
 8c0:	e8 75 fd ff ff       	call   63a <write>
        while(*s != 0){
 8c5:	0f b6 07             	movzbl (%edi),%eax
 8c8:	84 c0                	test   %al,%al
 8ca:	75 dc                	jne    8a8 <printf+0x148>
      state = 0;
 8cc:	31 ff                	xor    %edi,%edi
 8ce:	e9 d8 fe ff ff       	jmp    7ab <printf+0x4b>
 8d3:	90                   	nop
 8d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  write(fd, &c, 1);
 8d8:	8d 45 e5             	lea    -0x1b(%ebp),%eax
      state = 0;
 8db:	31 ff                	xor    %edi,%edi
  write(fd, &c, 1);
 8dd:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 8e4:	00 
 8e5:	89 44 24 04          	mov    %eax,0x4(%esp)
 8e9:	89 34 24             	mov    %esi,(%esp)
 8ec:	c6 45 e5 25          	movb   $0x25,-0x1b(%ebp)
 8f0:	e8 45 fd ff ff       	call   63a <write>
 8f5:	e9 b1 fe ff ff       	jmp    7ab <printf+0x4b>
 8fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 900:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 903:	b9 0a 00 00 00       	mov    $0xa,%ecx
      state = 0;
 908:	66 31 ff             	xor    %di,%di
        printint(fd, *ap, 10, 1);
 90b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 912:	8b 10                	mov    (%eax),%edx
 914:	89 f0                	mov    %esi,%eax
 916:	e8 a5 fd ff ff       	call   6c0 <printint>
        ap++;
 91b:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
 91f:	e9 87 fe ff ff       	jmp    7ab <printf+0x4b>
        putc(fd, *ap);
 924:	8b 45 d4             	mov    -0x2c(%ebp),%eax
      state = 0;
 927:	31 ff                	xor    %edi,%edi
        putc(fd, *ap);
 929:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 92b:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 932:	00 
 933:	89 34 24             	mov    %esi,(%esp)
        putc(fd, *ap);
 936:	88 45 e4             	mov    %al,-0x1c(%ebp)
  write(fd, &c, 1);
 939:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 93c:	89 44 24 04          	mov    %eax,0x4(%esp)
 940:	e8 f5 fc ff ff       	call   63a <write>
        ap++;
 945:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
 949:	e9 5d fe ff ff       	jmp    7ab <printf+0x4b>
 94e:	66 90                	xchg   %ax,%ax

00000950 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 950:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 951:	a1 14 10 00 00       	mov    0x1014,%eax
{
 956:	89 e5                	mov    %esp,%ebp
 958:	57                   	push   %edi
 959:	56                   	push   %esi
 95a:	53                   	push   %ebx
 95b:	8b 5d 08             	mov    0x8(%ebp),%ebx
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 95e:	8b 08                	mov    (%eax),%ecx
  bp = (Header*)ap - 1;
 960:	8d 53 f8             	lea    -0x8(%ebx),%edx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 963:	39 d0                	cmp    %edx,%eax
 965:	72 11                	jb     978 <free+0x28>
 967:	90                   	nop
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 968:	39 c8                	cmp    %ecx,%eax
 96a:	72 04                	jb     970 <free+0x20>
 96c:	39 ca                	cmp    %ecx,%edx
 96e:	72 10                	jb     980 <free+0x30>
 970:	89 c8                	mov    %ecx,%eax
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 972:	39 d0                	cmp    %edx,%eax
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 974:	8b 08                	mov    (%eax),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 976:	73 f0                	jae    968 <free+0x18>
 978:	39 ca                	cmp    %ecx,%edx
 97a:	72 04                	jb     980 <free+0x30>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 97c:	39 c8                	cmp    %ecx,%eax
 97e:	72 f0                	jb     970 <free+0x20>
      break;
  if(bp + bp->s.size == p->s.ptr){
 980:	8b 73 fc             	mov    -0x4(%ebx),%esi
 983:	8d 3c f2             	lea    (%edx,%esi,8),%edi
 986:	39 cf                	cmp    %ecx,%edi
 988:	74 1e                	je     9a8 <free+0x58>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
 98a:	89 4b f8             	mov    %ecx,-0x8(%ebx)
  if(p + p->s.size == bp){
 98d:	8b 48 04             	mov    0x4(%eax),%ecx
 990:	8d 34 c8             	lea    (%eax,%ecx,8),%esi
 993:	39 f2                	cmp    %esi,%edx
 995:	74 28                	je     9bf <free+0x6f>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
 997:	89 10                	mov    %edx,(%eax)
  freep = p;
 999:	a3 14 10 00 00       	mov    %eax,0x1014
}
 99e:	5b                   	pop    %ebx
 99f:	5e                   	pop    %esi
 9a0:	5f                   	pop    %edi
 9a1:	5d                   	pop    %ebp
 9a2:	c3                   	ret    
 9a3:	90                   	nop
 9a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    bp->s.size += p->s.ptr->s.size;
 9a8:	03 71 04             	add    0x4(%ecx),%esi
 9ab:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 9ae:	8b 08                	mov    (%eax),%ecx
 9b0:	8b 09                	mov    (%ecx),%ecx
 9b2:	89 4b f8             	mov    %ecx,-0x8(%ebx)
  if(p + p->s.size == bp){
 9b5:	8b 48 04             	mov    0x4(%eax),%ecx
 9b8:	8d 34 c8             	lea    (%eax,%ecx,8),%esi
 9bb:	39 f2                	cmp    %esi,%edx
 9bd:	75 d8                	jne    997 <free+0x47>
    p->s.size += bp->s.size;
 9bf:	03 4b fc             	add    -0x4(%ebx),%ecx
  freep = p;
 9c2:	a3 14 10 00 00       	mov    %eax,0x1014
    p->s.size += bp->s.size;
 9c7:	89 48 04             	mov    %ecx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
 9ca:	8b 53 f8             	mov    -0x8(%ebx),%edx
 9cd:	89 10                	mov    %edx,(%eax)
}
 9cf:	5b                   	pop    %ebx
 9d0:	5e                   	pop    %esi
 9d1:	5f                   	pop    %edi
 9d2:	5d                   	pop    %ebp
 9d3:	c3                   	ret    
 9d4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 9da:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000009e0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 9e0:	55                   	push   %ebp
 9e1:	89 e5                	mov    %esp,%ebp
 9e3:	57                   	push   %edi
 9e4:	56                   	push   %esi
 9e5:	53                   	push   %ebx
 9e6:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 9e9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 9ec:	8b 1d 14 10 00 00    	mov    0x1014,%ebx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 9f2:	8d 48 07             	lea    0x7(%eax),%ecx
 9f5:	c1 e9 03             	shr    $0x3,%ecx
  if((prevp = freep) == 0){
 9f8:	85 db                	test   %ebx,%ebx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 9fa:	8d 71 01             	lea    0x1(%ecx),%esi
  if((prevp = freep) == 0){
 9fd:	0f 84 9b 00 00 00    	je     a9e <malloc+0xbe>
 a03:	8b 13                	mov    (%ebx),%edx
 a05:	8b 7a 04             	mov    0x4(%edx),%edi
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
 a08:	39 fe                	cmp    %edi,%esi
 a0a:	76 64                	jbe    a70 <malloc+0x90>
 a0c:	8d 04 f5 00 00 00 00 	lea    0x0(,%esi,8),%eax
  if(nu < 4096)
 a13:	bb 00 80 00 00       	mov    $0x8000,%ebx
 a18:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 a1b:	eb 0e                	jmp    a2b <malloc+0x4b>
 a1d:	8d 76 00             	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 a20:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 a22:	8b 78 04             	mov    0x4(%eax),%edi
 a25:	39 fe                	cmp    %edi,%esi
 a27:	76 4f                	jbe    a78 <malloc+0x98>
 a29:	89 c2                	mov    %eax,%edx
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 a2b:	3b 15 14 10 00 00    	cmp    0x1014,%edx
 a31:	75 ed                	jne    a20 <malloc+0x40>
  if(nu < 4096)
 a33:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 a36:	81 fe 00 10 00 00    	cmp    $0x1000,%esi
 a3c:	bf 00 10 00 00       	mov    $0x1000,%edi
 a41:	0f 43 fe             	cmovae %esi,%edi
 a44:	0f 42 c3             	cmovb  %ebx,%eax
  p = sbrk(nu * sizeof(Header));
 a47:	89 04 24             	mov    %eax,(%esp)
 a4a:	e8 53 fc ff ff       	call   6a2 <sbrk>
  if(p == (char*)-1)
 a4f:	83 f8 ff             	cmp    $0xffffffff,%eax
 a52:	74 18                	je     a6c <malloc+0x8c>
  hp->s.size = nu;
 a54:	89 78 04             	mov    %edi,0x4(%eax)
  free((void*)(hp + 1));
 a57:	83 c0 08             	add    $0x8,%eax
 a5a:	89 04 24             	mov    %eax,(%esp)
 a5d:	e8 ee fe ff ff       	call   950 <free>
  return freep;
 a62:	8b 15 14 10 00 00    	mov    0x1014,%edx
      if((p = morecore(nunits)) == 0)
 a68:	85 d2                	test   %edx,%edx
 a6a:	75 b4                	jne    a20 <malloc+0x40>
        return 0;
 a6c:	31 c0                	xor    %eax,%eax
 a6e:	eb 20                	jmp    a90 <malloc+0xb0>
    if(p->s.size >= nunits){
 a70:	89 d0                	mov    %edx,%eax
 a72:	89 da                	mov    %ebx,%edx
 a74:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      if(p->s.size == nunits)
 a78:	39 fe                	cmp    %edi,%esi
 a7a:	74 1c                	je     a98 <malloc+0xb8>
        p->s.size -= nunits;
 a7c:	29 f7                	sub    %esi,%edi
 a7e:	89 78 04             	mov    %edi,0x4(%eax)
        p += p->s.size;
 a81:	8d 04 f8             	lea    (%eax,%edi,8),%eax
        p->s.size = nunits;
 a84:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 a87:	89 15 14 10 00 00    	mov    %edx,0x1014
      return (void*)(p + 1);
 a8d:	83 c0 08             	add    $0x8,%eax
  }
}
 a90:	83 c4 1c             	add    $0x1c,%esp
 a93:	5b                   	pop    %ebx
 a94:	5e                   	pop    %esi
 a95:	5f                   	pop    %edi
 a96:	5d                   	pop    %ebp
 a97:	c3                   	ret    
        prevp->s.ptr = p->s.ptr;
 a98:	8b 08                	mov    (%eax),%ecx
 a9a:	89 0a                	mov    %ecx,(%edx)
 a9c:	eb e9                	jmp    a87 <malloc+0xa7>
    base.s.ptr = freep = prevp = &base;
 a9e:	c7 05 14 10 00 00 18 	movl   $0x1018,0x1014
 aa5:	10 00 00 
    base.s.size = 0;
 aa8:	ba 18 10 00 00       	mov    $0x1018,%edx
    base.s.ptr = freep = prevp = &base;
 aad:	c7 05 18 10 00 00 18 	movl   $0x1018,0x1018
 ab4:	10 00 00 
    base.s.size = 0;
 ab7:	c7 05 1c 10 00 00 00 	movl   $0x0,0x101c
 abe:	00 00 00 
 ac1:	e9 46 ff ff ff       	jmp    a0c <malloc+0x2c>
