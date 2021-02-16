
_usertests:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
  return randstate;
}

int
main(int argc, char *argv[])
{
       0:	55                   	push   %ebp
       1:	89 e5                	mov    %esp,%ebp
       3:	83 e4 f0             	and    $0xfffffff0,%esp
       6:	83 ec 10             	sub    $0x10,%esp
  printf(1, "usertests starting\n");
       9:	c7 44 24 04 56 54 00 	movl   $0x5456,0x4(%esp)
      10:	00 
      11:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
      18:	e8 e3 40 00 00       	call   4100 <printf>

  if(open("usertests.ran", 0) >= 0){
      1d:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
      24:	00 
      25:	c7 04 24 6a 54 00 00 	movl   $0x546a,(%esp)
      2c:	e8 c9 3f 00 00       	call   3ffa <open>
      31:	85 c0                	test   %eax,%eax
      33:	78 20                	js     55 <main+0x55>
    printf(1, "already ran user tests -- rebuild fs.img\n");
      35:	c7 44 24 04 d4 5b 00 	movl   $0x5bd4,0x4(%esp)
      3c:	00 
      3d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
      44:	e8 b7 40 00 00       	call   4100 <printf>
    exit(1);
      49:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
      50:	e8 5d 3f 00 00       	call   3fb2 <exit>
  }
  close(open("usertests.ran", O_CREATE));
      55:	c7 44 24 04 00 02 00 	movl   $0x200,0x4(%esp)
      5c:	00 
      5d:	c7 04 24 6a 54 00 00 	movl   $0x546a,(%esp)
      64:	e8 91 3f 00 00       	call   3ffa <open>
      69:	89 04 24             	mov    %eax,(%esp)
      6c:	e8 71 3f 00 00       	call   3fe2 <close>

  argptest();
      71:	e8 6a 3c 00 00       	call   3ce0 <argptest>
  createdelete();
      76:	e8 95 12 00 00       	call   1310 <createdelete>
      7b:	90                   	nop
      7c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  linkunlink();
      80:	e8 0b 1d 00 00       	call   1d90 <linkunlink>
  concreate();
      85:	e8 a6 19 00 00       	call   1a30 <concreate>
  fourfiles();
      8a:	e8 21 10 00 00       	call   10b0 <fourfiles>
      8f:	90                   	nop
  sharedfd();
      90:	e8 2b 0e 00 00       	call   ec0 <sharedfd>

  bigargtest();
      95:	e8 86 38 00 00       	call   3920 <bigargtest>
  bigwrite();
      9a:	e8 f1 27 00 00       	call   2890 <bigwrite>
      9f:	90                   	nop
  bigargtest();
      a0:	e8 7b 38 00 00       	call   3920 <bigargtest>
  bsstest();
      a5:	e8 f6 37 00 00       	call   38a0 <bsstest>
  sbrktest();
      aa:	e8 01 33 00 00       	call   33b0 <sbrktest>
      af:	90                   	nop
  validatetest();
      b0:	e8 2b 37 00 00       	call   37e0 <validatetest>

  opentest();
      b5:	e8 26 03 00 00       	call   3e0 <opentest>
  writetest();
      ba:	e8 d1 03 00 00       	call   490 <writetest>
      bf:	90                   	nop
  writetest1();
      c0:	e8 9b 05 00 00       	call   660 <writetest1>
  createtest();
      c5:	e8 56 07 00 00       	call   820 <createtest>

  openiputtest();
      ca:	e8 11 02 00 00       	call   2e0 <openiputtest>
      cf:	90                   	nop
  exitiputtest();
      d0:	e8 2b 01 00 00       	call   200 <exitiputtest>
  iputtest();
      d5:	e8 66 00 00 00       	call   140 <iputtest>

  mem();
      da:	e8 01 0d 00 00       	call   de0 <mem>
      df:	90                   	nop
  pipe1();
      e0:	e8 0b 09 00 00       	call   9f0 <pipe1>
  preempt();
      e5:	e8 f6 0a 00 00       	call   be0 <preempt>
  exitwait();
      ea:	e8 61 0c 00 00       	call   d50 <exitwait>
      ef:	90                   	nop

  rmdot();
      f0:	e8 5b 2c 00 00       	call   2d50 <rmdot>
  fourteen();
      f5:	e8 d6 2a 00 00       	call   2bd0 <fourteen>
  bigfile();
      fa:	e8 a1 28 00 00       	call   29a0 <bigfile>
      ff:	90                   	nop
  subdir();
     100:	e8 0b 1f 00 00       	call   2010 <subdir>
  linktest();
     105:	e8 86 16 00 00       	call   1790 <linktest>
  unlinkread();
     10a:	e8 81 14 00 00       	call   1590 <unlinkread>
     10f:	90                   	nop
  dirfile();
     110:	e8 0b 2e 00 00       	call   2f20 <dirfile>
  iref();
     115:	e8 86 30 00 00       	call   31a0 <iref>
  forktest();
     11a:	e8 b1 31 00 00       	call   32d0 <forktest>
     11f:	90                   	nop
  bigdir(); // slow
     120:	e8 8b 1d 00 00       	call   1eb0 <bigdir>

  uio();
     125:	e8 16 3b 00 00       	call   3c40 <uio>

  exectest();
     12a:	e8 61 08 00 00       	call   990 <exectest>

  exit(0);
     12f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     136:	e8 77 3e 00 00       	call   3fb2 <exit>
     13b:	66 90                	xchg   %ax,%ax
     13d:	66 90                	xchg   %ax,%ax
     13f:	90                   	nop

00000140 <iputtest>:
{
     140:	55                   	push   %ebp
     141:	89 e5                	mov    %esp,%ebp
     143:	83 ec 18             	sub    $0x18,%esp
  printf(stdout, "iput test\n");
     146:	a1 e4 64 00 00       	mov    0x64e4,%eax
     14b:	c7 44 24 04 fc 44 00 	movl   $0x44fc,0x4(%esp)
     152:	00 
     153:	89 04 24             	mov    %eax,(%esp)
     156:	e8 a5 3f 00 00       	call   4100 <printf>
  if(mkdir("iputdir") < 0){
     15b:	c7 04 24 8f 44 00 00 	movl   $0x448f,(%esp)
     162:	e8 bb 3e 00 00       	call   4022 <mkdir>
     167:	85 c0                	test   %eax,%eax
     169:	78 47                	js     1b2 <iputtest+0x72>
  if(chdir("iputdir") < 0){
     16b:	c7 04 24 8f 44 00 00 	movl   $0x448f,(%esp)
     172:	e8 b3 3e 00 00       	call   402a <chdir>
     177:	85 c0                	test   %eax,%eax
     179:	78 6c                	js     1e7 <iputtest+0xa7>
  if(unlink("../iputdir") < 0){
     17b:	c7 04 24 8c 44 00 00 	movl   $0x448c,(%esp)
     182:	e8 83 3e 00 00       	call   400a <unlink>
     187:	85 c0                	test   %eax,%eax
     189:	78 52                	js     1dd <iputtest+0x9d>
  if(chdir("/") < 0){
     18b:	c7 04 24 b1 44 00 00 	movl   $0x44b1,(%esp)
     192:	e8 93 3e 00 00       	call   402a <chdir>
     197:	85 c0                	test   %eax,%eax
     199:	78 38                	js     1d3 <iputtest+0x93>
  printf(stdout, "iput test ok\n");
     19b:	a1 e4 64 00 00       	mov    0x64e4,%eax
     1a0:	c7 44 24 04 34 45 00 	movl   $0x4534,0x4(%esp)
     1a7:	00 
     1a8:	89 04 24             	mov    %eax,(%esp)
     1ab:	e8 50 3f 00 00       	call   4100 <printf>
}
     1b0:	c9                   	leave  
     1b1:	c3                   	ret    
    printf(stdout, "mkdir failed\n");
     1b2:	c7 44 24 04 68 44 00 	movl   $0x4468,0x4(%esp)
     1b9:	00 
    printf(stdout, "chdir iputdir failed\n");
     1ba:	a1 e4 64 00 00       	mov    0x64e4,%eax
     1bf:	89 04 24             	mov    %eax,(%esp)
     1c2:	e8 39 3f 00 00       	call   4100 <printf>
    exit(1);
     1c7:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     1ce:	e8 df 3d 00 00       	call   3fb2 <exit>
    printf(stdout, "chdir / failed\n");
     1d3:	c7 44 24 04 b3 44 00 	movl   $0x44b3,0x4(%esp)
     1da:	00 
     1db:	eb dd                	jmp    1ba <iputtest+0x7a>
    printf(stdout, "unlink ../iputdir failed\n");
     1dd:	c7 44 24 04 97 44 00 	movl   $0x4497,0x4(%esp)
     1e4:	00 
     1e5:	eb d3                	jmp    1ba <iputtest+0x7a>
    printf(stdout, "chdir iputdir failed\n");
     1e7:	c7 44 24 04 76 44 00 	movl   $0x4476,0x4(%esp)
     1ee:	00 
     1ef:	eb c9                	jmp    1ba <iputtest+0x7a>
     1f1:	eb 0d                	jmp    200 <exitiputtest>
     1f3:	90                   	nop
     1f4:	90                   	nop
     1f5:	90                   	nop
     1f6:	90                   	nop
     1f7:	90                   	nop
     1f8:	90                   	nop
     1f9:	90                   	nop
     1fa:	90                   	nop
     1fb:	90                   	nop
     1fc:	90                   	nop
     1fd:	90                   	nop
     1fe:	90                   	nop
     1ff:	90                   	nop

00000200 <exitiputtest>:
{
     200:	55                   	push   %ebp
     201:	89 e5                	mov    %esp,%ebp
     203:	83 ec 18             	sub    $0x18,%esp
  printf(stdout, "exitiput test\n");
     206:	a1 e4 64 00 00       	mov    0x64e4,%eax
     20b:	c7 44 24 04 c3 44 00 	movl   $0x44c3,0x4(%esp)
     212:	00 
     213:	89 04 24             	mov    %eax,(%esp)
     216:	e8 e5 3e 00 00       	call   4100 <printf>
  pid = fork();
     21b:	e8 8a 3d 00 00       	call   3faa <fork>
  if(pid < 0){
     220:	85 c0                	test   %eax,%eax
     222:	0f 88 91 00 00 00    	js     2b9 <exitiputtest+0xb9>
  if(pid == 0){
     228:	75 46                	jne    270 <exitiputtest+0x70>
    if(mkdir("iputdir") < 0){
     22a:	c7 04 24 8f 44 00 00 	movl   $0x448f,(%esp)
     231:	e8 ec 3d 00 00       	call   4022 <mkdir>
     236:	85 c0                	test   %eax,%eax
     238:	0f 88 8f 00 00 00    	js     2cd <exitiputtest+0xcd>
    if(chdir("iputdir") < 0){
     23e:	c7 04 24 8f 44 00 00 	movl   $0x448f,(%esp)
     245:	e8 e0 3d 00 00       	call   402a <chdir>
     24a:	85 c0                	test   %eax,%eax
     24c:	78 75                	js     2c3 <exitiputtest+0xc3>
    if(unlink("../iputdir") < 0){
     24e:	c7 04 24 8c 44 00 00 	movl   $0x448c,(%esp)
     255:	e8 b0 3d 00 00       	call   400a <unlink>
     25a:	85 c0                	test   %eax,%eax
     25c:	78 3a                	js     298 <exitiputtest+0x98>
    exit(0); //otherwise not failed exit 0 
     25e:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     265:	e8 48 3d 00 00       	call   3fb2 <exit>
     26a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  wait(0);
     270:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     277:	e8 3e 3d 00 00       	call   3fba <wait>
  printf(stdout, "exitiput test ok\n");
     27c:	a1 e4 64 00 00       	mov    0x64e4,%eax
     281:	c7 44 24 04 e6 44 00 	movl   $0x44e6,0x4(%esp)
     288:	00 
     289:	89 04 24             	mov    %eax,(%esp)
     28c:	e8 6f 3e 00 00       	call   4100 <printf>
}
     291:	c9                   	leave  
     292:	c3                   	ret    
     293:	90                   	nop
     294:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      printf(stdout, "unlink ../iputdir failed\n");
     298:	c7 44 24 04 97 44 00 	movl   $0x4497,0x4(%esp)
     29f:	00 
      printf(stdout, "mkdir failed\n");
     2a0:	a1 e4 64 00 00       	mov    0x64e4,%eax
     2a5:	89 04 24             	mov    %eax,(%esp)
     2a8:	e8 53 3e 00 00       	call   4100 <printf>
      exit(1);
     2ad:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     2b4:	e8 f9 3c 00 00       	call   3fb2 <exit>
    printf(stdout, "fork failed\n");
     2b9:	c7 44 24 04 a9 53 00 	movl   $0x53a9,0x4(%esp)
     2c0:	00 
     2c1:	eb dd                	jmp    2a0 <exitiputtest+0xa0>
      printf(stdout, "child chdir failed\n");
     2c3:	c7 44 24 04 d2 44 00 	movl   $0x44d2,0x4(%esp)
     2ca:	00 
     2cb:	eb d3                	jmp    2a0 <exitiputtest+0xa0>
      printf(stdout, "mkdir failed\n");
     2cd:	c7 44 24 04 68 44 00 	movl   $0x4468,0x4(%esp)
     2d4:	00 
     2d5:	eb c9                	jmp    2a0 <exitiputtest+0xa0>
     2d7:	89 f6                	mov    %esi,%esi
     2d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000002e0 <openiputtest>:
{
     2e0:	55                   	push   %ebp
     2e1:	89 e5                	mov    %esp,%ebp
     2e3:	83 ec 18             	sub    $0x18,%esp
  printf(stdout, "openiput test\n");
     2e6:	a1 e4 64 00 00       	mov    0x64e4,%eax
     2eb:	c7 44 24 04 f8 44 00 	movl   $0x44f8,0x4(%esp)
     2f2:	00 
     2f3:	89 04 24             	mov    %eax,(%esp)
     2f6:	e8 05 3e 00 00       	call   4100 <printf>
  if(mkdir("oidir") < 0){
     2fb:	c7 04 24 07 45 00 00 	movl   $0x4507,(%esp)
     302:	e8 1b 3d 00 00       	call   4022 <mkdir>
     307:	85 c0                	test   %eax,%eax
     309:	0f 88 90 00 00 00    	js     39f <openiputtest+0xbf>
  pid = fork();
     30f:	e8 96 3c 00 00       	call   3faa <fork>
  if(pid < 0){
     314:	85 c0                	test   %eax,%eax
     316:	0f 88 a8 00 00 00    	js     3c4 <openiputtest+0xe4>
     31c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  if(pid == 0){
     320:	75 3e                	jne    360 <openiputtest+0x80>
    int fd = open("oidir", O_RDWR);
     322:	c7 44 24 04 02 00 00 	movl   $0x2,0x4(%esp)
     329:	00 
     32a:	c7 04 24 07 45 00 00 	movl   $0x4507,(%esp)
     331:	e8 c4 3c 00 00       	call   3ffa <open>
    if(fd >= 0){
     336:	85 c0                	test   %eax,%eax
     338:	78 7e                	js     3b8 <openiputtest+0xd8>
      printf(stdout, "open directory for write succeeded\n");
     33a:	a1 e4 64 00 00       	mov    0x64e4,%eax
     33f:	c7 44 24 04 8c 54 00 	movl   $0x548c,0x4(%esp)
     346:	00 
     347:	89 04 24             	mov    %eax,(%esp)
     34a:	e8 b1 3d 00 00       	call   4100 <printf>
      exit(0); //success 0
     34f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     356:	e8 57 3c 00 00       	call   3fb2 <exit>
     35b:	90                   	nop
     35c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  sleep(1);
     360:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     367:	e8 de 3c 00 00       	call   404a <sleep>
  if(unlink("oidir") != 0){
     36c:	c7 04 24 07 45 00 00 	movl   $0x4507,(%esp)
     373:	e8 92 3c 00 00       	call   400a <unlink>
     378:	85 c0                	test   %eax,%eax
     37a:	75 52                	jne    3ce <openiputtest+0xee>
  wait(0);
     37c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     383:	e8 32 3c 00 00       	call   3fba <wait>
  printf(stdout, "openiput test ok\n");
     388:	a1 e4 64 00 00       	mov    0x64e4,%eax
     38d:	c7 44 24 04 30 45 00 	movl   $0x4530,0x4(%esp)
     394:	00 
     395:	89 04 24             	mov    %eax,(%esp)
     398:	e8 63 3d 00 00       	call   4100 <printf>
}
     39d:	c9                   	leave  
     39e:	c3                   	ret    
    printf(stdout, "mkdir oidir failed\n");
     39f:	c7 44 24 04 0d 45 00 	movl   $0x450d,0x4(%esp)
     3a6:	00 
    printf(stdout, "fork failed\n");
     3a7:	a1 e4 64 00 00       	mov    0x64e4,%eax
     3ac:	89 04 24             	mov    %eax,(%esp)
     3af:	e8 4c 3d 00 00       	call   4100 <printf>
     3b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    exit(1);
     3b8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     3bf:	e8 ee 3b 00 00       	call   3fb2 <exit>
    printf(stdout, "fork failed\n");
     3c4:	c7 44 24 04 a9 53 00 	movl   $0x53a9,0x4(%esp)
     3cb:	00 
     3cc:	eb d9                	jmp    3a7 <openiputtest+0xc7>
    printf(stdout, "unlink failed\n");
     3ce:	c7 44 24 04 21 45 00 	movl   $0x4521,0x4(%esp)
     3d5:	00 
     3d6:	eb cf                	jmp    3a7 <openiputtest+0xc7>
     3d8:	90                   	nop
     3d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000003e0 <opentest>:
{
     3e0:	55                   	push   %ebp
     3e1:	89 e5                	mov    %esp,%ebp
     3e3:	83 ec 18             	sub    $0x18,%esp
  printf(stdout, "open test\n");
     3e6:	a1 e4 64 00 00       	mov    0x64e4,%eax
     3eb:	c7 44 24 04 42 45 00 	movl   $0x4542,0x4(%esp)
     3f2:	00 
     3f3:	89 04 24             	mov    %eax,(%esp)
     3f6:	e8 05 3d 00 00       	call   4100 <printf>
  fd = open("echo", 0);
     3fb:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     402:	00 
     403:	c7 04 24 4d 45 00 00 	movl   $0x454d,(%esp)
     40a:	e8 eb 3b 00 00       	call   3ffa <open>
  if(fd < 0){
     40f:	85 c0                	test   %eax,%eax
     411:	78 37                	js     44a <opentest+0x6a>
  close(fd);
     413:	89 04 24             	mov    %eax,(%esp)
     416:	e8 c7 3b 00 00       	call   3fe2 <close>
  fd = open("doesnotexist", 0);
     41b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     422:	00 
     423:	c7 04 24 65 45 00 00 	movl   $0x4565,(%esp)
     42a:	e8 cb 3b 00 00       	call   3ffa <open>
  if(fd >= 0){
     42f:	85 c0                	test   %eax,%eax
     431:	79 38                	jns    46b <opentest+0x8b>
  printf(stdout, "open test ok\n");
     433:	a1 e4 64 00 00       	mov    0x64e4,%eax
     438:	c7 44 24 04 90 45 00 	movl   $0x4590,0x4(%esp)
     43f:	00 
     440:	89 04 24             	mov    %eax,(%esp)
     443:	e8 b8 3c 00 00       	call   4100 <printf>
}
     448:	c9                   	leave  
     449:	c3                   	ret    
    printf(stdout, "open echo failed!\n");
     44a:	a1 e4 64 00 00       	mov    0x64e4,%eax
     44f:	c7 44 24 04 52 45 00 	movl   $0x4552,0x4(%esp)
     456:	00 
     457:	89 04 24             	mov    %eax,(%esp)
     45a:	e8 a1 3c 00 00       	call   4100 <printf>
    exit(1);
     45f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     466:	e8 47 3b 00 00       	call   3fb2 <exit>
    printf(stdout, "open doesnotexist succeeded!\n");
     46b:	a1 e4 64 00 00       	mov    0x64e4,%eax
     470:	c7 44 24 04 72 45 00 	movl   $0x4572,0x4(%esp)
     477:	00 
     478:	89 04 24             	mov    %eax,(%esp)
     47b:	e8 80 3c 00 00       	call   4100 <printf>
    exit(0);
     480:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     487:	e8 26 3b 00 00       	call   3fb2 <exit>
     48c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000490 <writetest>:
{
     490:	55                   	push   %ebp
     491:	89 e5                	mov    %esp,%ebp
     493:	56                   	push   %esi
     494:	53                   	push   %ebx
     495:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "small file test\n");
     498:	a1 e4 64 00 00       	mov    0x64e4,%eax
     49d:	c7 44 24 04 9e 45 00 	movl   $0x459e,0x4(%esp)
     4a4:	00 
     4a5:	89 04 24             	mov    %eax,(%esp)
     4a8:	e8 53 3c 00 00       	call   4100 <printf>
  fd = open("small", O_CREATE|O_RDWR);
     4ad:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
     4b4:	00 
     4b5:	c7 04 24 af 45 00 00 	movl   $0x45af,(%esp)
     4bc:	e8 39 3b 00 00       	call   3ffa <open>
  if(fd >= 0){
     4c1:	85 c0                	test   %eax,%eax
  fd = open("small", O_CREATE|O_RDWR);
     4c3:	89 c6                	mov    %eax,%esi
  if(fd >= 0){
     4c5:	0f 88 8b 01 00 00    	js     656 <writetest+0x1c6>
    printf(stdout, "creat small succeeded; ok\n");
     4cb:	a1 e4 64 00 00       	mov    0x64e4,%eax
  for(i = 0; i < 100; i++){
     4d0:	31 db                	xor    %ebx,%ebx
    printf(stdout, "creat small succeeded; ok\n");
     4d2:	c7 44 24 04 b5 45 00 	movl   $0x45b5,0x4(%esp)
     4d9:	00 
     4da:	89 04 24             	mov    %eax,(%esp)
     4dd:	e8 1e 3c 00 00       	call   4100 <printf>
     4e2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    if(write(fd, "aaaaaaaaaa", 10) != 10){
     4e8:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
     4ef:	00 
     4f0:	c7 44 24 04 ec 45 00 	movl   $0x45ec,0x4(%esp)
     4f7:	00 
     4f8:	89 34 24             	mov    %esi,(%esp)
     4fb:	e8 da 3a 00 00       	call   3fda <write>
     500:	83 f8 0a             	cmp    $0xa,%eax
     503:	0f 85 e5 00 00 00    	jne    5ee <writetest+0x15e>
    if(write(fd, "bbbbbbbbbb", 10) != 10){
     509:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
     510:	00 
     511:	c7 44 24 04 f7 45 00 	movl   $0x45f7,0x4(%esp)
     518:	00 
     519:	89 34 24             	mov    %esi,(%esp)
     51c:	e8 b9 3a 00 00       	call   3fda <write>
     521:	83 f8 0a             	cmp    $0xa,%eax
     524:	0f 85 e9 00 00 00    	jne    613 <writetest+0x183>
  for(i = 0; i < 100; i++){
     52a:	83 c3 01             	add    $0x1,%ebx
     52d:	83 fb 64             	cmp    $0x64,%ebx
     530:	75 b6                	jne    4e8 <writetest+0x58>
  printf(stdout, "writes ok\n");
     532:	a1 e4 64 00 00       	mov    0x64e4,%eax
     537:	c7 44 24 04 02 46 00 	movl   $0x4602,0x4(%esp)
     53e:	00 
     53f:	89 04 24             	mov    %eax,(%esp)
     542:	e8 b9 3b 00 00       	call   4100 <printf>
  close(fd);
     547:	89 34 24             	mov    %esi,(%esp)
     54a:	e8 93 3a 00 00       	call   3fe2 <close>
  fd = open("small", O_RDONLY);
     54f:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     556:	00 
     557:	c7 04 24 af 45 00 00 	movl   $0x45af,(%esp)
     55e:	e8 97 3a 00 00       	call   3ffa <open>
  if(fd >= 0){
     563:	85 c0                	test   %eax,%eax
  fd = open("small", O_RDONLY);
     565:	89 c3                	mov    %eax,%ebx
  if(fd >= 0){
     567:	0f 88 b4 00 00 00    	js     621 <writetest+0x191>
    printf(stdout, "open small succeeded ok\n");
     56d:	a1 e4 64 00 00       	mov    0x64e4,%eax
     572:	c7 44 24 04 0d 46 00 	movl   $0x460d,0x4(%esp)
     579:	00 
     57a:	89 04 24             	mov    %eax,(%esp)
     57d:	e8 7e 3b 00 00       	call   4100 <printf>
  i = read(fd, buf, 2000);
     582:	c7 44 24 08 d0 07 00 	movl   $0x7d0,0x8(%esp)
     589:	00 
     58a:	c7 44 24 04 c0 8c 00 	movl   $0x8cc0,0x4(%esp)
     591:	00 
     592:	89 1c 24             	mov    %ebx,(%esp)
     595:	e8 38 3a 00 00       	call   3fd2 <read>
  if(i == 2000){
     59a:	3d d0 07 00 00       	cmp    $0x7d0,%eax
     59f:	0f 85 9d 00 00 00    	jne    642 <writetest+0x1b2>
    printf(stdout, "read succeeded ok\n");
     5a5:	a1 e4 64 00 00       	mov    0x64e4,%eax
     5aa:	c7 44 24 04 41 46 00 	movl   $0x4641,0x4(%esp)
     5b1:	00 
     5b2:	89 04 24             	mov    %eax,(%esp)
     5b5:	e8 46 3b 00 00       	call   4100 <printf>
  close(fd);
     5ba:	89 1c 24             	mov    %ebx,(%esp)
     5bd:	e8 20 3a 00 00       	call   3fe2 <close>
  if(unlink("small") < 0){
     5c2:	c7 04 24 af 45 00 00 	movl   $0x45af,(%esp)
     5c9:	e8 3c 3a 00 00       	call   400a <unlink>
     5ce:	85 c0                	test   %eax,%eax
     5d0:	78 7a                	js     64c <writetest+0x1bc>
  printf(stdout, "small file test ok\n");
     5d2:	a1 e4 64 00 00       	mov    0x64e4,%eax
     5d7:	c7 44 24 04 69 46 00 	movl   $0x4669,0x4(%esp)
     5de:	00 
     5df:	89 04 24             	mov    %eax,(%esp)
     5e2:	e8 19 3b 00 00       	call   4100 <printf>
}
     5e7:	83 c4 10             	add    $0x10,%esp
     5ea:	5b                   	pop    %ebx
     5eb:	5e                   	pop    %esi
     5ec:	5d                   	pop    %ebp
     5ed:	c3                   	ret    
      printf(stdout, "error: write aa %d new file failed\n", i);
     5ee:	89 5c 24 08          	mov    %ebx,0x8(%esp)
     5f2:	c7 44 24 04 b0 54 00 	movl   $0x54b0,0x4(%esp)
     5f9:	00 
      printf(stdout, "error: write bb %d new file failed\n", i);
     5fa:	a1 e4 64 00 00       	mov    0x64e4,%eax
     5ff:	89 04 24             	mov    %eax,(%esp)
     602:	e8 f9 3a 00 00       	call   4100 <printf>
      exit(1);
     607:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     60e:	e8 9f 39 00 00       	call   3fb2 <exit>
      printf(stdout, "error: write bb %d new file failed\n", i);
     613:	89 5c 24 08          	mov    %ebx,0x8(%esp)
     617:	c7 44 24 04 d4 54 00 	movl   $0x54d4,0x4(%esp)
     61e:	00 
     61f:	eb d9                	jmp    5fa <writetest+0x16a>
    printf(stdout, "error: open small failed!\n");
     621:	c7 44 24 04 26 46 00 	movl   $0x4626,0x4(%esp)
     628:	00 
     629:	a1 e4 64 00 00       	mov    0x64e4,%eax
     62e:	89 04 24             	mov    %eax,(%esp)
     631:	e8 ca 3a 00 00       	call   4100 <printf>
    exit(1);
     636:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     63d:	e8 70 39 00 00       	call   3fb2 <exit>
    printf(stdout, "read failed\n");
     642:	c7 44 24 04 6d 49 00 	movl   $0x496d,0x4(%esp)
     649:	00 
     64a:	eb dd                	jmp    629 <writetest+0x199>
    printf(stdout, "unlink small failed\n");
     64c:	c7 44 24 04 54 46 00 	movl   $0x4654,0x4(%esp)
     653:	00 
     654:	eb d3                	jmp    629 <writetest+0x199>
    printf(stdout, "error: creat small failed!\n");
     656:	c7 44 24 04 d0 45 00 	movl   $0x45d0,0x4(%esp)
     65d:	00 
     65e:	eb c9                	jmp    629 <writetest+0x199>

00000660 <writetest1>:
{
     660:	55                   	push   %ebp
     661:	89 e5                	mov    %esp,%ebp
     663:	56                   	push   %esi
     664:	53                   	push   %ebx
     665:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "big files test\n");
     668:	a1 e4 64 00 00       	mov    0x64e4,%eax
     66d:	c7 44 24 04 7d 46 00 	movl   $0x467d,0x4(%esp)
     674:	00 
     675:	89 04 24             	mov    %eax,(%esp)
     678:	e8 83 3a 00 00       	call   4100 <printf>
  fd = open("big", O_CREATE|O_RDWR);
     67d:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
     684:	00 
     685:	c7 04 24 f7 46 00 00 	movl   $0x46f7,(%esp)
     68c:	e8 69 39 00 00       	call   3ffa <open>
  if(fd < 0){
     691:	85 c0                	test   %eax,%eax
  fd = open("big", O_CREATE|O_RDWR);
     693:	89 c6                	mov    %eax,%esi
  if(fd < 0){
     695:	0f 88 6f 01 00 00    	js     80a <writetest1+0x1aa>
     69b:	31 db                	xor    %ebx,%ebx
     69d:	8d 76 00             	lea    0x0(%esi),%esi
    if(write(fd, buf, 512) != 512){
     6a0:	c7 44 24 08 00 02 00 	movl   $0x200,0x8(%esp)
     6a7:	00 
     6a8:	c7 44 24 04 c0 8c 00 	movl   $0x8cc0,0x4(%esp)
     6af:	00 
     6b0:	89 34 24             	mov    %esi,(%esp)
    ((int*)buf)[0] = i;
     6b3:	89 1d c0 8c 00 00    	mov    %ebx,0x8cc0
    if(write(fd, buf, 512) != 512){
     6b9:	e8 1c 39 00 00       	call   3fda <write>
     6be:	3d 00 02 00 00       	cmp    $0x200,%eax
     6c3:	0f 85 b2 00 00 00    	jne    77b <writetest1+0x11b>
  for(i = 0; i < MAXFILE; i++){
     6c9:	83 c3 01             	add    $0x1,%ebx
     6cc:	81 fb 8c 00 00 00    	cmp    $0x8c,%ebx
     6d2:	75 cc                	jne    6a0 <writetest1+0x40>
  close(fd);
     6d4:	89 34 24             	mov    %esi,(%esp)
     6d7:	e8 06 39 00 00       	call   3fe2 <close>
  fd = open("big", O_RDONLY);
     6dc:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     6e3:	00 
     6e4:	c7 04 24 f7 46 00 00 	movl   $0x46f7,(%esp)
     6eb:	e8 0a 39 00 00       	call   3ffa <open>
  if(fd < 0){
     6f0:	85 c0                	test   %eax,%eax
  fd = open("big", O_RDONLY);
     6f2:	89 c6                	mov    %eax,%esi
  if(fd < 0){
     6f4:	0f 88 ef 00 00 00    	js     7e9 <writetest1+0x189>
     6fa:	31 db                	xor    %ebx,%ebx
     6fc:	eb 1d                	jmp    71b <writetest1+0xbb>
     6fe:	66 90                	xchg   %ax,%ax
    } else if(i != 512){
     700:	3d 00 02 00 00       	cmp    $0x200,%eax
     705:	0f 85 be 00 00 00    	jne    7c9 <writetest1+0x169>
    if(((int*)buf)[0] != n){
     70b:	a1 c0 8c 00 00       	mov    0x8cc0,%eax
     710:	39 d8                	cmp    %ebx,%eax
     712:	0f 85 88 00 00 00    	jne    7a0 <writetest1+0x140>
    n++;
     718:	83 c3 01             	add    $0x1,%ebx
    i = read(fd, buf, 512);
     71b:	c7 44 24 08 00 02 00 	movl   $0x200,0x8(%esp)
     722:	00 
     723:	c7 44 24 04 c0 8c 00 	movl   $0x8cc0,0x4(%esp)
     72a:	00 
     72b:	89 34 24             	mov    %esi,(%esp)
     72e:	e8 9f 38 00 00       	call   3fd2 <read>
    if(i == 0){
     733:	85 c0                	test   %eax,%eax
     735:	75 c9                	jne    700 <writetest1+0xa0>
      if(n == MAXFILE - 1){
     737:	81 fb 8b 00 00 00    	cmp    $0x8b,%ebx
     73d:	0f 84 94 00 00 00    	je     7d7 <writetest1+0x177>
  close(fd);
     743:	89 34 24             	mov    %esi,(%esp)
     746:	e8 97 38 00 00       	call   3fe2 <close>
  if(unlink("big") < 0){
     74b:	c7 04 24 f7 46 00 00 	movl   $0x46f7,(%esp)
     752:	e8 b3 38 00 00       	call   400a <unlink>
     757:	85 c0                	test   %eax,%eax
     759:	0f 88 b5 00 00 00    	js     814 <writetest1+0x1b4>
  printf(stdout, "big files ok\n");
     75f:	a1 e4 64 00 00       	mov    0x64e4,%eax
     764:	c7 44 24 04 1e 47 00 	movl   $0x471e,0x4(%esp)
     76b:	00 
     76c:	89 04 24             	mov    %eax,(%esp)
     76f:	e8 8c 39 00 00       	call   4100 <printf>
}
     774:	83 c4 10             	add    $0x10,%esp
     777:	5b                   	pop    %ebx
     778:	5e                   	pop    %esi
     779:	5d                   	pop    %ebp
     77a:	c3                   	ret    
      printf(stdout, "error: write big file failed\n", i);
     77b:	89 5c 24 08          	mov    %ebx,0x8(%esp)
     77f:	c7 44 24 04 a7 46 00 	movl   $0x46a7,0x4(%esp)
     786:	00 
        printf(stdout, "read only %d blocks from big", n);
     787:	a1 e4 64 00 00       	mov    0x64e4,%eax
     78c:	89 04 24             	mov    %eax,(%esp)
     78f:	e8 6c 39 00 00       	call   4100 <printf>
        exit(1);
     794:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     79b:	e8 12 38 00 00       	call   3fb2 <exit>
      printf(stdout, "read content of block %d is %d\n",
     7a0:	89 44 24 0c          	mov    %eax,0xc(%esp)
     7a4:	a1 e4 64 00 00       	mov    0x64e4,%eax
     7a9:	89 5c 24 08          	mov    %ebx,0x8(%esp)
     7ad:	c7 44 24 04 f8 54 00 	movl   $0x54f8,0x4(%esp)
     7b4:	00 
     7b5:	89 04 24             	mov    %eax,(%esp)
     7b8:	e8 43 39 00 00       	call   4100 <printf>
      exit(1);
     7bd:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     7c4:	e8 e9 37 00 00       	call   3fb2 <exit>
      printf(stdout, "read failed %d\n", i);
     7c9:	89 44 24 08          	mov    %eax,0x8(%esp)
     7cd:	c7 44 24 04 fb 46 00 	movl   $0x46fb,0x4(%esp)
     7d4:	00 
     7d5:	eb b0                	jmp    787 <writetest1+0x127>
        printf(stdout, "read only %d blocks from big", n);
     7d7:	c7 44 24 08 8b 00 00 	movl   $0x8b,0x8(%esp)
     7de:	00 
     7df:	c7 44 24 04 de 46 00 	movl   $0x46de,0x4(%esp)
     7e6:	00 
     7e7:	eb 9e                	jmp    787 <writetest1+0x127>
    printf(stdout, "error: open big failed!\n");
     7e9:	c7 44 24 04 c5 46 00 	movl   $0x46c5,0x4(%esp)
     7f0:	00 
     7f1:	a1 e4 64 00 00       	mov    0x64e4,%eax
     7f6:	89 04 24             	mov    %eax,(%esp)
     7f9:	e8 02 39 00 00       	call   4100 <printf>
    exit(1);
     7fe:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     805:	e8 a8 37 00 00       	call   3fb2 <exit>
    printf(stdout, "error: creat big failed!\n");
     80a:	c7 44 24 04 8d 46 00 	movl   $0x468d,0x4(%esp)
     811:	00 
     812:	eb dd                	jmp    7f1 <writetest1+0x191>
    printf(stdout, "unlink big failed\n");
     814:	c7 44 24 04 0b 47 00 	movl   $0x470b,0x4(%esp)
     81b:	00 
     81c:	eb d3                	jmp    7f1 <writetest1+0x191>
     81e:	66 90                	xchg   %ax,%ax

00000820 <createtest>:
{
     820:	55                   	push   %ebp
     821:	89 e5                	mov    %esp,%ebp
     823:	53                   	push   %ebx
  name[2] = '\0';
     824:	bb 30 00 00 00       	mov    $0x30,%ebx
{
     829:	83 ec 14             	sub    $0x14,%esp
  printf(stdout, "many creates, followed by unlink test\n");
     82c:	a1 e4 64 00 00       	mov    0x64e4,%eax
     831:	c7 44 24 04 18 55 00 	movl   $0x5518,0x4(%esp)
     838:	00 
     839:	89 04 24             	mov    %eax,(%esp)
     83c:	e8 bf 38 00 00       	call   4100 <printf>
  name[0] = 'a';
     841:	c6 05 c0 ac 00 00 61 	movb   $0x61,0xacc0
  name[2] = '\0';
     848:	c6 05 c2 ac 00 00 00 	movb   $0x0,0xacc2
     84f:	90                   	nop
    fd = open(name, O_CREATE|O_RDWR);
     850:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
     857:	00 
     858:	c7 04 24 c0 ac 00 00 	movl   $0xacc0,(%esp)
    name[1] = '0' + i;
     85f:	88 1d c1 ac 00 00    	mov    %bl,0xacc1
     865:	83 c3 01             	add    $0x1,%ebx
    fd = open(name, O_CREATE|O_RDWR);
     868:	e8 8d 37 00 00       	call   3ffa <open>
    close(fd);
     86d:	89 04 24             	mov    %eax,(%esp)
     870:	e8 6d 37 00 00       	call   3fe2 <close>
  for(i = 0; i < 52; i++){
     875:	80 fb 64             	cmp    $0x64,%bl
     878:	75 d6                	jne    850 <createtest+0x30>
  name[0] = 'a';
     87a:	c6 05 c0 ac 00 00 61 	movb   $0x61,0xacc0
  name[2] = '\0';
     881:	bb 30 00 00 00       	mov    $0x30,%ebx
     886:	c6 05 c2 ac 00 00 00 	movb   $0x0,0xacc2
     88d:	8d 76 00             	lea    0x0(%esi),%esi
    name[1] = '0' + i;
     890:	88 1d c1 ac 00 00    	mov    %bl,0xacc1
     896:	83 c3 01             	add    $0x1,%ebx
    unlink(name);
     899:	c7 04 24 c0 ac 00 00 	movl   $0xacc0,(%esp)
     8a0:	e8 65 37 00 00       	call   400a <unlink>
  for(i = 0; i < 52; i++){
     8a5:	80 fb 64             	cmp    $0x64,%bl
     8a8:	75 e6                	jne    890 <createtest+0x70>
  printf(stdout, "many creates, followed by unlink; ok\n");
     8aa:	a1 e4 64 00 00       	mov    0x64e4,%eax
     8af:	c7 44 24 04 40 55 00 	movl   $0x5540,0x4(%esp)
     8b6:	00 
     8b7:	89 04 24             	mov    %eax,(%esp)
     8ba:	e8 41 38 00 00       	call   4100 <printf>
}
     8bf:	83 c4 14             	add    $0x14,%esp
     8c2:	5b                   	pop    %ebx
     8c3:	5d                   	pop    %ebp
     8c4:	c3                   	ret    
     8c5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     8c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000008d0 <dirtest>:
{
     8d0:	55                   	push   %ebp
     8d1:	89 e5                	mov    %esp,%ebp
     8d3:	83 ec 18             	sub    $0x18,%esp
  printf(stdout, "mkdir test\n");
     8d6:	a1 e4 64 00 00       	mov    0x64e4,%eax
     8db:	c7 44 24 04 2c 47 00 	movl   $0x472c,0x4(%esp)
     8e2:	00 
     8e3:	89 04 24             	mov    %eax,(%esp)
     8e6:	e8 15 38 00 00       	call   4100 <printf>
  if(mkdir("dir0") < 0){
     8eb:	c7 04 24 38 47 00 00 	movl   $0x4738,(%esp)
     8f2:	e8 2b 37 00 00       	call   4022 <mkdir>
     8f7:	85 c0                	test   %eax,%eax
     8f9:	78 47                	js     942 <dirtest+0x72>
  if(chdir("dir0") < 0){
     8fb:	c7 04 24 38 47 00 00 	movl   $0x4738,(%esp)
     902:	e8 23 37 00 00       	call   402a <chdir>
     907:	85 c0                	test   %eax,%eax
     909:	78 6c                	js     977 <dirtest+0xa7>
  if(chdir("..") < 0){
     90b:	c7 04 24 dd 4c 00 00 	movl   $0x4cdd,(%esp)
     912:	e8 13 37 00 00       	call   402a <chdir>
     917:	85 c0                	test   %eax,%eax
     919:	78 52                	js     96d <dirtest+0x9d>
  if(unlink("dir0") < 0){
     91b:	c7 04 24 38 47 00 00 	movl   $0x4738,(%esp)
     922:	e8 e3 36 00 00       	call   400a <unlink>
     927:	85 c0                	test   %eax,%eax
     929:	78 38                	js     963 <dirtest+0x93>
  printf(stdout, "mkdir test ok\n");
     92b:	a1 e4 64 00 00       	mov    0x64e4,%eax
     930:	c7 44 24 04 75 47 00 	movl   $0x4775,0x4(%esp)
     937:	00 
     938:	89 04 24             	mov    %eax,(%esp)
     93b:	e8 c0 37 00 00       	call   4100 <printf>
}
     940:	c9                   	leave  
     941:	c3                   	ret    
    printf(stdout, "mkdir failed\n");
     942:	c7 44 24 04 68 44 00 	movl   $0x4468,0x4(%esp)
     949:	00 
    printf(stdout, "chdir dir0 failed\n");
     94a:	a1 e4 64 00 00       	mov    0x64e4,%eax
     94f:	89 04 24             	mov    %eax,(%esp)
     952:	e8 a9 37 00 00       	call   4100 <printf>
    exit(1);
     957:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     95e:	e8 4f 36 00 00       	call   3fb2 <exit>
    printf(stdout, "unlink dir0 failed\n");
     963:	c7 44 24 04 61 47 00 	movl   $0x4761,0x4(%esp)
     96a:	00 
     96b:	eb dd                	jmp    94a <dirtest+0x7a>
    printf(stdout, "chdir .. failed\n");
     96d:	c7 44 24 04 50 47 00 	movl   $0x4750,0x4(%esp)
     974:	00 
     975:	eb d3                	jmp    94a <dirtest+0x7a>
    printf(stdout, "chdir dir0 failed\n");
     977:	c7 44 24 04 3d 47 00 	movl   $0x473d,0x4(%esp)
     97e:	00 
     97f:	eb c9                	jmp    94a <dirtest+0x7a>
     981:	eb 0d                	jmp    990 <exectest>
     983:	90                   	nop
     984:	90                   	nop
     985:	90                   	nop
     986:	90                   	nop
     987:	90                   	nop
     988:	90                   	nop
     989:	90                   	nop
     98a:	90                   	nop
     98b:	90                   	nop
     98c:	90                   	nop
     98d:	90                   	nop
     98e:	90                   	nop
     98f:	90                   	nop

00000990 <exectest>:
{
     990:	55                   	push   %ebp
     991:	89 e5                	mov    %esp,%ebp
     993:	83 ec 18             	sub    $0x18,%esp
  printf(stdout, "exec test\n");
     996:	a1 e4 64 00 00       	mov    0x64e4,%eax
     99b:	c7 44 24 04 84 47 00 	movl   $0x4784,0x4(%esp)
     9a2:	00 
     9a3:	89 04 24             	mov    %eax,(%esp)
     9a6:	e8 55 37 00 00       	call   4100 <printf>
  if(exec("echo", echoargv) < 0){
     9ab:	c7 44 24 04 e8 64 00 	movl   $0x64e8,0x4(%esp)
     9b2:	00 
     9b3:	c7 04 24 4d 45 00 00 	movl   $0x454d,(%esp)
     9ba:	e8 33 36 00 00       	call   3ff2 <exec>
     9bf:	85 c0                	test   %eax,%eax
     9c1:	78 02                	js     9c5 <exectest+0x35>
}
     9c3:	c9                   	leave  
     9c4:	c3                   	ret    
    printf(stdout, "exec echo failed\n");
     9c5:	a1 e4 64 00 00       	mov    0x64e4,%eax
     9ca:	c7 44 24 04 8f 47 00 	movl   $0x478f,0x4(%esp)
     9d1:	00 
     9d2:	89 04 24             	mov    %eax,(%esp)
     9d5:	e8 26 37 00 00       	call   4100 <printf>
    exit(1);
     9da:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     9e1:	e8 cc 35 00 00       	call   3fb2 <exit>
     9e6:	8d 76 00             	lea    0x0(%esi),%esi
     9e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000009f0 <pipe1>:
{
     9f0:	55                   	push   %ebp
     9f1:	89 e5                	mov    %esp,%ebp
     9f3:	57                   	push   %edi
     9f4:	56                   	push   %esi
     9f5:	53                   	push   %ebx
     9f6:	83 ec 2c             	sub    $0x2c,%esp
  if(pipe(fds) != 0){
     9f9:	8d 45 e0             	lea    -0x20(%ebp),%eax
     9fc:	89 04 24             	mov    %eax,(%esp)
     9ff:	e8 c6 35 00 00       	call   3fca <pipe>
     a04:	85 c0                	test   %eax,%eax
     a06:	0f 85 66 01 00 00    	jne    b72 <pipe1+0x182>
  pid = fork();
     a0c:	e8 99 35 00 00       	call   3faa <fork>
  if(pid == 0){
     a11:	83 f8 00             	cmp    $0x0,%eax
     a14:	0f 84 93 00 00 00    	je     aad <pipe1+0xbd>
  } else if(pid > 0){
     a1a:	0f 8e 72 01 00 00    	jle    b92 <pipe1+0x1a2>
    close(fds[1]);
     a20:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    cc = 1;
     a23:	bf 01 00 00 00       	mov    $0x1,%edi
  seq = 0;
     a28:	31 db                	xor    %ebx,%ebx
    close(fds[1]);
     a2a:	89 04 24             	mov    %eax,(%esp)
     a2d:	e8 b0 35 00 00       	call   3fe2 <close>
    total = 0;
     a32:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
    while((n = read(fds[0], buf, cc)) > 0){
     a39:	8b 45 e0             	mov    -0x20(%ebp),%eax
     a3c:	89 7c 24 08          	mov    %edi,0x8(%esp)
     a40:	c7 44 24 04 c0 8c 00 	movl   $0x8cc0,0x4(%esp)
     a47:	00 
     a48:	89 04 24             	mov    %eax,(%esp)
     a4b:	e8 82 35 00 00       	call   3fd2 <read>
     a50:	85 c0                	test   %eax,%eax
     a52:	0f 8e ba 00 00 00    	jle    b12 <pipe1+0x122>
     a58:	89 d9                	mov    %ebx,%ecx
     a5a:	8d 34 03             	lea    (%ebx,%eax,1),%esi
     a5d:	f7 d9                	neg    %ecx
     a5f:	eb 09                	jmp    a6a <pipe1+0x7a>
     a61:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        if((buf[i] & 0xff) != (seq++ & 0xff)){
     a68:	89 d3                	mov    %edx,%ebx
     a6a:	38 9c 0b c0 8c 00 00 	cmp    %bl,0x8cc0(%ebx,%ecx,1)
     a71:	8d 53 01             	lea    0x1(%ebx),%edx
     a74:	75 1b                	jne    a91 <pipe1+0xa1>
      for(i = 0; i < n; i++){
     a76:	39 f2                	cmp    %esi,%edx
     a78:	75 ee                	jne    a68 <pipe1+0x78>
      cc = cc * 2;
     a7a:	01 ff                	add    %edi,%edi
        if((buf[i] & 0xff) != (seq++ & 0xff)){
     a7c:	89 f3                	mov    %esi,%ebx
      total += n;
     a7e:	01 45 d4             	add    %eax,-0x2c(%ebp)
        cc = sizeof(buf);
     a81:	81 ff 01 20 00 00    	cmp    $0x2001,%edi
     a87:	b8 00 20 00 00       	mov    $0x2000,%eax
     a8c:	0f 43 f8             	cmovae %eax,%edi
     a8f:	eb a8                	jmp    a39 <pipe1+0x49>
          printf(1, "pipe1 oops 2\n");
     a91:	c7 44 24 04 be 47 00 	movl   $0x47be,0x4(%esp)
     a98:	00 
     a99:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     aa0:	e8 5b 36 00 00       	call   4100 <printf>
}
     aa5:	83 c4 2c             	add    $0x2c,%esp
     aa8:	5b                   	pop    %ebx
     aa9:	5e                   	pop    %esi
     aaa:	5f                   	pop    %edi
     aab:	5d                   	pop    %ebp
     aac:	c3                   	ret    
    close(fds[0]);
     aad:	8b 45 e0             	mov    -0x20(%ebp),%eax
  seq = 0;
     ab0:	31 f6                	xor    %esi,%esi
    close(fds[0]);
     ab2:	89 04 24             	mov    %eax,(%esp)
     ab5:	e8 28 35 00 00       	call   3fe2 <close>
     aba:	89 f0                	mov    %esi,%eax
{
     abc:	89 f3                	mov    %esi,%ebx
     abe:	8d 96 09 04 00 00    	lea    0x409(%esi),%edx
     ac4:	f7 d8                	neg    %eax
     ac6:	66 90                	xchg   %ax,%ax
        buf[i] = seq++;
     ac8:	88 9c 18 c0 8c 00 00 	mov    %bl,0x8cc0(%eax,%ebx,1)
     acf:	83 c3 01             	add    $0x1,%ebx
      for(i = 0; i < 1033; i++)
     ad2:	39 d3                	cmp    %edx,%ebx
     ad4:	75 f2                	jne    ac8 <pipe1+0xd8>
      if(write(fds[1], buf, 1033) != 1033){
     ad6:	8b 45 e4             	mov    -0x1c(%ebp),%eax
     ad9:	89 de                	mov    %ebx,%esi
     adb:	c7 44 24 08 09 04 00 	movl   $0x409,0x8(%esp)
     ae2:	00 
     ae3:	c7 44 24 04 c0 8c 00 	movl   $0x8cc0,0x4(%esp)
     aea:	00 
     aeb:	89 04 24             	mov    %eax,(%esp)
     aee:	e8 e7 34 00 00       	call   3fda <write>
     af3:	3d 09 04 00 00       	cmp    $0x409,%eax
     af8:	0f 85 b4 00 00 00    	jne    bb2 <pipe1+0x1c2>
    for(n = 0; n < 5; n++){
     afe:	81 fb 2d 14 00 00    	cmp    $0x142d,%ebx
     b04:	75 b4                	jne    aba <pipe1+0xca>
    exit(0);
     b06:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     b0d:	e8 a0 34 00 00       	call   3fb2 <exit>
    if(total != 5 * 1033){
     b12:	81 7d d4 2d 14 00 00 	cmpl   $0x142d,-0x2c(%ebp)
     b19:	75 30                	jne    b4b <pipe1+0x15b>
    close(fds[0]);
     b1b:	8b 45 e0             	mov    -0x20(%ebp),%eax
     b1e:	89 04 24             	mov    %eax,(%esp)
     b21:	e8 bc 34 00 00       	call   3fe2 <close>
    wait(0);
     b26:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     b2d:	e8 88 34 00 00       	call   3fba <wait>
  printf(1, "pipe1 ok\n");
     b32:	c7 44 24 04 e3 47 00 	movl   $0x47e3,0x4(%esp)
     b39:	00 
     b3a:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     b41:	e8 ba 35 00 00       	call   4100 <printf>
     b46:	e9 5a ff ff ff       	jmp    aa5 <pipe1+0xb5>
      printf(1, "pipe1 oops 3 total %d\n", total);
     b4b:	8b 45 d4             	mov    -0x2c(%ebp),%eax
     b4e:	c7 44 24 04 cc 47 00 	movl   $0x47cc,0x4(%esp)
     b55:	00 
     b56:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     b5d:	89 44 24 08          	mov    %eax,0x8(%esp)
     b61:	e8 9a 35 00 00       	call   4100 <printf>
      exit(1);
     b66:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     b6d:	e8 40 34 00 00       	call   3fb2 <exit>
    printf(1, "pipe() failed\n");
     b72:	c7 44 24 04 a1 47 00 	movl   $0x47a1,0x4(%esp)
     b79:	00 
     b7a:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     b81:	e8 7a 35 00 00       	call   4100 <printf>
    exit(1);
     b86:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     b8d:	e8 20 34 00 00       	call   3fb2 <exit>
    printf(1, "fork() failed\n");
     b92:	c7 44 24 04 ed 47 00 	movl   $0x47ed,0x4(%esp)
     b99:	00 
     b9a:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     ba1:	e8 5a 35 00 00       	call   4100 <printf>
    exit(1);
     ba6:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     bad:	e8 00 34 00 00       	call   3fb2 <exit>
        printf(1, "pipe1 oops 1\n");
     bb2:	c7 44 24 04 b0 47 00 	movl   $0x47b0,0x4(%esp)
     bb9:	00 
     bba:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     bc1:	e8 3a 35 00 00       	call   4100 <printf>
        exit(1);
     bc6:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     bcd:	e8 e0 33 00 00       	call   3fb2 <exit>
     bd2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     bd9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000be0 <preempt>:
{
     be0:	55                   	push   %ebp
     be1:	89 e5                	mov    %esp,%ebp
     be3:	57                   	push   %edi
     be4:	56                   	push   %esi
     be5:	53                   	push   %ebx
     be6:	83 ec 2c             	sub    $0x2c,%esp
  printf(1, "preempt: ");
     be9:	c7 44 24 04 fc 47 00 	movl   $0x47fc,0x4(%esp)
     bf0:	00 
     bf1:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     bf8:	e8 03 35 00 00       	call   4100 <printf>
  pid1 = fork();
     bfd:	e8 a8 33 00 00       	call   3faa <fork>
  if(pid1 == 0)
     c02:	85 c0                	test   %eax,%eax
  pid1 = fork();
     c04:	89 c7                	mov    %eax,%edi
  if(pid1 == 0)
     c06:	75 02                	jne    c0a <preempt+0x2a>
     c08:	eb fe                	jmp    c08 <preempt+0x28>
     c0a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  pid2 = fork();
     c10:	e8 95 33 00 00       	call   3faa <fork>
  if(pid2 == 0)
     c15:	85 c0                	test   %eax,%eax
  pid2 = fork();
     c17:	89 c6                	mov    %eax,%esi
  if(pid2 == 0)
     c19:	75 02                	jne    c1d <preempt+0x3d>
     c1b:	eb fe                	jmp    c1b <preempt+0x3b>
  pipe(pfds);
     c1d:	8d 45 e0             	lea    -0x20(%ebp),%eax
     c20:	89 04 24             	mov    %eax,(%esp)
     c23:	e8 a2 33 00 00       	call   3fca <pipe>
  pid3 = fork();
     c28:	e8 7d 33 00 00       	call   3faa <fork>
  if(pid3 == 0){
     c2d:	85 c0                	test   %eax,%eax
  pid3 = fork();
     c2f:	89 c3                	mov    %eax,%ebx
  if(pid3 == 0){
     c31:	75 4c                	jne    c7f <preempt+0x9f>
    close(pfds[0]);
     c33:	8b 45 e0             	mov    -0x20(%ebp),%eax
     c36:	89 04 24             	mov    %eax,(%esp)
     c39:	e8 a4 33 00 00       	call   3fe2 <close>
    if(write(pfds[1], "x", 1) != 1)
     c3e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
     c41:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
     c48:	00 
     c49:	c7 44 24 04 c1 4d 00 	movl   $0x4dc1,0x4(%esp)
     c50:	00 
     c51:	89 04 24             	mov    %eax,(%esp)
     c54:	e8 81 33 00 00       	call   3fda <write>
     c59:	83 f8 01             	cmp    $0x1,%eax
     c5c:	74 14                	je     c72 <preempt+0x92>
      printf(1, "preempt write error");
     c5e:	c7 44 24 04 06 48 00 	movl   $0x4806,0x4(%esp)
     c65:	00 
     c66:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     c6d:	e8 8e 34 00 00       	call   4100 <printf>
    close(pfds[1]);
     c72:	8b 45 e4             	mov    -0x1c(%ebp),%eax
     c75:	89 04 24             	mov    %eax,(%esp)
     c78:	e8 65 33 00 00       	call   3fe2 <close>
     c7d:	eb fe                	jmp    c7d <preempt+0x9d>
  close(pfds[1]);
     c7f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
     c82:	89 04 24             	mov    %eax,(%esp)
     c85:	e8 58 33 00 00       	call   3fe2 <close>
  if(read(pfds[0], buf, sizeof(buf)) != 1){
     c8a:	8b 45 e0             	mov    -0x20(%ebp),%eax
     c8d:	c7 44 24 08 00 20 00 	movl   $0x2000,0x8(%esp)
     c94:	00 
     c95:	c7 44 24 04 c0 8c 00 	movl   $0x8cc0,0x4(%esp)
     c9c:	00 
     c9d:	89 04 24             	mov    %eax,(%esp)
     ca0:	e8 2d 33 00 00       	call   3fd2 <read>
     ca5:	83 f8 01             	cmp    $0x1,%eax
     ca8:	74 1c                	je     cc6 <preempt+0xe6>
    printf(1, "preempt read error");
     caa:	c7 44 24 04 1a 48 00 	movl   $0x481a,0x4(%esp)
     cb1:	00 
     cb2:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     cb9:	e8 42 34 00 00       	call   4100 <printf>
}
     cbe:	83 c4 2c             	add    $0x2c,%esp
     cc1:	5b                   	pop    %ebx
     cc2:	5e                   	pop    %esi
     cc3:	5f                   	pop    %edi
     cc4:	5d                   	pop    %ebp
     cc5:	c3                   	ret    
  close(pfds[0]);
     cc6:	8b 45 e0             	mov    -0x20(%ebp),%eax
     cc9:	89 04 24             	mov    %eax,(%esp)
     ccc:	e8 11 33 00 00       	call   3fe2 <close>
  printf(1, "kill... ");
     cd1:	c7 44 24 04 2d 48 00 	movl   $0x482d,0x4(%esp)
     cd8:	00 
     cd9:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     ce0:	e8 1b 34 00 00       	call   4100 <printf>
  kill(pid1);
     ce5:	89 3c 24             	mov    %edi,(%esp)
     ce8:	e8 fd 32 00 00       	call   3fea <kill>
  kill(pid2);
     ced:	89 34 24             	mov    %esi,(%esp)
     cf0:	e8 f5 32 00 00       	call   3fea <kill>
  kill(pid3);
     cf5:	89 1c 24             	mov    %ebx,(%esp)
     cf8:	e8 ed 32 00 00       	call   3fea <kill>
  printf(1, "wait... ");
     cfd:	c7 44 24 04 36 48 00 	movl   $0x4836,0x4(%esp)
     d04:	00 
     d05:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     d0c:	e8 ef 33 00 00       	call   4100 <printf>
  wait(0);
     d11:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     d18:	e8 9d 32 00 00       	call   3fba <wait>
  wait(0);
     d1d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     d24:	e8 91 32 00 00       	call   3fba <wait>
  wait(0);
     d29:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     d30:	e8 85 32 00 00       	call   3fba <wait>
  printf(1, "preempt ok\n");
     d35:	c7 44 24 04 3f 48 00 	movl   $0x483f,0x4(%esp)
     d3c:	00 
     d3d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     d44:	e8 b7 33 00 00       	call   4100 <printf>
     d49:	e9 70 ff ff ff       	jmp    cbe <preempt+0xde>
     d4e:	66 90                	xchg   %ax,%ax

00000d50 <exitwait>:
{
     d50:	55                   	push   %ebp
     d51:	89 e5                	mov    %esp,%ebp
     d53:	56                   	push   %esi
     d54:	be 64 00 00 00       	mov    $0x64,%esi
     d59:	53                   	push   %ebx
     d5a:	83 ec 10             	sub    $0x10,%esp
     d5d:	eb 18                	jmp    d77 <exitwait+0x27>
     d5f:	90                   	nop
      if(wait(0) != pid){
     d60:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    if(pid){
     d67:	74 72                	je     ddb <exitwait+0x8b>
      if(wait(0) != pid){
     d69:	e8 4c 32 00 00       	call   3fba <wait>
     d6e:	39 d8                	cmp    %ebx,%eax
     d70:	75 2e                	jne    da0 <exitwait+0x50>
  for(i = 0; i < 100; i++){
     d72:	83 ee 01             	sub    $0x1,%esi
     d75:	74 49                	je     dc0 <exitwait+0x70>
    pid = fork();
     d77:	e8 2e 32 00 00       	call   3faa <fork>
    if(pid < 0){
     d7c:	85 c0                	test   %eax,%eax
    pid = fork();
     d7e:	89 c3                	mov    %eax,%ebx
    if(pid < 0){
     d80:	79 de                	jns    d60 <exitwait+0x10>
      printf(1, "fork failed\n");
     d82:	c7 44 24 04 a9 53 00 	movl   $0x53a9,0x4(%esp)
     d89:	00 
     d8a:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     d91:	e8 6a 33 00 00       	call   4100 <printf>
}
     d96:	83 c4 10             	add    $0x10,%esp
     d99:	5b                   	pop    %ebx
     d9a:	5e                   	pop    %esi
     d9b:	5d                   	pop    %ebp
     d9c:	c3                   	ret    
     d9d:	8d 76 00             	lea    0x0(%esi),%esi
        printf(1, "wait wrong pid\n");
     da0:	c7 44 24 04 4b 48 00 	movl   $0x484b,0x4(%esp)
     da7:	00 
     da8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     daf:	e8 4c 33 00 00       	call   4100 <printf>
}
     db4:	83 c4 10             	add    $0x10,%esp
     db7:	5b                   	pop    %ebx
     db8:	5e                   	pop    %esi
     db9:	5d                   	pop    %ebp
     dba:	c3                   	ret    
     dbb:	90                   	nop
     dbc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  printf(1, "exitwait ok\n");
     dc0:	c7 44 24 04 5b 48 00 	movl   $0x485b,0x4(%esp)
     dc7:	00 
     dc8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     dcf:	e8 2c 33 00 00       	call   4100 <printf>
}
     dd4:	83 c4 10             	add    $0x10,%esp
     dd7:	5b                   	pop    %ebx
     dd8:	5e                   	pop    %esi
     dd9:	5d                   	pop    %ebp
     dda:	c3                   	ret    
      exit(0);
     ddb:	e8 d2 31 00 00       	call   3fb2 <exit>

00000de0 <mem>:
{
     de0:	55                   	push   %ebp
     de1:	89 e5                	mov    %esp,%ebp
     de3:	57                   	push   %edi
     de4:	56                   	push   %esi
     de5:	53                   	push   %ebx
     de6:	83 ec 1c             	sub    $0x1c,%esp
  printf(1, "mem test\n");
     de9:	c7 44 24 04 68 48 00 	movl   $0x4868,0x4(%esp)
     df0:	00 
     df1:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     df8:	e8 03 33 00 00       	call   4100 <printf>
  ppid = getpid();
     dfd:	e8 38 32 00 00       	call   403a <getpid>
     e02:	89 c6                	mov    %eax,%esi
  if((pid = fork()) == 0){
     e04:	e8 a1 31 00 00       	call   3faa <fork>
     e09:	85 c0                	test   %eax,%eax
     e0b:	75 73                	jne    e80 <mem+0xa0>
     e0d:	31 db                	xor    %ebx,%ebx
     e0f:	90                   	nop
     e10:	eb 0a                	jmp    e1c <mem+0x3c>
     e12:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      *(char**)m2 = m1;
     e18:	89 18                	mov    %ebx,(%eax)
     e1a:	89 c3                	mov    %eax,%ebx
    while((m2 = malloc(10001)) != 0){
     e1c:	c7 04 24 11 27 00 00 	movl   $0x2711,(%esp)
     e23:	e8 58 35 00 00       	call   4380 <malloc>
     e28:	85 c0                	test   %eax,%eax
     e2a:	75 ec                	jne    e18 <mem+0x38>
    while(m1){
     e2c:	85 db                	test   %ebx,%ebx
     e2e:	75 0a                	jne    e3a <mem+0x5a>
     e30:	eb 16                	jmp    e48 <mem+0x68>
     e32:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      m1 = m2;
     e38:	89 fb                	mov    %edi,%ebx
      m2 = *(char**)m1;
     e3a:	8b 3b                	mov    (%ebx),%edi
      free(m1);
     e3c:	89 1c 24             	mov    %ebx,(%esp)
     e3f:	e8 ac 34 00 00       	call   42f0 <free>
    while(m1){
     e44:	85 ff                	test   %edi,%edi
     e46:	75 f0                	jne    e38 <mem+0x58>
    m1 = malloc(1024*20);
     e48:	c7 04 24 00 50 00 00 	movl   $0x5000,(%esp)
     e4f:	e8 2c 35 00 00       	call   4380 <malloc>
    if(m1 == 0){
     e54:	85 c0                	test   %eax,%eax
     e56:	74 40                	je     e98 <mem+0xb8>
    free(m1);
     e58:	89 04 24             	mov    %eax,(%esp)
     e5b:	e8 90 34 00 00       	call   42f0 <free>
    printf(1, "mem ok\n");
     e60:	c7 44 24 04 8c 48 00 	movl   $0x488c,0x4(%esp)
     e67:	00 
     e68:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     e6f:	e8 8c 32 00 00       	call   4100 <printf>
    exit(0);
     e74:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     e7b:	e8 32 31 00 00       	call   3fb2 <exit>
    wait(0);
     e80:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     e87:	e8 2e 31 00 00       	call   3fba <wait>
}
     e8c:	83 c4 1c             	add    $0x1c,%esp
     e8f:	5b                   	pop    %ebx
     e90:	5e                   	pop    %esi
     e91:	5f                   	pop    %edi
     e92:	5d                   	pop    %ebp
     e93:	c3                   	ret    
     e94:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      printf(1, "couldn't allocate mem?!!\n");
     e98:	c7 44 24 04 72 48 00 	movl   $0x4872,0x4(%esp)
     e9f:	00 
     ea0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     ea7:	e8 54 32 00 00       	call   4100 <printf>
      kill(ppid);
     eac:	89 34 24             	mov    %esi,(%esp)
     eaf:	e8 36 31 00 00       	call   3fea <kill>
      exit(1);
     eb4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     ebb:	e8 f2 30 00 00       	call   3fb2 <exit>

00000ec0 <sharedfd>:
{
     ec0:	55                   	push   %ebp
     ec1:	89 e5                	mov    %esp,%ebp
     ec3:	57                   	push   %edi
     ec4:	56                   	push   %esi
     ec5:	53                   	push   %ebx
     ec6:	83 ec 3c             	sub    $0x3c,%esp
  printf(1, "sharedfd test\n");
     ec9:	c7 44 24 04 94 48 00 	movl   $0x4894,0x4(%esp)
     ed0:	00 
     ed1:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     ed8:	e8 23 32 00 00       	call   4100 <printf>
  unlink("sharedfd");
     edd:	c7 04 24 a3 48 00 00 	movl   $0x48a3,(%esp)
     ee4:	e8 21 31 00 00       	call   400a <unlink>
  fd = open("sharedfd", O_CREATE|O_RDWR);
     ee9:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
     ef0:	00 
     ef1:	c7 04 24 a3 48 00 00 	movl   $0x48a3,(%esp)
     ef8:	e8 fd 30 00 00       	call   3ffa <open>
  if(fd < 0){
     efd:	85 c0                	test   %eax,%eax
  fd = open("sharedfd", O_CREATE|O_RDWR);
     eff:	89 c7                	mov    %eax,%edi
  if(fd < 0){
     f01:	0f 88 48 01 00 00    	js     104f <sharedfd+0x18f>
  pid = fork();
     f07:	e8 9e 30 00 00       	call   3faa <fork>
  memset(buf, pid==0?'c':'p', sizeof(buf));
     f0c:	8d 75 de             	lea    -0x22(%ebp),%esi
     f0f:	bb e8 03 00 00       	mov    $0x3e8,%ebx
     f14:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
     f1b:	00 
     f1c:	89 34 24             	mov    %esi,(%esp)
     f1f:	83 f8 01             	cmp    $0x1,%eax
  pid = fork();
     f22:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  memset(buf, pid==0?'c':'p', sizeof(buf));
     f25:	19 c0                	sbb    %eax,%eax
     f27:	83 e0 f3             	and    $0xfffffff3,%eax
     f2a:	83 c0 70             	add    $0x70,%eax
     f2d:	89 44 24 04          	mov    %eax,0x4(%esp)
     f31:	e8 0a 2f 00 00       	call   3e40 <memset>
     f36:	eb 05                	jmp    f3d <sharedfd+0x7d>
  for(i = 0; i < 1000; i++){
     f38:	83 eb 01             	sub    $0x1,%ebx
     f3b:	74 2d                	je     f6a <sharedfd+0xaa>
    if(write(fd, buf, sizeof(buf)) != sizeof(buf)){
     f3d:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
     f44:	00 
     f45:	89 74 24 04          	mov    %esi,0x4(%esp)
     f49:	89 3c 24             	mov    %edi,(%esp)
     f4c:	e8 89 30 00 00       	call   3fda <write>
     f51:	83 f8 0a             	cmp    $0xa,%eax
     f54:	74 e2                	je     f38 <sharedfd+0x78>
      printf(1, "fstests: write sharedfd failed\n");
     f56:	c7 44 24 04 94 55 00 	movl   $0x5594,0x4(%esp)
     f5d:	00 
     f5e:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     f65:	e8 96 31 00 00       	call   4100 <printf>
  if(pid == 0)
     f6a:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    exit(0);
     f6d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  if(pid == 0)
     f74:	85 c0                	test   %eax,%eax
     f76:	0f 84 2e 01 00 00    	je     10aa <sharedfd+0x1ea>
    wait(0);
     f7c:	e8 39 30 00 00       	call   3fba <wait>
  close(fd);
     f81:	89 3c 24             	mov    %edi,(%esp)
     f84:	e8 59 30 00 00       	call   3fe2 <close>
  fd = open("sharedfd", 0);
     f89:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     f90:	00 
     f91:	c7 04 24 a3 48 00 00 	movl   $0x48a3,(%esp)
     f98:	e8 5d 30 00 00       	call   3ffa <open>
  if(fd < 0){
     f9d:	85 c0                	test   %eax,%eax
  fd = open("sharedfd", 0);
     f9f:	89 45 d0             	mov    %eax,-0x30(%ebp)
  if(fd < 0){
     fa2:	0f 88 c3 00 00 00    	js     106b <sharedfd+0x1ab>
     fa8:	31 d2                	xor    %edx,%edx
     faa:	31 db                	xor    %ebx,%ebx
     fac:	8d 7d e8             	lea    -0x18(%ebp),%edi
     faf:	89 55 d4             	mov    %edx,-0x2c(%ebp)
     fb2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  while((n = read(fd, buf, sizeof(buf))) > 0){
     fb8:	8b 45 d0             	mov    -0x30(%ebp),%eax
     fbb:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
     fc2:	00 
     fc3:	89 74 24 04          	mov    %esi,0x4(%esp)
     fc7:	89 04 24             	mov    %eax,(%esp)
     fca:	e8 03 30 00 00       	call   3fd2 <read>
     fcf:	85 c0                	test   %eax,%eax
     fd1:	7e 36                	jle    1009 <sharedfd+0x149>
     fd3:	89 f0                	mov    %esi,%eax
     fd5:	8b 55 d4             	mov    -0x2c(%ebp),%edx
     fd8:	eb 18                	jmp    ff2 <sharedfd+0x132>
     fda:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        np++;
     fe0:	80 f9 70             	cmp    $0x70,%cl
     fe3:	0f 94 c1             	sete   %cl
     fe6:	83 c0 01             	add    $0x1,%eax
     fe9:	0f b6 c9             	movzbl %cl,%ecx
     fec:	01 cb                	add    %ecx,%ebx
    for(i = 0; i < sizeof(buf); i++){
     fee:	39 f8                	cmp    %edi,%eax
     ff0:	74 12                	je     1004 <sharedfd+0x144>
      if(buf[i] == 'c')
     ff2:	0f b6 08             	movzbl (%eax),%ecx
     ff5:	80 f9 63             	cmp    $0x63,%cl
     ff8:	75 e6                	jne    fe0 <sharedfd+0x120>
     ffa:	83 c0 01             	add    $0x1,%eax
        nc++;
     ffd:	83 c2 01             	add    $0x1,%edx
    for(i = 0; i < sizeof(buf); i++){
    1000:	39 f8                	cmp    %edi,%eax
    1002:	75 ee                	jne    ff2 <sharedfd+0x132>
    1004:	89 55 d4             	mov    %edx,-0x2c(%ebp)
    1007:	eb af                	jmp    fb8 <sharedfd+0xf8>
  close(fd);
    1009:	8b 45 d0             	mov    -0x30(%ebp),%eax
    100c:	89 04 24             	mov    %eax,(%esp)
    100f:	e8 ce 2f 00 00       	call   3fe2 <close>
  unlink("sharedfd");
    1014:	c7 04 24 a3 48 00 00 	movl   $0x48a3,(%esp)
    101b:	e8 ea 2f 00 00       	call   400a <unlink>
  if(nc == 10000 && np == 10000){
    1020:	81 fb 10 27 00 00    	cmp    $0x2710,%ebx
    1026:	8b 55 d4             	mov    -0x2c(%ebp),%edx
    1029:	75 5c                	jne    1087 <sharedfd+0x1c7>
    102b:	81 fa 10 27 00 00    	cmp    $0x2710,%edx
    1031:	75 54                	jne    1087 <sharedfd+0x1c7>
    printf(1, "sharedfd ok\n");
    1033:	c7 44 24 04 ac 48 00 	movl   $0x48ac,0x4(%esp)
    103a:	00 
    103b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1042:	e8 b9 30 00 00       	call   4100 <printf>
}
    1047:	83 c4 3c             	add    $0x3c,%esp
    104a:	5b                   	pop    %ebx
    104b:	5e                   	pop    %esi
    104c:	5f                   	pop    %edi
    104d:	5d                   	pop    %ebp
    104e:	c3                   	ret    
    printf(1, "fstests: cannot open sharedfd for writing");
    104f:	c7 44 24 04 68 55 00 	movl   $0x5568,0x4(%esp)
    1056:	00 
    1057:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    105e:	e8 9d 30 00 00       	call   4100 <printf>
}
    1063:	83 c4 3c             	add    $0x3c,%esp
    1066:	5b                   	pop    %ebx
    1067:	5e                   	pop    %esi
    1068:	5f                   	pop    %edi
    1069:	5d                   	pop    %ebp
    106a:	c3                   	ret    
    printf(1, "fstests: cannot open sharedfd for reading\n");
    106b:	c7 44 24 04 b4 55 00 	movl   $0x55b4,0x4(%esp)
    1072:	00 
    1073:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    107a:	e8 81 30 00 00       	call   4100 <printf>
}
    107f:	83 c4 3c             	add    $0x3c,%esp
    1082:	5b                   	pop    %ebx
    1083:	5e                   	pop    %esi
    1084:	5f                   	pop    %edi
    1085:	5d                   	pop    %ebp
    1086:	c3                   	ret    
    printf(1, "sharedfd oops %d %d\n", nc, np);
    1087:	89 5c 24 0c          	mov    %ebx,0xc(%esp)
    108b:	89 54 24 08          	mov    %edx,0x8(%esp)
    108f:	c7 44 24 04 b9 48 00 	movl   $0x48b9,0x4(%esp)
    1096:	00 
    1097:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    109e:	e8 5d 30 00 00       	call   4100 <printf>
    exit(1);
    10a3:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    10aa:	e8 03 2f 00 00       	call   3fb2 <exit>
    10af:	90                   	nop

000010b0 <fourfiles>:
{
    10b0:	55                   	push   %ebp
    10b1:	89 e5                	mov    %esp,%ebp
    10b3:	57                   	push   %edi
    10b4:	56                   	push   %esi
  printf(1, "fourfiles test\n");
    10b5:	be ce 48 00 00       	mov    $0x48ce,%esi
{
    10ba:	53                   	push   %ebx
  for(pi = 0; pi < 4; pi++){
    10bb:	31 db                	xor    %ebx,%ebx
{
    10bd:	83 ec 2c             	sub    $0x2c,%esp
  printf(1, "fourfiles test\n");
    10c0:	c7 44 24 04 d4 48 00 	movl   $0x48d4,0x4(%esp)
    10c7:	00 
    10c8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  char *names[] = { "f0", "f1", "f2", "f3" };
    10cf:	c7 45 d8 ce 48 00 00 	movl   $0x48ce,-0x28(%ebp)
    10d6:	c7 45 dc 17 4a 00 00 	movl   $0x4a17,-0x24(%ebp)
    10dd:	c7 45 e0 1b 4a 00 00 	movl   $0x4a1b,-0x20(%ebp)
    10e4:	c7 45 e4 d1 48 00 00 	movl   $0x48d1,-0x1c(%ebp)
  printf(1, "fourfiles test\n");
    10eb:	e8 10 30 00 00       	call   4100 <printf>
    unlink(fname);
    10f0:	89 34 24             	mov    %esi,(%esp)
    10f3:	e8 12 2f 00 00       	call   400a <unlink>
    pid = fork();
    10f8:	e8 ad 2e 00 00       	call   3faa <fork>
    if(pid < 0){
    10fd:	85 c0                	test   %eax,%eax
    10ff:	0f 88 bb 01 00 00    	js     12c0 <fourfiles+0x210>
    if(pid == 0){
    1105:	0f 84 0b 01 00 00    	je     1216 <fourfiles+0x166>
  for(pi = 0; pi < 4; pi++){
    110b:	83 c3 01             	add    $0x1,%ebx
    110e:	83 fb 04             	cmp    $0x4,%ebx
    1111:	74 06                	je     1119 <fourfiles+0x69>
    1113:	8b 74 9d d8          	mov    -0x28(%ebp,%ebx,4),%esi
    1117:	eb d7                	jmp    10f0 <fourfiles+0x40>
    wait(0);
    1119:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1120:	bf 30 00 00 00       	mov    $0x30,%edi
    1125:	e8 90 2e 00 00       	call   3fba <wait>
    112a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1131:	e8 84 2e 00 00       	call   3fba <wait>
    1136:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    113d:	e8 78 2e 00 00       	call   3fba <wait>
    1142:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1149:	e8 6c 2e 00 00       	call   3fba <wait>
    114e:	c7 45 d4 ce 48 00 00 	movl   $0x48ce,-0x2c(%ebp)
    fd = open(fname, 0);
    1155:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    total = 0;
    1158:	31 db                	xor    %ebx,%ebx
    fd = open(fname, 0);
    115a:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1161:	00 
    1162:	89 04 24             	mov    %eax,(%esp)
    1165:	e8 90 2e 00 00       	call   3ffa <open>
    116a:	89 c6                	mov    %eax,%esi
    116c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    while((n = read(fd, buf, sizeof(buf))) > 0){
    1170:	c7 44 24 08 00 20 00 	movl   $0x2000,0x8(%esp)
    1177:	00 
    1178:	c7 44 24 04 c0 8c 00 	movl   $0x8cc0,0x4(%esp)
    117f:	00 
    1180:	89 34 24             	mov    %esi,(%esp)
    1183:	e8 4a 2e 00 00       	call   3fd2 <read>
    1188:	85 c0                	test   %eax,%eax
    118a:	7e 1a                	jle    11a6 <fourfiles+0xf6>
    118c:	31 d2                	xor    %edx,%edx
    118e:	66 90                	xchg   %ax,%ax
        if(buf[j] != '0'+i){
    1190:	0f be 8a c0 8c 00 00 	movsbl 0x8cc0(%edx),%ecx
    1197:	39 f9                	cmp    %edi,%ecx
    1199:	75 5b                	jne    11f6 <fourfiles+0x146>
      for(j = 0; j < n; j++){
    119b:	83 c2 01             	add    $0x1,%edx
    119e:	39 c2                	cmp    %eax,%edx
    11a0:	75 ee                	jne    1190 <fourfiles+0xe0>
      total += n;
    11a2:	01 d3                	add    %edx,%ebx
    11a4:	eb ca                	jmp    1170 <fourfiles+0xc0>
    close(fd);
    11a6:	89 34 24             	mov    %esi,(%esp)
    11a9:	e8 34 2e 00 00       	call   3fe2 <close>
    if(total != 12*500){
    11ae:	81 fb 70 17 00 00    	cmp    $0x1770,%ebx
    11b4:	0f 85 26 01 00 00    	jne    12e0 <fourfiles+0x230>
    unlink(fname);
    11ba:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    11bd:	89 04 24             	mov    %eax,(%esp)
    11c0:	e8 45 2e 00 00       	call   400a <unlink>
  for(i = 0; i < 2; i++){
    11c5:	83 ff 31             	cmp    $0x31,%edi
    11c8:	75 1c                	jne    11e6 <fourfiles+0x136>
  printf(1, "fourfiles ok\n");
    11ca:	c7 44 24 04 12 49 00 	movl   $0x4912,0x4(%esp)
    11d1:	00 
    11d2:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    11d9:	e8 22 2f 00 00       	call   4100 <printf>
}
    11de:	83 c4 2c             	add    $0x2c,%esp
    11e1:	5b                   	pop    %ebx
    11e2:	5e                   	pop    %esi
    11e3:	5f                   	pop    %edi
    11e4:	5d                   	pop    %ebp
    11e5:	c3                   	ret    
    11e6:	8b 45 dc             	mov    -0x24(%ebp),%eax
    11e9:	bf 31 00 00 00       	mov    $0x31,%edi
    11ee:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    11f1:	e9 5f ff ff ff       	jmp    1155 <fourfiles+0xa5>
          printf(1, "wrong char\n");
    11f6:	c7 44 24 04 f5 48 00 	movl   $0x48f5,0x4(%esp)
    11fd:	00 
    11fe:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1205:	e8 f6 2e 00 00       	call   4100 <printf>
          exit(1);
    120a:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1211:	e8 9c 2d 00 00       	call   3fb2 <exit>
      fd = open(fname, O_CREATE | O_RDWR);
    1216:	89 34 24             	mov    %esi,(%esp)
    1219:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    1220:	00 
    1221:	e8 d4 2d 00 00       	call   3ffa <open>
      if(fd < 0){
    1226:	85 c0                	test   %eax,%eax
      fd = open(fname, O_CREATE | O_RDWR);
    1228:	89 c6                	mov    %eax,%esi
      if(fd < 0){
    122a:	78 74                	js     12a0 <fourfiles+0x1f0>
      memset(buf, '0'+pi, 512);
    122c:	83 c3 30             	add    $0x30,%ebx
    122f:	89 5c 24 04          	mov    %ebx,0x4(%esp)
    1233:	bb 0c 00 00 00       	mov    $0xc,%ebx
    1238:	c7 44 24 08 00 02 00 	movl   $0x200,0x8(%esp)
    123f:	00 
    1240:	c7 04 24 c0 8c 00 00 	movl   $0x8cc0,(%esp)
    1247:	e8 f4 2b 00 00       	call   3e40 <memset>
        if((n = write(fd, buf, 500)) != 500){
    124c:	c7 44 24 08 f4 01 00 	movl   $0x1f4,0x8(%esp)
    1253:	00 
    1254:	c7 44 24 04 c0 8c 00 	movl   $0x8cc0,0x4(%esp)
    125b:	00 
    125c:	89 34 24             	mov    %esi,(%esp)
    125f:	e8 76 2d 00 00       	call   3fda <write>
    1264:	3d f4 01 00 00       	cmp    $0x1f4,%eax
    1269:	75 11                	jne    127c <fourfiles+0x1cc>
      for(i = 0; i < 12; i++){
    126b:	83 eb 01             	sub    $0x1,%ebx
    126e:	75 dc                	jne    124c <fourfiles+0x19c>
      exit(0);
    1270:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1277:	e8 36 2d 00 00       	call   3fb2 <exit>
          printf(1, "write failed %d\n", n);
    127c:	89 44 24 08          	mov    %eax,0x8(%esp)
    1280:	c7 44 24 04 e4 48 00 	movl   $0x48e4,0x4(%esp)
    1287:	00 
    1288:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    128f:	e8 6c 2e 00 00       	call   4100 <printf>
          exit(1);
    1294:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    129b:	e8 12 2d 00 00       	call   3fb2 <exit>
        printf(1, "create failed\n");
    12a0:	c7 44 24 04 6f 4b 00 	movl   $0x4b6f,0x4(%esp)
    12a7:	00 
    12a8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    12af:	e8 4c 2e 00 00       	call   4100 <printf>
        exit(1);
    12b4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    12bb:	e8 f2 2c 00 00       	call   3fb2 <exit>
      printf(1, "fork failed\n");
    12c0:	c7 44 24 04 a9 53 00 	movl   $0x53a9,0x4(%esp)
    12c7:	00 
    12c8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    12cf:	e8 2c 2e 00 00       	call   4100 <printf>
      exit(1);
    12d4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    12db:	e8 d2 2c 00 00       	call   3fb2 <exit>
      printf(1, "wrong length %d\n", total);
    12e0:	89 5c 24 08          	mov    %ebx,0x8(%esp)
    12e4:	c7 44 24 04 01 49 00 	movl   $0x4901,0x4(%esp)
    12eb:	00 
    12ec:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    12f3:	e8 08 2e 00 00       	call   4100 <printf>
      exit(1);
    12f8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    12ff:	e8 ae 2c 00 00       	call   3fb2 <exit>
    1304:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    130a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00001310 <createdelete>:
{
    1310:	55                   	push   %ebp
    1311:	89 e5                	mov    %esp,%ebp
    1313:	57                   	push   %edi
    1314:	56                   	push   %esi
    1315:	53                   	push   %ebx
  for(pi = 0; pi < 4; pi++){
    1316:	31 db                	xor    %ebx,%ebx
{
    1318:	83 ec 4c             	sub    $0x4c,%esp
  printf(1, "createdelete test\n");
    131b:	c7 44 24 04 20 49 00 	movl   $0x4920,0x4(%esp)
    1322:	00 
    1323:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    132a:	e8 d1 2d 00 00       	call   4100 <printf>
    pid = fork();
    132f:	e8 76 2c 00 00       	call   3faa <fork>
    if(pid < 0){
    1334:	85 c0                	test   %eax,%eax
    1336:	0f 88 0c 02 00 00    	js     1548 <createdelete+0x238>
    133c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(pid == 0){
    1340:	0f 84 2c 01 00 00    	je     1472 <createdelete+0x162>
  for(pi = 0; pi < 4; pi++){
    1346:	83 c3 01             	add    $0x1,%ebx
    1349:	83 fb 04             	cmp    $0x4,%ebx
    134c:	75 e1                	jne    132f <createdelete+0x1f>
    wait(0);
    134e:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  for(i = 0; i < N; i++){
    1355:	31 f6                	xor    %esi,%esi
    wait(0);
    1357:	e8 5e 2c 00 00       	call   3fba <wait>
    135c:	8d 7d c8             	lea    -0x38(%ebp),%edi
    135f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1366:	e8 4f 2c 00 00       	call   3fba <wait>
    136b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1372:	e8 43 2c 00 00       	call   3fba <wait>
    1377:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    137e:	e8 37 2c 00 00       	call   3fba <wait>
  name[0] = name[1] = name[2] = 0;
    1383:	c6 45 ca 00          	movb   $0x0,-0x36(%ebp)
    1387:	90                   	nop
    1388:	83 fe 09             	cmp    $0x9,%esi
      name[2] = '\0';
    138b:	bb 70 00 00 00       	mov    $0x70,%ebx
    1390:	8d 46 30             	lea    0x30(%esi),%eax
    1393:	0f 9f 45 c7          	setg   -0x39(%ebp)
    1397:	85 f6                	test   %esi,%esi
    1399:	88 45 c6             	mov    %al,-0x3a(%ebp)
    139c:	0f 94 c0             	sete   %al
    139f:	08 45 c7             	or     %al,-0x39(%ebp)
    13a2:	8d 46 ff             	lea    -0x1(%esi),%eax
    13a5:	89 45 c0             	mov    %eax,-0x40(%ebp)
      name[1] = '0' + i;
    13a8:	0f b6 45 c6          	movzbl -0x3a(%ebp),%eax
      fd = open(name, 0);
    13ac:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    13b3:	00 
    13b4:	89 3c 24             	mov    %edi,(%esp)
      name[0] = 'p' + pi;
    13b7:	88 5d c8             	mov    %bl,-0x38(%ebp)
      name[1] = '0' + i;
    13ba:	88 45 c9             	mov    %al,-0x37(%ebp)
      fd = open(name, 0);
    13bd:	e8 38 2c 00 00       	call   3ffa <open>
      if((i == 0 || i >= N/2) && fd < 0){
    13c2:	80 7d c7 00          	cmpb   $0x0,-0x39(%ebp)
    13c6:	0f 84 84 00 00 00    	je     1450 <createdelete+0x140>
    13cc:	85 c0                	test   %eax,%eax
    13ce:	0f 88 30 01 00 00    	js     1504 <createdelete+0x1f4>
      } else if((i >= 1 && i < N/2) && fd >= 0){
    13d4:	83 7d c0 08          	cmpl   $0x8,-0x40(%ebp)
    13d8:	0f 86 8a 01 00 00    	jbe    1568 <createdelete+0x258>
        close(fd);
    13de:	89 04 24             	mov    %eax,(%esp)
    13e1:	83 c3 01             	add    $0x1,%ebx
    13e4:	e8 f9 2b 00 00       	call   3fe2 <close>
    for(pi = 0; pi < 4; pi++){
    13e9:	80 fb 74             	cmp    $0x74,%bl
    13ec:	75 ba                	jne    13a8 <createdelete+0x98>
  for(i = 0; i < N; i++){
    13ee:	83 c6 01             	add    $0x1,%esi
    13f1:	83 fe 14             	cmp    $0x14,%esi
    13f4:	75 92                	jne    1388 <createdelete+0x78>
    13f6:	be 70 00 00 00       	mov    $0x70,%esi
    13fb:	90                   	nop
    13fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1400:	8d 46 c0             	lea    -0x40(%esi),%eax
    1403:	bb 04 00 00 00       	mov    $0x4,%ebx
    1408:	88 45 c7             	mov    %al,-0x39(%ebp)
      name[0] = 'p' + i;
    140b:	89 f0                	mov    %esi,%eax
    140d:	88 45 c8             	mov    %al,-0x38(%ebp)
      name[1] = '0' + i;
    1410:	0f b6 45 c7          	movzbl -0x39(%ebp),%eax
      unlink(name);
    1414:	89 3c 24             	mov    %edi,(%esp)
      name[1] = '0' + i;
    1417:	88 45 c9             	mov    %al,-0x37(%ebp)
      unlink(name);
    141a:	e8 eb 2b 00 00       	call   400a <unlink>
    for(pi = 0; pi < 4; pi++){
    141f:	83 eb 01             	sub    $0x1,%ebx
    1422:	75 e7                	jne    140b <createdelete+0xfb>
    1424:	83 c6 01             	add    $0x1,%esi
  for(i = 0; i < N; i++){
    1427:	89 f0                	mov    %esi,%eax
    1429:	3c 84                	cmp    $0x84,%al
    142b:	75 d3                	jne    1400 <createdelete+0xf0>
  printf(1, "createdelete ok\n");
    142d:	c7 44 24 04 33 49 00 	movl   $0x4933,0x4(%esp)
    1434:	00 
    1435:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    143c:	e8 bf 2c 00 00       	call   4100 <printf>
}
    1441:	83 c4 4c             	add    $0x4c,%esp
    1444:	5b                   	pop    %ebx
    1445:	5e                   	pop    %esi
    1446:	5f                   	pop    %edi
    1447:	5d                   	pop    %ebp
    1448:	c3                   	ret    
    1449:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      } else if((i >= 1 && i < N/2) && fd >= 0){
    1450:	85 c0                	test   %eax,%eax
    1452:	0f 89 10 01 00 00    	jns    1568 <createdelete+0x258>
    1458:	83 c3 01             	add    $0x1,%ebx
    for(pi = 0; pi < 4; pi++){
    145b:	80 fb 74             	cmp    $0x74,%bl
    145e:	0f 85 44 ff ff ff    	jne    13a8 <createdelete+0x98>
  for(i = 0; i < N; i++){
    1464:	83 c6 01             	add    $0x1,%esi
    1467:	83 fe 14             	cmp    $0x14,%esi
    146a:	0f 85 18 ff ff ff    	jne    1388 <createdelete+0x78>
    1470:	eb 84                	jmp    13f6 <createdelete+0xe6>
      name[0] = 'p' + pi;
    1472:	83 c3 70             	add    $0x70,%ebx
      name[2] = '\0';
    1475:	be 01 00 00 00       	mov    $0x1,%esi
      name[0] = 'p' + pi;
    147a:	88 5d c8             	mov    %bl,-0x38(%ebp)
    147d:	8d 7d c8             	lea    -0x38(%ebp),%edi
      name[2] = '\0';
    1480:	31 db                	xor    %ebx,%ebx
    1482:	c6 45 ca 00          	movb   $0x0,-0x36(%ebp)
    1486:	eb 0b                	jmp    1493 <createdelete+0x183>
      for(i = 0; i < N; i++){
    1488:	83 fe 14             	cmp    $0x14,%esi
    148b:	74 6b                	je     14f8 <createdelete+0x1e8>
    148d:	83 c3 01             	add    $0x1,%ebx
    1490:	83 c6 01             	add    $0x1,%esi
    1493:	8d 43 30             	lea    0x30(%ebx),%eax
        fd = open(name, O_CREATE | O_RDWR);
    1496:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    149d:	00 
    149e:	89 3c 24             	mov    %edi,(%esp)
    14a1:	88 45 c9             	mov    %al,-0x37(%ebp)
    14a4:	e8 51 2b 00 00       	call   3ffa <open>
        if(fd < 0){
    14a9:	85 c0                	test   %eax,%eax
    14ab:	78 7b                	js     1528 <createdelete+0x218>
        close(fd);
    14ad:	89 04 24             	mov    %eax,(%esp)
    14b0:	e8 2d 2b 00 00       	call   3fe2 <close>
        if(i > 0 && (i % 2 ) == 0){
    14b5:	85 db                	test   %ebx,%ebx
    14b7:	74 d4                	je     148d <createdelete+0x17d>
    14b9:	f6 c3 01             	test   $0x1,%bl
    14bc:	75 ca                	jne    1488 <createdelete+0x178>
          name[1] = '0' + (i / 2);
    14be:	89 d8                	mov    %ebx,%eax
    14c0:	d1 f8                	sar    %eax
    14c2:	83 c0 30             	add    $0x30,%eax
          if(unlink(name) < 0){
    14c5:	89 3c 24             	mov    %edi,(%esp)
          name[1] = '0' + (i / 2);
    14c8:	88 45 c9             	mov    %al,-0x37(%ebp)
          if(unlink(name) < 0){
    14cb:	e8 3a 2b 00 00       	call   400a <unlink>
    14d0:	85 c0                	test   %eax,%eax
    14d2:	79 b4                	jns    1488 <createdelete+0x178>
            printf(1, "unlink failed\n");
    14d4:	c7 44 24 04 21 45 00 	movl   $0x4521,0x4(%esp)
    14db:	00 
    14dc:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    14e3:	e8 18 2c 00 00       	call   4100 <printf>
            exit(1);
    14e8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    14ef:	e8 be 2a 00 00       	call   3fb2 <exit>
    14f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      exit(0);
    14f8:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    14ff:	e8 ae 2a 00 00       	call   3fb2 <exit>
        printf(1, "oops createdelete %s didn't exist\n", name);
    1504:	89 7c 24 08          	mov    %edi,0x8(%esp)
    1508:	c7 44 24 04 e0 55 00 	movl   $0x55e0,0x4(%esp)
    150f:	00 
    1510:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1517:	e8 e4 2b 00 00       	call   4100 <printf>
        exit(1);
    151c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1523:	e8 8a 2a 00 00       	call   3fb2 <exit>
          printf(1, "create failed\n");
    1528:	c7 44 24 04 6f 4b 00 	movl   $0x4b6f,0x4(%esp)
    152f:	00 
    1530:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1537:	e8 c4 2b 00 00       	call   4100 <printf>
          exit(1);
    153c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1543:	e8 6a 2a 00 00       	call   3fb2 <exit>
      printf(1, "fork failed\n");
    1548:	c7 44 24 04 a9 53 00 	movl   $0x53a9,0x4(%esp)
    154f:	00 
    1550:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1557:	e8 a4 2b 00 00       	call   4100 <printf>
      exit(1);
    155c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1563:	e8 4a 2a 00 00       	call   3fb2 <exit>
        printf(1, "oops createdelete %s did exist\n", name);
    1568:	89 7c 24 08          	mov    %edi,0x8(%esp)
    156c:	c7 44 24 04 04 56 00 	movl   $0x5604,0x4(%esp)
    1573:	00 
    1574:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    157b:	e8 80 2b 00 00       	call   4100 <printf>
        exit(1);
    1580:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1587:	e8 26 2a 00 00       	call   3fb2 <exit>
    158c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00001590 <unlinkread>:
{
    1590:	55                   	push   %ebp
    1591:	89 e5                	mov    %esp,%ebp
    1593:	56                   	push   %esi
    1594:	53                   	push   %ebx
    1595:	83 ec 10             	sub    $0x10,%esp
  printf(1, "unlinkread test\n");
    1598:	c7 44 24 04 44 49 00 	movl   $0x4944,0x4(%esp)
    159f:	00 
    15a0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    15a7:	e8 54 2b 00 00       	call   4100 <printf>
  fd = open("unlinkread", O_CREATE | O_RDWR);
    15ac:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    15b3:	00 
    15b4:	c7 04 24 55 49 00 00 	movl   $0x4955,(%esp)
    15bb:	e8 3a 2a 00 00       	call   3ffa <open>
  if(fd < 0){
    15c0:	85 c0                	test   %eax,%eax
  fd = open("unlinkread", O_CREATE | O_RDWR);
    15c2:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    15c4:	0f 88 02 01 00 00    	js     16cc <unlinkread+0x13c>
  write(fd, "hello", 5);
    15ca:	c7 44 24 08 05 00 00 	movl   $0x5,0x8(%esp)
    15d1:	00 
    15d2:	c7 44 24 04 7a 49 00 	movl   $0x497a,0x4(%esp)
    15d9:	00 
    15da:	89 04 24             	mov    %eax,(%esp)
    15dd:	e8 f8 29 00 00       	call   3fda <write>
  close(fd);
    15e2:	89 1c 24             	mov    %ebx,(%esp)
    15e5:	e8 f8 29 00 00       	call   3fe2 <close>
  fd = open("unlinkread", O_RDWR);
    15ea:	c7 44 24 04 02 00 00 	movl   $0x2,0x4(%esp)
    15f1:	00 
    15f2:	c7 04 24 55 49 00 00 	movl   $0x4955,(%esp)
    15f9:	e8 fc 29 00 00       	call   3ffa <open>
  if(fd < 0){
    15fe:	85 c0                	test   %eax,%eax
  fd = open("unlinkread", O_RDWR);
    1600:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    1602:	0f 88 64 01 00 00    	js     176c <unlinkread+0x1dc>
  if(unlink("unlinkread") != 0){
    1608:	c7 04 24 55 49 00 00 	movl   $0x4955,(%esp)
    160f:	e8 f6 29 00 00       	call   400a <unlink>
    1614:	85 c0                	test   %eax,%eax
    1616:	0f 85 30 01 00 00    	jne    174c <unlinkread+0x1bc>
  fd1 = open("unlinkread", O_CREATE | O_RDWR);
    161c:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    1623:	00 
    1624:	c7 04 24 55 49 00 00 	movl   $0x4955,(%esp)
    162b:	e8 ca 29 00 00       	call   3ffa <open>
  write(fd1, "yyy", 3);
    1630:	c7 44 24 08 03 00 00 	movl   $0x3,0x8(%esp)
    1637:	00 
    1638:	c7 44 24 04 b2 49 00 	movl   $0x49b2,0x4(%esp)
    163f:	00 
  fd1 = open("unlinkread", O_CREATE | O_RDWR);
    1640:	89 c6                	mov    %eax,%esi
  write(fd1, "yyy", 3);
    1642:	89 04 24             	mov    %eax,(%esp)
    1645:	e8 90 29 00 00       	call   3fda <write>
  close(fd1);
    164a:	89 34 24             	mov    %esi,(%esp)
    164d:	e8 90 29 00 00       	call   3fe2 <close>
  if(read(fd, buf, sizeof(buf)) != 5){
    1652:	c7 44 24 08 00 20 00 	movl   $0x2000,0x8(%esp)
    1659:	00 
    165a:	c7 44 24 04 c0 8c 00 	movl   $0x8cc0,0x4(%esp)
    1661:	00 
    1662:	89 1c 24             	mov    %ebx,(%esp)
    1665:	e8 68 29 00 00       	call   3fd2 <read>
    166a:	83 f8 05             	cmp    $0x5,%eax
    166d:	0f 85 b9 00 00 00    	jne    172c <unlinkread+0x19c>
  if(buf[0] != 'h'){
    1673:	80 3d c0 8c 00 00 68 	cmpb   $0x68,0x8cc0
    167a:	0f 85 8c 00 00 00    	jne    170c <unlinkread+0x17c>
  if(write(fd, buf, 10) != 10){
    1680:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
    1687:	00 
    1688:	c7 44 24 04 c0 8c 00 	movl   $0x8cc0,0x4(%esp)
    168f:	00 
    1690:	89 1c 24             	mov    %ebx,(%esp)
    1693:	e8 42 29 00 00       	call   3fda <write>
    1698:	83 f8 0a             	cmp    $0xa,%eax
    169b:	75 4f                	jne    16ec <unlinkread+0x15c>
  close(fd);
    169d:	89 1c 24             	mov    %ebx,(%esp)
    16a0:	e8 3d 29 00 00       	call   3fe2 <close>
  unlink("unlinkread");
    16a5:	c7 04 24 55 49 00 00 	movl   $0x4955,(%esp)
    16ac:	e8 59 29 00 00       	call   400a <unlink>
  printf(1, "unlinkread ok\n");
    16b1:	c7 44 24 04 fd 49 00 	movl   $0x49fd,0x4(%esp)
    16b8:	00 
    16b9:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    16c0:	e8 3b 2a 00 00       	call   4100 <printf>
}
    16c5:	83 c4 10             	add    $0x10,%esp
    16c8:	5b                   	pop    %ebx
    16c9:	5e                   	pop    %esi
    16ca:	5d                   	pop    %ebp
    16cb:	c3                   	ret    
    printf(1, "create unlinkread failed\n");
    16cc:	c7 44 24 04 60 49 00 	movl   $0x4960,0x4(%esp)
    16d3:	00 
    16d4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    16db:	e8 20 2a 00 00       	call   4100 <printf>
    exit(1);
    16e0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    16e7:	e8 c6 28 00 00       	call   3fb2 <exit>
    printf(1, "unlinkread write failed\n");
    16ec:	c7 44 24 04 e4 49 00 	movl   $0x49e4,0x4(%esp)
    16f3:	00 
    16f4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    16fb:	e8 00 2a 00 00       	call   4100 <printf>
    exit(1);
    1700:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1707:	e8 a6 28 00 00       	call   3fb2 <exit>
    printf(1, "unlinkread wrong data\n");
    170c:	c7 44 24 04 cd 49 00 	movl   $0x49cd,0x4(%esp)
    1713:	00 
    1714:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    171b:	e8 e0 29 00 00       	call   4100 <printf>
    exit(1);
    1720:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1727:	e8 86 28 00 00       	call   3fb2 <exit>
    printf(1, "unlinkread read failed");
    172c:	c7 44 24 04 b6 49 00 	movl   $0x49b6,0x4(%esp)
    1733:	00 
    1734:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    173b:	e8 c0 29 00 00       	call   4100 <printf>
    exit(1);
    1740:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1747:	e8 66 28 00 00       	call   3fb2 <exit>
    printf(1, "unlink unlinkread failed\n");
    174c:	c7 44 24 04 98 49 00 	movl   $0x4998,0x4(%esp)
    1753:	00 
    1754:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    175b:	e8 a0 29 00 00       	call   4100 <printf>
    exit(1);
    1760:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1767:	e8 46 28 00 00       	call   3fb2 <exit>
    printf(1, "open unlinkread failed\n");
    176c:	c7 44 24 04 80 49 00 	movl   $0x4980,0x4(%esp)
    1773:	00 
    1774:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    177b:	e8 80 29 00 00       	call   4100 <printf>
    exit(1);
    1780:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1787:	e8 26 28 00 00       	call   3fb2 <exit>
    178c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00001790 <linktest>:
{
    1790:	55                   	push   %ebp
    1791:	89 e5                	mov    %esp,%ebp
    1793:	53                   	push   %ebx
    1794:	83 ec 14             	sub    $0x14,%esp
  printf(1, "linktest\n");
    1797:	c7 44 24 04 0c 4a 00 	movl   $0x4a0c,0x4(%esp)
    179e:	00 
    179f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    17a6:	e8 55 29 00 00       	call   4100 <printf>
  unlink("lf1");
    17ab:	c7 04 24 16 4a 00 00 	movl   $0x4a16,(%esp)
    17b2:	e8 53 28 00 00       	call   400a <unlink>
  unlink("lf2");
    17b7:	c7 04 24 1a 4a 00 00 	movl   $0x4a1a,(%esp)
    17be:	e8 47 28 00 00       	call   400a <unlink>
  fd = open("lf1", O_CREATE|O_RDWR);
    17c3:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    17ca:	00 
    17cb:	c7 04 24 16 4a 00 00 	movl   $0x4a16,(%esp)
    17d2:	e8 23 28 00 00       	call   3ffa <open>
  if(fd < 0){
    17d7:	85 c0                	test   %eax,%eax
  fd = open("lf1", O_CREATE|O_RDWR);
    17d9:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    17db:	0f 88 26 01 00 00    	js     1907 <linktest+0x177>
  if(write(fd, "hello", 5) != 5){
    17e1:	c7 44 24 08 05 00 00 	movl   $0x5,0x8(%esp)
    17e8:	00 
    17e9:	c7 44 24 04 7a 49 00 	movl   $0x497a,0x4(%esp)
    17f0:	00 
    17f1:	89 04 24             	mov    %eax,(%esp)
    17f4:	e8 e1 27 00 00       	call   3fda <write>
    17f9:	83 f8 05             	cmp    $0x5,%eax
    17fc:	0f 85 05 02 00 00    	jne    1a07 <linktest+0x277>
  close(fd);
    1802:	89 1c 24             	mov    %ebx,(%esp)
    1805:	e8 d8 27 00 00       	call   3fe2 <close>
  if(link("lf1", "lf2") < 0){
    180a:	c7 44 24 04 1a 4a 00 	movl   $0x4a1a,0x4(%esp)
    1811:	00 
    1812:	c7 04 24 16 4a 00 00 	movl   $0x4a16,(%esp)
    1819:	e8 fc 27 00 00       	call   401a <link>
    181e:	85 c0                	test   %eax,%eax
    1820:	0f 88 c1 01 00 00    	js     19e7 <linktest+0x257>
  unlink("lf1");
    1826:	c7 04 24 16 4a 00 00 	movl   $0x4a16,(%esp)
    182d:	e8 d8 27 00 00       	call   400a <unlink>
  if(open("lf1", 0) >= 0){
    1832:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1839:	00 
    183a:	c7 04 24 16 4a 00 00 	movl   $0x4a16,(%esp)
    1841:	e8 b4 27 00 00       	call   3ffa <open>
    1846:	85 c0                	test   %eax,%eax
    1848:	0f 89 79 01 00 00    	jns    19c7 <linktest+0x237>
  fd = open("lf2", 0);
    184e:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1855:	00 
    1856:	c7 04 24 1a 4a 00 00 	movl   $0x4a1a,(%esp)
    185d:	e8 98 27 00 00       	call   3ffa <open>
  if(fd < 0){
    1862:	85 c0                	test   %eax,%eax
  fd = open("lf2", 0);
    1864:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    1866:	0f 88 3b 01 00 00    	js     19a7 <linktest+0x217>
  if(read(fd, buf, sizeof(buf)) != 5){
    186c:	c7 44 24 08 00 20 00 	movl   $0x2000,0x8(%esp)
    1873:	00 
    1874:	c7 44 24 04 c0 8c 00 	movl   $0x8cc0,0x4(%esp)
    187b:	00 
    187c:	89 04 24             	mov    %eax,(%esp)
    187f:	e8 4e 27 00 00       	call   3fd2 <read>
    1884:	83 f8 05             	cmp    $0x5,%eax
    1887:	0f 85 fa 00 00 00    	jne    1987 <linktest+0x1f7>
  close(fd);
    188d:	89 1c 24             	mov    %ebx,(%esp)
    1890:	e8 4d 27 00 00       	call   3fe2 <close>
  if(link("lf2", "lf2") >= 0){
    1895:	c7 44 24 04 1a 4a 00 	movl   $0x4a1a,0x4(%esp)
    189c:	00 
    189d:	c7 04 24 1a 4a 00 00 	movl   $0x4a1a,(%esp)
    18a4:	e8 71 27 00 00       	call   401a <link>
    18a9:	85 c0                	test   %eax,%eax
    18ab:	0f 89 b6 00 00 00    	jns    1967 <linktest+0x1d7>
  unlink("lf2");
    18b1:	c7 04 24 1a 4a 00 00 	movl   $0x4a1a,(%esp)
    18b8:	e8 4d 27 00 00       	call   400a <unlink>
  if(link("lf2", "lf1") >= 0){
    18bd:	c7 44 24 04 16 4a 00 	movl   $0x4a16,0x4(%esp)
    18c4:	00 
    18c5:	c7 04 24 1a 4a 00 00 	movl   $0x4a1a,(%esp)
    18cc:	e8 49 27 00 00       	call   401a <link>
    18d1:	85 c0                	test   %eax,%eax
    18d3:	79 72                	jns    1947 <linktest+0x1b7>
  if(link(".", "lf1") >= 0){
    18d5:	c7 44 24 04 16 4a 00 	movl   $0x4a16,0x4(%esp)
    18dc:	00 
    18dd:	c7 04 24 de 4c 00 00 	movl   $0x4cde,(%esp)
    18e4:	e8 31 27 00 00       	call   401a <link>
    18e9:	85 c0                	test   %eax,%eax
    18eb:	79 3a                	jns    1927 <linktest+0x197>
  printf(1, "linktest ok\n");
    18ed:	c7 44 24 04 b4 4a 00 	movl   $0x4ab4,0x4(%esp)
    18f4:	00 
    18f5:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    18fc:	e8 ff 27 00 00       	call   4100 <printf>
}
    1901:	83 c4 14             	add    $0x14,%esp
    1904:	5b                   	pop    %ebx
    1905:	5d                   	pop    %ebp
    1906:	c3                   	ret    
    printf(1, "create lf1 failed\n");
    1907:	c7 44 24 04 1e 4a 00 	movl   $0x4a1e,0x4(%esp)
    190e:	00 
    190f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1916:	e8 e5 27 00 00       	call   4100 <printf>
    exit(1);
    191b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1922:	e8 8b 26 00 00       	call   3fb2 <exit>
    printf(1, "link . lf1 succeeded! oops\n");
    1927:	c7 44 24 04 98 4a 00 	movl   $0x4a98,0x4(%esp)
    192e:	00 
    192f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1936:	e8 c5 27 00 00       	call   4100 <printf>
    exit(1);
    193b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1942:	e8 6b 26 00 00       	call   3fb2 <exit>
    printf(1, "link non-existant succeeded! oops\n");
    1947:	c7 44 24 04 4c 56 00 	movl   $0x564c,0x4(%esp)
    194e:	00 
    194f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1956:	e8 a5 27 00 00       	call   4100 <printf>
    exit(1);
    195b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1962:	e8 4b 26 00 00       	call   3fb2 <exit>
    printf(1, "link lf2 lf2 succeeded! oops\n");
    1967:	c7 44 24 04 7a 4a 00 	movl   $0x4a7a,0x4(%esp)
    196e:	00 
    196f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1976:	e8 85 27 00 00       	call   4100 <printf>
    exit(1);
    197b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1982:	e8 2b 26 00 00       	call   3fb2 <exit>
    printf(1, "read lf2 failed\n");
    1987:	c7 44 24 04 69 4a 00 	movl   $0x4a69,0x4(%esp)
    198e:	00 
    198f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1996:	e8 65 27 00 00       	call   4100 <printf>
    exit(1);
    199b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    19a2:	e8 0b 26 00 00       	call   3fb2 <exit>
    printf(1, "open lf2 failed\n");
    19a7:	c7 44 24 04 58 4a 00 	movl   $0x4a58,0x4(%esp)
    19ae:	00 
    19af:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    19b6:	e8 45 27 00 00       	call   4100 <printf>
    exit(1);
    19bb:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    19c2:	e8 eb 25 00 00       	call   3fb2 <exit>
    printf(1, "unlinked lf1 but it is still there!\n");
    19c7:	c7 44 24 04 24 56 00 	movl   $0x5624,0x4(%esp)
    19ce:	00 
    19cf:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    19d6:	e8 25 27 00 00       	call   4100 <printf>
    exit(1);
    19db:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    19e2:	e8 cb 25 00 00       	call   3fb2 <exit>
    printf(1, "link lf1 lf2 failed\n");
    19e7:	c7 44 24 04 43 4a 00 	movl   $0x4a43,0x4(%esp)
    19ee:	00 
    19ef:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    19f6:	e8 05 27 00 00       	call   4100 <printf>
    exit(1);
    19fb:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1a02:	e8 ab 25 00 00       	call   3fb2 <exit>
    printf(1, "write lf1 failed\n");
    1a07:	c7 44 24 04 31 4a 00 	movl   $0x4a31,0x4(%esp)
    1a0e:	00 
    1a0f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1a16:	e8 e5 26 00 00       	call   4100 <printf>
    exit(1);
    1a1b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1a22:	e8 8b 25 00 00       	call   3fb2 <exit>
    1a27:	89 f6                	mov    %esi,%esi
    1a29:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001a30 <concreate>:
{
    1a30:	55                   	push   %ebp
    1a31:	89 e5                	mov    %esp,%ebp
    1a33:	57                   	push   %edi
    1a34:	56                   	push   %esi
  for(i = 0; i < 40; i++){
    1a35:	31 f6                	xor    %esi,%esi
{
    1a37:	53                   	push   %ebx
    1a38:	83 ec 5c             	sub    $0x5c,%esp
  printf(1, "concreate test\n");
    1a3b:	c7 44 24 04 c1 4a 00 	movl   $0x4ac1,0x4(%esp)
    1a42:	00 
    1a43:	8d 5d ad             	lea    -0x53(%ebp),%ebx
    1a46:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1a4d:	e8 ae 26 00 00       	call   4100 <printf>
  file[0] = 'C';
    1a52:	c6 45 ad 43          	movb   $0x43,-0x53(%ebp)
  file[2] = '\0';
    1a56:	c6 45 af 00          	movb   $0x0,-0x51(%ebp)
    1a5a:	eb 5a                	jmp    1ab6 <concreate+0x86>
    1a5c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(pid && (i % 3) == 1){
    1a60:	b8 56 55 55 55       	mov    $0x55555556,%eax
    1a65:	89 f1                	mov    %esi,%ecx
    1a67:	f7 ee                	imul   %esi
    1a69:	89 f0                	mov    %esi,%eax
    1a6b:	c1 f8 1f             	sar    $0x1f,%eax
    1a6e:	29 c2                	sub    %eax,%edx
    1a70:	8d 04 52             	lea    (%edx,%edx,2),%eax
    1a73:	29 c1                	sub    %eax,%ecx
    1a75:	83 f9 01             	cmp    $0x1,%ecx
    1a78:	0f 84 8a 00 00 00    	je     1b08 <concreate+0xd8>
      fd = open(file, O_CREATE | O_RDWR);
    1a7e:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    1a85:	00 
    1a86:	89 1c 24             	mov    %ebx,(%esp)
    1a89:	e8 6c 25 00 00       	call   3ffa <open>
      if(fd < 0){
    1a8e:	85 c0                	test   %eax,%eax
    1a90:	0f 88 5e 02 00 00    	js     1cf4 <concreate+0x2c4>
      close(fd);
    1a96:	89 04 24             	mov    %eax,(%esp)
    1a99:	e8 44 25 00 00       	call   3fe2 <close>
    if(pid == 0)
    1a9e:	85 ff                	test   %edi,%edi
    1aa0:	74 59                	je     1afb <concreate+0xcb>
      wait(0);
    1aa2:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  for(i = 0; i < 40; i++){
    1aa9:	83 c6 01             	add    $0x1,%esi
      wait(0);
    1aac:	e8 09 25 00 00       	call   3fba <wait>
  for(i = 0; i < 40; i++){
    1ab1:	83 fe 28             	cmp    $0x28,%esi
    1ab4:	74 6a                	je     1b20 <concreate+0xf0>
    1ab6:	8d 46 30             	lea    0x30(%esi),%eax
    unlink(file);
    1ab9:	89 1c 24             	mov    %ebx,(%esp)
    1abc:	88 45 ae             	mov    %al,-0x52(%ebp)
    1abf:	e8 46 25 00 00       	call   400a <unlink>
    pid = fork();
    1ac4:	e8 e1 24 00 00       	call   3faa <fork>
    if(pid && (i % 3) == 1){
    1ac9:	85 c0                	test   %eax,%eax
    pid = fork();
    1acb:	89 c7                	mov    %eax,%edi
    if(pid && (i % 3) == 1){
    1acd:	75 91                	jne    1a60 <concreate+0x30>
    } else if(pid == 0 && (i % 5) == 1){
    1acf:	b8 67 66 66 66       	mov    $0x66666667,%eax
    1ad4:	89 f1                	mov    %esi,%ecx
    1ad6:	f7 ee                	imul   %esi
    1ad8:	89 f0                	mov    %esi,%eax
    1ada:	c1 f8 1f             	sar    $0x1f,%eax
    1add:	d1 fa                	sar    %edx
    1adf:	29 c2                	sub    %eax,%edx
    1ae1:	8d 04 92             	lea    (%edx,%edx,4),%eax
    1ae4:	29 c1                	sub    %eax,%ecx
    1ae6:	83 f9 01             	cmp    $0x1,%ecx
    1ae9:	75 93                	jne    1a7e <concreate+0x4e>
      link("C0", file);
    1aeb:	89 5c 24 04          	mov    %ebx,0x4(%esp)
    1aef:	c7 04 24 d1 4a 00 00 	movl   $0x4ad1,(%esp)
    1af6:	e8 1f 25 00 00       	call   401a <link>
      exit(0);
    1afb:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1b02:	e8 ab 24 00 00       	call   3fb2 <exit>
    1b07:	90                   	nop
      link("C0", file);
    1b08:	89 5c 24 04          	mov    %ebx,0x4(%esp)
    1b0c:	c7 04 24 d1 4a 00 00 	movl   $0x4ad1,(%esp)
    1b13:	e8 02 25 00 00       	call   401a <link>
    1b18:	eb 88                	jmp    1aa2 <concreate+0x72>
    1b1a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  memset(fa, 0, sizeof(fa));
    1b20:	8d 45 c0             	lea    -0x40(%ebp),%eax
    1b23:	c7 44 24 08 28 00 00 	movl   $0x28,0x8(%esp)
    1b2a:	00 
    1b2b:	8d 7d b0             	lea    -0x50(%ebp),%edi
    1b2e:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1b35:	00 
    1b36:	89 04 24             	mov    %eax,(%esp)
    1b39:	e8 02 23 00 00       	call   3e40 <memset>
  fd = open(".", 0);
    1b3e:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1b45:	00 
    1b46:	c7 04 24 de 4c 00 00 	movl   $0x4cde,(%esp)
    1b4d:	e8 a8 24 00 00       	call   3ffa <open>
  n = 0;
    1b52:	c7 45 a4 00 00 00 00 	movl   $0x0,-0x5c(%ebp)
  fd = open(".", 0);
    1b59:	89 c6                	mov    %eax,%esi
    1b5b:	90                   	nop
    1b5c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while(read(fd, &de, sizeof(de)) > 0){
    1b60:	c7 44 24 08 10 00 00 	movl   $0x10,0x8(%esp)
    1b67:	00 
    1b68:	89 7c 24 04          	mov    %edi,0x4(%esp)
    1b6c:	89 34 24             	mov    %esi,(%esp)
    1b6f:	e8 5e 24 00 00       	call   3fd2 <read>
    1b74:	85 c0                	test   %eax,%eax
    1b76:	7e 40                	jle    1bb8 <concreate+0x188>
    if(de.inum == 0)
    1b78:	66 83 7d b0 00       	cmpw   $0x0,-0x50(%ebp)
    1b7d:	74 e1                	je     1b60 <concreate+0x130>
    if(de.name[0] == 'C' && de.name[2] == '\0'){
    1b7f:	80 7d b2 43          	cmpb   $0x43,-0x4e(%ebp)
    1b83:	75 db                	jne    1b60 <concreate+0x130>
    1b85:	80 7d b4 00          	cmpb   $0x0,-0x4c(%ebp)
    1b89:	75 d5                	jne    1b60 <concreate+0x130>
      i = de.name[1] - '0';
    1b8b:	0f be 45 b3          	movsbl -0x4d(%ebp),%eax
    1b8f:	83 e8 30             	sub    $0x30,%eax
      if(i < 0 || i >= sizeof(fa)){
    1b92:	83 f8 27             	cmp    $0x27,%eax
    1b95:	0f 87 7d 01 00 00    	ja     1d18 <concreate+0x2e8>
      if(fa[i]){
    1b9b:	80 7c 05 c0 00       	cmpb   $0x0,-0x40(%ebp,%eax,1)
    1ba0:	0f 85 b9 01 00 00    	jne    1d5f <concreate+0x32f>
      fa[i] = 1;
    1ba6:	c6 44 05 c0 01       	movb   $0x1,-0x40(%ebp,%eax,1)
      n++;
    1bab:	83 45 a4 01          	addl   $0x1,-0x5c(%ebp)
    1baf:	eb af                	jmp    1b60 <concreate+0x130>
    1bb1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  close(fd);
    1bb8:	89 34 24             	mov    %esi,(%esp)
    1bbb:	e8 22 24 00 00       	call   3fe2 <close>
  if(n != 40){
    1bc0:	83 7d a4 28          	cmpl   $0x28,-0x5c(%ebp)
    1bc4:	0f 85 75 01 00 00    	jne    1d3f <concreate+0x30f>
    1bca:	31 f6                	xor    %esi,%esi
    1bcc:	e9 8b 00 00 00       	jmp    1c5c <concreate+0x22c>
    1bd1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
       ((i % 3) == 1 && pid != 0)){
    1bd8:	85 ff                	test   %edi,%edi
    1bda:	0f 84 b5 00 00 00    	je     1c95 <concreate+0x265>
      close(open(file, 0));
    1be0:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1be7:	00 
    1be8:	89 1c 24             	mov    %ebx,(%esp)
    1beb:	e8 0a 24 00 00       	call   3ffa <open>
    1bf0:	89 04 24             	mov    %eax,(%esp)
    1bf3:	e8 ea 23 00 00       	call   3fe2 <close>
      close(open(file, 0));
    1bf8:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1bff:	00 
    1c00:	89 1c 24             	mov    %ebx,(%esp)
    1c03:	e8 f2 23 00 00       	call   3ffa <open>
    1c08:	89 04 24             	mov    %eax,(%esp)
    1c0b:	e8 d2 23 00 00       	call   3fe2 <close>
      close(open(file, 0));
    1c10:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1c17:	00 
    1c18:	89 1c 24             	mov    %ebx,(%esp)
    1c1b:	e8 da 23 00 00       	call   3ffa <open>
    1c20:	89 04 24             	mov    %eax,(%esp)
    1c23:	e8 ba 23 00 00       	call   3fe2 <close>
      close(open(file, 0));
    1c28:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1c2f:	00 
    1c30:	89 1c 24             	mov    %ebx,(%esp)
    1c33:	e8 c2 23 00 00       	call   3ffa <open>
    1c38:	89 04 24             	mov    %eax,(%esp)
    1c3b:	e8 a2 23 00 00       	call   3fe2 <close>
    if(pid == 0)
    1c40:	85 ff                	test   %edi,%edi
    1c42:	0f 84 b3 fe ff ff    	je     1afb <concreate+0xcb>
      wait(0);
    1c48:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  for(i = 0; i < 40; i++){
    1c4f:	83 c6 01             	add    $0x1,%esi
      wait(0);
    1c52:	e8 63 23 00 00       	call   3fba <wait>
  for(i = 0; i < 40; i++){
    1c57:	83 fe 28             	cmp    $0x28,%esi
    1c5a:	74 5c                	je     1cb8 <concreate+0x288>
    1c5c:	8d 46 30             	lea    0x30(%esi),%eax
    1c5f:	88 45 ae             	mov    %al,-0x52(%ebp)
    pid = fork();
    1c62:	e8 43 23 00 00       	call   3faa <fork>
    if(pid < 0){
    1c67:	85 c0                	test   %eax,%eax
    pid = fork();
    1c69:	89 c7                	mov    %eax,%edi
    if(pid < 0){
    1c6b:	78 67                	js     1cd4 <concreate+0x2a4>
    if(((i % 3) == 0 && pid == 0) ||
    1c6d:	b8 56 55 55 55       	mov    $0x55555556,%eax
    1c72:	f7 ee                	imul   %esi
    1c74:	89 f0                	mov    %esi,%eax
    1c76:	c1 f8 1f             	sar    $0x1f,%eax
    1c79:	29 c2                	sub    %eax,%edx
    1c7b:	8d 04 52             	lea    (%edx,%edx,2),%eax
    1c7e:	89 f2                	mov    %esi,%edx
    1c80:	29 c2                	sub    %eax,%edx
    1c82:	89 d0                	mov    %edx,%eax
    1c84:	09 f8                	or     %edi,%eax
    1c86:	0f 84 54 ff ff ff    	je     1be0 <concreate+0x1b0>
    1c8c:	83 fa 01             	cmp    $0x1,%edx
    1c8f:	0f 84 43 ff ff ff    	je     1bd8 <concreate+0x1a8>
      unlink(file);
    1c95:	89 1c 24             	mov    %ebx,(%esp)
    1c98:	e8 6d 23 00 00       	call   400a <unlink>
      unlink(file);
    1c9d:	89 1c 24             	mov    %ebx,(%esp)
    1ca0:	e8 65 23 00 00       	call   400a <unlink>
      unlink(file);
    1ca5:	89 1c 24             	mov    %ebx,(%esp)
    1ca8:	e8 5d 23 00 00       	call   400a <unlink>
      unlink(file);
    1cad:	89 1c 24             	mov    %ebx,(%esp)
    1cb0:	e8 55 23 00 00       	call   400a <unlink>
    1cb5:	eb 89                	jmp    1c40 <concreate+0x210>
    1cb7:	90                   	nop
  printf(1, "concreate ok\n");
    1cb8:	c7 44 24 04 26 4b 00 	movl   $0x4b26,0x4(%esp)
    1cbf:	00 
    1cc0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1cc7:	e8 34 24 00 00       	call   4100 <printf>
}
    1ccc:	83 c4 5c             	add    $0x5c,%esp
    1ccf:	5b                   	pop    %ebx
    1cd0:	5e                   	pop    %esi
    1cd1:	5f                   	pop    %edi
    1cd2:	5d                   	pop    %ebp
    1cd3:	c3                   	ret    
      printf(1, "fork failed\n");
    1cd4:	c7 44 24 04 a9 53 00 	movl   $0x53a9,0x4(%esp)
    1cdb:	00 
    1cdc:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1ce3:	e8 18 24 00 00       	call   4100 <printf>
      exit(1);
    1ce8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1cef:	e8 be 22 00 00       	call   3fb2 <exit>
        printf(1, "concreate create %s failed\n", file);
    1cf4:	89 5c 24 08          	mov    %ebx,0x8(%esp)
    1cf8:	c7 44 24 04 d4 4a 00 	movl   $0x4ad4,0x4(%esp)
    1cff:	00 
    1d00:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1d07:	e8 f4 23 00 00       	call   4100 <printf>
        exit(1);
    1d0c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1d13:	e8 9a 22 00 00       	call   3fb2 <exit>
        printf(1, "concreate weird file %s\n", de.name);
    1d18:	8d 45 b2             	lea    -0x4e(%ebp),%eax
    1d1b:	89 44 24 08          	mov    %eax,0x8(%esp)
    1d1f:	c7 44 24 04 f0 4a 00 	movl   $0x4af0,0x4(%esp)
    1d26:	00 
    1d27:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1d2e:	e8 cd 23 00 00       	call   4100 <printf>
        exit(1);
    1d33:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1d3a:	e8 73 22 00 00       	call   3fb2 <exit>
    printf(1, "concreate not enough files in directory listing\n");
    1d3f:	c7 44 24 04 70 56 00 	movl   $0x5670,0x4(%esp)
    1d46:	00 
    1d47:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1d4e:	e8 ad 23 00 00       	call   4100 <printf>
    exit(1);
    1d53:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1d5a:	e8 53 22 00 00       	call   3fb2 <exit>
        printf(1, "concreate duplicate file %s\n", de.name);
    1d5f:	8d 45 b2             	lea    -0x4e(%ebp),%eax
    1d62:	89 44 24 08          	mov    %eax,0x8(%esp)
    1d66:	c7 44 24 04 09 4b 00 	movl   $0x4b09,0x4(%esp)
    1d6d:	00 
    1d6e:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1d75:	e8 86 23 00 00       	call   4100 <printf>
        exit(1);
    1d7a:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1d81:	e8 2c 22 00 00       	call   3fb2 <exit>
    1d86:	8d 76 00             	lea    0x0(%esi),%esi
    1d89:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001d90 <linkunlink>:
{
    1d90:	55                   	push   %ebp
    1d91:	89 e5                	mov    %esp,%ebp
    1d93:	57                   	push   %edi
    1d94:	56                   	push   %esi
    1d95:	53                   	push   %ebx
    1d96:	83 ec 1c             	sub    $0x1c,%esp
  printf(1, "linkunlink test\n");
    1d99:	c7 44 24 04 34 4b 00 	movl   $0x4b34,0x4(%esp)
    1da0:	00 
    1da1:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1da8:	e8 53 23 00 00       	call   4100 <printf>
  unlink("x");
    1dad:	c7 04 24 c1 4d 00 00 	movl   $0x4dc1,(%esp)
    1db4:	e8 51 22 00 00       	call   400a <unlink>
  pid = fork();
    1db9:	e8 ec 21 00 00       	call   3faa <fork>
  if(pid < 0){
    1dbe:	85 c0                	test   %eax,%eax
  pid = fork();
    1dc0:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  if(pid < 0){
    1dc3:	0f 88 c0 00 00 00    	js     1e89 <linkunlink+0xf9>
  unsigned int x = (pid ? 1 : 97);
    1dc9:	83 7d e4 01          	cmpl   $0x1,-0x1c(%ebp)
    1dcd:	bb 64 00 00 00       	mov    $0x64,%ebx
    if((x % 3) == 0){
    1dd2:	be ab aa aa aa       	mov    $0xaaaaaaab,%esi
  unsigned int x = (pid ? 1 : 97);
    1dd7:	19 ff                	sbb    %edi,%edi
    1dd9:	83 e7 60             	and    $0x60,%edi
    1ddc:	83 c7 01             	add    $0x1,%edi
    1ddf:	eb 21                	jmp    1e02 <linkunlink+0x72>
    1de1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    } else if((x % 3) == 1){
    1de8:	83 fa 01             	cmp    $0x1,%edx
    1deb:	0f 84 7f 00 00 00    	je     1e70 <linkunlink+0xe0>
      unlink("x");
    1df1:	c7 04 24 c1 4d 00 00 	movl   $0x4dc1,(%esp)
    1df8:	e8 0d 22 00 00       	call   400a <unlink>
  for(i = 0; i < 100; i++){
    1dfd:	83 eb 01             	sub    $0x1,%ebx
    1e00:	74 3c                	je     1e3e <linkunlink+0xae>
    x = x * 1103515245 + 12345;
    1e02:	69 cf 6d 4e c6 41    	imul   $0x41c64e6d,%edi,%ecx
    1e08:	8d b9 39 30 00 00    	lea    0x3039(%ecx),%edi
    if((x % 3) == 0){
    1e0e:	89 f8                	mov    %edi,%eax
    1e10:	f7 e6                	mul    %esi
    1e12:	d1 ea                	shr    %edx
    1e14:	8d 04 52             	lea    (%edx,%edx,2),%eax
    1e17:	89 fa                	mov    %edi,%edx
    1e19:	29 c2                	sub    %eax,%edx
    1e1b:	75 cb                	jne    1de8 <linkunlink+0x58>
      close(open("x", O_RDWR | O_CREATE));
    1e1d:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    1e24:	00 
    1e25:	c7 04 24 c1 4d 00 00 	movl   $0x4dc1,(%esp)
    1e2c:	e8 c9 21 00 00       	call   3ffa <open>
    1e31:	89 04 24             	mov    %eax,(%esp)
    1e34:	e8 a9 21 00 00       	call   3fe2 <close>
  for(i = 0; i < 100; i++){
    1e39:	83 eb 01             	sub    $0x1,%ebx
    1e3c:	75 c4                	jne    1e02 <linkunlink+0x72>
  if(pid)
    1e3e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    wait(0);
    1e41:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  if(pid)
    1e48:	85 c0                	test   %eax,%eax
    1e4a:	74 5d                	je     1ea9 <linkunlink+0x119>
    wait(0);
    1e4c:	e8 69 21 00 00       	call   3fba <wait>
  printf(1, "linkunlink ok\n");
    1e51:	c7 44 24 04 49 4b 00 	movl   $0x4b49,0x4(%esp)
    1e58:	00 
    1e59:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1e60:	e8 9b 22 00 00       	call   4100 <printf>
}
    1e65:	83 c4 1c             	add    $0x1c,%esp
    1e68:	5b                   	pop    %ebx
    1e69:	5e                   	pop    %esi
    1e6a:	5f                   	pop    %edi
    1e6b:	5d                   	pop    %ebp
    1e6c:	c3                   	ret    
    1e6d:	8d 76 00             	lea    0x0(%esi),%esi
      link("cat", "x");
    1e70:	c7 44 24 04 c1 4d 00 	movl   $0x4dc1,0x4(%esp)
    1e77:	00 
    1e78:	c7 04 24 45 4b 00 00 	movl   $0x4b45,(%esp)
    1e7f:	e8 96 21 00 00       	call   401a <link>
    1e84:	e9 74 ff ff ff       	jmp    1dfd <linkunlink+0x6d>
    printf(1, "fork failed\n");
    1e89:	c7 44 24 04 a9 53 00 	movl   $0x53a9,0x4(%esp)
    1e90:	00 
    1e91:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1e98:	e8 63 22 00 00       	call   4100 <printf>
    exit(1);
    1e9d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1ea4:	e8 09 21 00 00       	call   3fb2 <exit>
    exit(0);
    1ea9:	e8 04 21 00 00       	call   3fb2 <exit>
    1eae:	66 90                	xchg   %ax,%ax

00001eb0 <bigdir>:
{
    1eb0:	55                   	push   %ebp
    1eb1:	89 e5                	mov    %esp,%ebp
    1eb3:	56                   	push   %esi
    1eb4:	53                   	push   %ebx
    1eb5:	83 ec 20             	sub    $0x20,%esp
  printf(1, "bigdir test\n");
    1eb8:	c7 44 24 04 58 4b 00 	movl   $0x4b58,0x4(%esp)
    1ebf:	00 
    1ec0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1ec7:	e8 34 22 00 00       	call   4100 <printf>
  unlink("bd");
    1ecc:	c7 04 24 65 4b 00 00 	movl   $0x4b65,(%esp)
    1ed3:	e8 32 21 00 00       	call   400a <unlink>
  fd = open("bd", O_CREATE);
    1ed8:	c7 44 24 04 00 02 00 	movl   $0x200,0x4(%esp)
    1edf:	00 
    1ee0:	c7 04 24 65 4b 00 00 	movl   $0x4b65,(%esp)
    1ee7:	e8 0e 21 00 00       	call   3ffa <open>
  if(fd < 0){
    1eec:	85 c0                	test   %eax,%eax
    1eee:	0f 88 f4 00 00 00    	js     1fe8 <bigdir+0x138>
  close(fd);
    1ef4:	89 04 24             	mov    %eax,(%esp)
  for(i = 0; i < 500; i++){
    1ef7:	31 db                	xor    %ebx,%ebx
  close(fd);
    1ef9:	e8 e4 20 00 00       	call   3fe2 <close>
    1efe:	8d 75 ee             	lea    -0x12(%ebp),%esi
    1f01:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    name[1] = '0' + (i / 64);
    1f08:	89 d8                	mov    %ebx,%eax
    1f0a:	c1 f8 06             	sar    $0x6,%eax
    1f0d:	83 c0 30             	add    $0x30,%eax
    1f10:	88 45 ef             	mov    %al,-0x11(%ebp)
    name[2] = '0' + (i % 64);
    1f13:	89 d8                	mov    %ebx,%eax
    1f15:	83 e0 3f             	and    $0x3f,%eax
    1f18:	83 c0 30             	add    $0x30,%eax
    if(link("bd", name) != 0){
    1f1b:	89 74 24 04          	mov    %esi,0x4(%esp)
    1f1f:	c7 04 24 65 4b 00 00 	movl   $0x4b65,(%esp)
    name[0] = 'x';
    1f26:	c6 45 ee 78          	movb   $0x78,-0x12(%ebp)
    name[2] = '0' + (i % 64);
    1f2a:	88 45 f0             	mov    %al,-0x10(%ebp)
    name[3] = '\0';
    1f2d:	c6 45 f1 00          	movb   $0x0,-0xf(%ebp)
    if(link("bd", name) != 0){
    1f31:	e8 e4 20 00 00       	call   401a <link>
    1f36:	85 c0                	test   %eax,%eax
    1f38:	75 6e                	jne    1fa8 <bigdir+0xf8>
  for(i = 0; i < 500; i++){
    1f3a:	83 c3 01             	add    $0x1,%ebx
    1f3d:	81 fb f4 01 00 00    	cmp    $0x1f4,%ebx
    1f43:	75 c3                	jne    1f08 <bigdir+0x58>
  unlink("bd");
    1f45:	c7 04 24 65 4b 00 00 	movl   $0x4b65,(%esp)
  for(i = 0; i < 500; i++){
    1f4c:	66 31 db             	xor    %bx,%bx
  unlink("bd");
    1f4f:	e8 b6 20 00 00       	call   400a <unlink>
    1f54:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    name[1] = '0' + (i / 64);
    1f58:	89 d8                	mov    %ebx,%eax
    1f5a:	c1 f8 06             	sar    $0x6,%eax
    1f5d:	83 c0 30             	add    $0x30,%eax
    1f60:	88 45 ef             	mov    %al,-0x11(%ebp)
    name[2] = '0' + (i % 64);
    1f63:	89 d8                	mov    %ebx,%eax
    1f65:	83 e0 3f             	and    $0x3f,%eax
    1f68:	83 c0 30             	add    $0x30,%eax
    if(unlink(name) != 0){
    1f6b:	89 34 24             	mov    %esi,(%esp)
    name[0] = 'x';
    1f6e:	c6 45 ee 78          	movb   $0x78,-0x12(%ebp)
    name[2] = '0' + (i % 64);
    1f72:	88 45 f0             	mov    %al,-0x10(%ebp)
    name[3] = '\0';
    1f75:	c6 45 f1 00          	movb   $0x0,-0xf(%ebp)
    if(unlink(name) != 0){
    1f79:	e8 8c 20 00 00       	call   400a <unlink>
    1f7e:	85 c0                	test   %eax,%eax
    1f80:	75 46                	jne    1fc8 <bigdir+0x118>
  for(i = 0; i < 500; i++){
    1f82:	83 c3 01             	add    $0x1,%ebx
    1f85:	81 fb f4 01 00 00    	cmp    $0x1f4,%ebx
    1f8b:	75 cb                	jne    1f58 <bigdir+0xa8>
  printf(1, "bigdir ok\n");
    1f8d:	c7 44 24 04 a7 4b 00 	movl   $0x4ba7,0x4(%esp)
    1f94:	00 
    1f95:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1f9c:	e8 5f 21 00 00       	call   4100 <printf>
}
    1fa1:	83 c4 20             	add    $0x20,%esp
    1fa4:	5b                   	pop    %ebx
    1fa5:	5e                   	pop    %esi
    1fa6:	5d                   	pop    %ebp
    1fa7:	c3                   	ret    
      printf(1, "bigdir link failed\n");
    1fa8:	c7 44 24 04 7e 4b 00 	movl   $0x4b7e,0x4(%esp)
    1faf:	00 
    1fb0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1fb7:	e8 44 21 00 00       	call   4100 <printf>
      exit(1);
    1fbc:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1fc3:	e8 ea 1f 00 00       	call   3fb2 <exit>
      printf(1, "bigdir unlink failed");
    1fc8:	c7 44 24 04 92 4b 00 	movl   $0x4b92,0x4(%esp)
    1fcf:	00 
    1fd0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1fd7:	e8 24 21 00 00       	call   4100 <printf>
      exit(1);
    1fdc:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1fe3:	e8 ca 1f 00 00       	call   3fb2 <exit>
    printf(1, "bigdir create failed\n");
    1fe8:	c7 44 24 04 68 4b 00 	movl   $0x4b68,0x4(%esp)
    1fef:	00 
    1ff0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1ff7:	e8 04 21 00 00       	call   4100 <printf>
    exit(1);
    1ffc:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2003:	e8 aa 1f 00 00       	call   3fb2 <exit>
    2008:	90                   	nop
    2009:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00002010 <subdir>:
{
    2010:	55                   	push   %ebp
    2011:	89 e5                	mov    %esp,%ebp
    2013:	53                   	push   %ebx
    2014:	83 ec 14             	sub    $0x14,%esp
  printf(1, "subdir test\n");
    2017:	c7 44 24 04 b2 4b 00 	movl   $0x4bb2,0x4(%esp)
    201e:	00 
    201f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2026:	e8 d5 20 00 00       	call   4100 <printf>
  unlink("ff");
    202b:	c7 04 24 3b 4c 00 00 	movl   $0x4c3b,(%esp)
    2032:	e8 d3 1f 00 00       	call   400a <unlink>
  if(mkdir("dd") != 0){
    2037:	c7 04 24 d8 4c 00 00 	movl   $0x4cd8,(%esp)
    203e:	e8 df 1f 00 00       	call   4022 <mkdir>
    2043:	85 c0                	test   %eax,%eax
    2045:	0f 85 a1 06 00 00    	jne    26ec <subdir+0x6dc>
  fd = open("dd/ff", O_CREATE | O_RDWR);
    204b:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    2052:	00 
    2053:	c7 04 24 11 4c 00 00 	movl   $0x4c11,(%esp)
    205a:	e8 9b 1f 00 00       	call   3ffa <open>
  if(fd < 0){
    205f:	85 c0                	test   %eax,%eax
  fd = open("dd/ff", O_CREATE | O_RDWR);
    2061:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    2063:	0f 88 63 06 00 00    	js     26cc <subdir+0x6bc>
  write(fd, "ff", 2);
    2069:	c7 44 24 08 02 00 00 	movl   $0x2,0x8(%esp)
    2070:	00 
    2071:	c7 44 24 04 3b 4c 00 	movl   $0x4c3b,0x4(%esp)
    2078:	00 
    2079:	89 04 24             	mov    %eax,(%esp)
    207c:	e8 59 1f 00 00       	call   3fda <write>
  close(fd);
    2081:	89 1c 24             	mov    %ebx,(%esp)
    2084:	e8 59 1f 00 00       	call   3fe2 <close>
  if(unlink("dd") >= 0){
    2089:	c7 04 24 d8 4c 00 00 	movl   $0x4cd8,(%esp)
    2090:	e8 75 1f 00 00       	call   400a <unlink>
    2095:	85 c0                	test   %eax,%eax
    2097:	0f 89 0f 06 00 00    	jns    26ac <subdir+0x69c>
  if(mkdir("/dd/dd") != 0){
    209d:	c7 04 24 ec 4b 00 00 	movl   $0x4bec,(%esp)
    20a4:	e8 79 1f 00 00       	call   4022 <mkdir>
    20a9:	85 c0                	test   %eax,%eax
    20ab:	0f 85 db 05 00 00    	jne    268c <subdir+0x67c>
  fd = open("dd/dd/ff", O_CREATE | O_RDWR);
    20b1:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    20b8:	00 
    20b9:	c7 04 24 0e 4c 00 00 	movl   $0x4c0e,(%esp)
    20c0:	e8 35 1f 00 00       	call   3ffa <open>
  if(fd < 0){
    20c5:	85 c0                	test   %eax,%eax
  fd = open("dd/dd/ff", O_CREATE | O_RDWR);
    20c7:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    20c9:	0f 88 5d 04 00 00    	js     252c <subdir+0x51c>
  write(fd, "FF", 2);
    20cf:	c7 44 24 08 02 00 00 	movl   $0x2,0x8(%esp)
    20d6:	00 
    20d7:	c7 44 24 04 2f 4c 00 	movl   $0x4c2f,0x4(%esp)
    20de:	00 
    20df:	89 04 24             	mov    %eax,(%esp)
    20e2:	e8 f3 1e 00 00       	call   3fda <write>
  close(fd);
    20e7:	89 1c 24             	mov    %ebx,(%esp)
    20ea:	e8 f3 1e 00 00       	call   3fe2 <close>
  fd = open("dd/dd/../ff", 0);
    20ef:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    20f6:	00 
    20f7:	c7 04 24 32 4c 00 00 	movl   $0x4c32,(%esp)
    20fe:	e8 f7 1e 00 00       	call   3ffa <open>
  if(fd < 0){
    2103:	85 c0                	test   %eax,%eax
  fd = open("dd/dd/../ff", 0);
    2105:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    2107:	0f 88 ff 03 00 00    	js     250c <subdir+0x4fc>
  cc = read(fd, buf, sizeof(buf));
    210d:	c7 44 24 08 00 20 00 	movl   $0x2000,0x8(%esp)
    2114:	00 
    2115:	c7 44 24 04 c0 8c 00 	movl   $0x8cc0,0x4(%esp)
    211c:	00 
    211d:	89 04 24             	mov    %eax,(%esp)
    2120:	e8 ad 1e 00 00       	call   3fd2 <read>
  if(cc != 2 || buf[0] != 'f'){
    2125:	83 f8 02             	cmp    $0x2,%eax
    2128:	0f 85 fe 02 00 00    	jne    242c <subdir+0x41c>
    212e:	80 3d c0 8c 00 00 66 	cmpb   $0x66,0x8cc0
    2135:	0f 85 f1 02 00 00    	jne    242c <subdir+0x41c>
  close(fd);
    213b:	89 1c 24             	mov    %ebx,(%esp)
    213e:	e8 9f 1e 00 00       	call   3fe2 <close>
  if(link("dd/dd/ff", "dd/dd/ffff") != 0){
    2143:	c7 44 24 04 72 4c 00 	movl   $0x4c72,0x4(%esp)
    214a:	00 
    214b:	c7 04 24 0e 4c 00 00 	movl   $0x4c0e,(%esp)
    2152:	e8 c3 1e 00 00       	call   401a <link>
    2157:	85 c0                	test   %eax,%eax
    2159:	0f 85 0d 04 00 00    	jne    256c <subdir+0x55c>
  if(unlink("dd/dd/ff") != 0){
    215f:	c7 04 24 0e 4c 00 00 	movl   $0x4c0e,(%esp)
    2166:	e8 9f 1e 00 00       	call   400a <unlink>
    216b:	85 c0                	test   %eax,%eax
    216d:	0f 85 f9 02 00 00    	jne    246c <subdir+0x45c>
  if(open("dd/dd/ff", O_RDONLY) >= 0){
    2173:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    217a:	00 
    217b:	c7 04 24 0e 4c 00 00 	movl   $0x4c0e,(%esp)
    2182:	e8 73 1e 00 00       	call   3ffa <open>
    2187:	85 c0                	test   %eax,%eax
    2189:	0f 89 dd 04 00 00    	jns    266c <subdir+0x65c>
  if(chdir("dd") != 0){
    218f:	c7 04 24 d8 4c 00 00 	movl   $0x4cd8,(%esp)
    2196:	e8 8f 1e 00 00       	call   402a <chdir>
    219b:	85 c0                	test   %eax,%eax
    219d:	0f 85 a9 04 00 00    	jne    264c <subdir+0x63c>
  if(chdir("dd/../../dd") != 0){
    21a3:	c7 04 24 a6 4c 00 00 	movl   $0x4ca6,(%esp)
    21aa:	e8 7b 1e 00 00       	call   402a <chdir>
    21af:	85 c0                	test   %eax,%eax
    21b1:	0f 85 95 02 00 00    	jne    244c <subdir+0x43c>
  if(chdir("dd/../../../dd") != 0){
    21b7:	c7 04 24 cc 4c 00 00 	movl   $0x4ccc,(%esp)
    21be:	e8 67 1e 00 00       	call   402a <chdir>
    21c3:	85 c0                	test   %eax,%eax
    21c5:	0f 85 81 02 00 00    	jne    244c <subdir+0x43c>
  if(chdir("./..") != 0){
    21cb:	c7 04 24 db 4c 00 00 	movl   $0x4cdb,(%esp)
    21d2:	e8 53 1e 00 00       	call   402a <chdir>
    21d7:	85 c0                	test   %eax,%eax
    21d9:	0f 85 6d 03 00 00    	jne    254c <subdir+0x53c>
  fd = open("dd/dd/ffff", 0);
    21df:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    21e6:	00 
    21e7:	c7 04 24 72 4c 00 00 	movl   $0x4c72,(%esp)
    21ee:	e8 07 1e 00 00       	call   3ffa <open>
  if(fd < 0){
    21f3:	85 c0                	test   %eax,%eax
  fd = open("dd/dd/ffff", 0);
    21f5:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    21f7:	0f 88 6f 06 00 00    	js     286c <subdir+0x85c>
  if(read(fd, buf, sizeof(buf)) != 2){
    21fd:	c7 44 24 08 00 20 00 	movl   $0x2000,0x8(%esp)
    2204:	00 
    2205:	c7 44 24 04 c0 8c 00 	movl   $0x8cc0,0x4(%esp)
    220c:	00 
    220d:	89 04 24             	mov    %eax,(%esp)
    2210:	e8 bd 1d 00 00       	call   3fd2 <read>
    2215:	83 f8 02             	cmp    $0x2,%eax
    2218:	0f 85 2e 06 00 00    	jne    284c <subdir+0x83c>
  close(fd);
    221e:	89 1c 24             	mov    %ebx,(%esp)
    2221:	e8 bc 1d 00 00       	call   3fe2 <close>
  if(open("dd/dd/ff", O_RDONLY) >= 0){
    2226:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    222d:	00 
    222e:	c7 04 24 0e 4c 00 00 	movl   $0x4c0e,(%esp)
    2235:	e8 c0 1d 00 00       	call   3ffa <open>
    223a:	85 c0                	test   %eax,%eax
    223c:	0f 89 6a 02 00 00    	jns    24ac <subdir+0x49c>
  if(open("dd/ff/ff", O_CREATE|O_RDWR) >= 0){
    2242:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    2249:	00 
    224a:	c7 04 24 26 4d 00 00 	movl   $0x4d26,(%esp)
    2251:	e8 a4 1d 00 00       	call   3ffa <open>
    2256:	85 c0                	test   %eax,%eax
    2258:	0f 89 2e 02 00 00    	jns    248c <subdir+0x47c>
  if(open("dd/xx/ff", O_CREATE|O_RDWR) >= 0){
    225e:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    2265:	00 
    2266:	c7 04 24 4b 4d 00 00 	movl   $0x4d4b,(%esp)
    226d:	e8 88 1d 00 00       	call   3ffa <open>
    2272:	85 c0                	test   %eax,%eax
    2274:	0f 89 b2 03 00 00    	jns    262c <subdir+0x61c>
  if(open("dd", O_CREATE) >= 0){
    227a:	c7 44 24 04 00 02 00 	movl   $0x200,0x4(%esp)
    2281:	00 
    2282:	c7 04 24 d8 4c 00 00 	movl   $0x4cd8,(%esp)
    2289:	e8 6c 1d 00 00       	call   3ffa <open>
    228e:	85 c0                	test   %eax,%eax
    2290:	0f 89 76 03 00 00    	jns    260c <subdir+0x5fc>
  if(open("dd", O_RDWR) >= 0){
    2296:	c7 44 24 04 02 00 00 	movl   $0x2,0x4(%esp)
    229d:	00 
    229e:	c7 04 24 d8 4c 00 00 	movl   $0x4cd8,(%esp)
    22a5:	e8 50 1d 00 00       	call   3ffa <open>
    22aa:	85 c0                	test   %eax,%eax
    22ac:	0f 89 3a 03 00 00    	jns    25ec <subdir+0x5dc>
  if(open("dd", O_WRONLY) >= 0){
    22b2:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
    22b9:	00 
    22ba:	c7 04 24 d8 4c 00 00 	movl   $0x4cd8,(%esp)
    22c1:	e8 34 1d 00 00       	call   3ffa <open>
    22c6:	85 c0                	test   %eax,%eax
    22c8:	0f 89 fe 02 00 00    	jns    25cc <subdir+0x5bc>
  if(link("dd/ff/ff", "dd/dd/xx") == 0){
    22ce:	c7 44 24 04 ba 4d 00 	movl   $0x4dba,0x4(%esp)
    22d5:	00 
    22d6:	c7 04 24 26 4d 00 00 	movl   $0x4d26,(%esp)
    22dd:	e8 38 1d 00 00       	call   401a <link>
    22e2:	85 c0                	test   %eax,%eax
    22e4:	0f 84 c2 02 00 00    	je     25ac <subdir+0x59c>
  if(link("dd/xx/ff", "dd/dd/xx") == 0){
    22ea:	c7 44 24 04 ba 4d 00 	movl   $0x4dba,0x4(%esp)
    22f1:	00 
    22f2:	c7 04 24 4b 4d 00 00 	movl   $0x4d4b,(%esp)
    22f9:	e8 1c 1d 00 00       	call   401a <link>
    22fe:	85 c0                	test   %eax,%eax
    2300:	0f 84 86 02 00 00    	je     258c <subdir+0x57c>
  if(link("dd/ff", "dd/dd/ffff") == 0){
    2306:	c7 44 24 04 72 4c 00 	movl   $0x4c72,0x4(%esp)
    230d:	00 
    230e:	c7 04 24 11 4c 00 00 	movl   $0x4c11,(%esp)
    2315:	e8 00 1d 00 00       	call   401a <link>
    231a:	85 c0                	test   %eax,%eax
    231c:	0f 84 ca 01 00 00    	je     24ec <subdir+0x4dc>
  if(mkdir("dd/ff/ff") == 0){
    2322:	c7 04 24 26 4d 00 00 	movl   $0x4d26,(%esp)
    2329:	e8 f4 1c 00 00       	call   4022 <mkdir>
    232e:	85 c0                	test   %eax,%eax
    2330:	0f 84 96 01 00 00    	je     24cc <subdir+0x4bc>
  if(mkdir("dd/xx/ff") == 0){
    2336:	c7 04 24 4b 4d 00 00 	movl   $0x4d4b,(%esp)
    233d:	e8 e0 1c 00 00       	call   4022 <mkdir>
    2342:	85 c0                	test   %eax,%eax
    2344:	0f 84 e2 04 00 00    	je     282c <subdir+0x81c>
  if(mkdir("dd/dd/ffff") == 0){
    234a:	c7 04 24 72 4c 00 00 	movl   $0x4c72,(%esp)
    2351:	e8 cc 1c 00 00       	call   4022 <mkdir>
    2356:	85 c0                	test   %eax,%eax
    2358:	0f 84 ae 04 00 00    	je     280c <subdir+0x7fc>
  if(unlink("dd/xx/ff") == 0){
    235e:	c7 04 24 4b 4d 00 00 	movl   $0x4d4b,(%esp)
    2365:	e8 a0 1c 00 00       	call   400a <unlink>
    236a:	85 c0                	test   %eax,%eax
    236c:	0f 84 7a 04 00 00    	je     27ec <subdir+0x7dc>
  if(unlink("dd/ff/ff") == 0){
    2372:	c7 04 24 26 4d 00 00 	movl   $0x4d26,(%esp)
    2379:	e8 8c 1c 00 00       	call   400a <unlink>
    237e:	85 c0                	test   %eax,%eax
    2380:	0f 84 46 04 00 00    	je     27cc <subdir+0x7bc>
  if(chdir("dd/ff") == 0){
    2386:	c7 04 24 11 4c 00 00 	movl   $0x4c11,(%esp)
    238d:	e8 98 1c 00 00       	call   402a <chdir>
    2392:	85 c0                	test   %eax,%eax
    2394:	0f 84 12 04 00 00    	je     27ac <subdir+0x79c>
  if(chdir("dd/xx") == 0){
    239a:	c7 04 24 bd 4d 00 00 	movl   $0x4dbd,(%esp)
    23a1:	e8 84 1c 00 00       	call   402a <chdir>
    23a6:	85 c0                	test   %eax,%eax
    23a8:	0f 84 de 03 00 00    	je     278c <subdir+0x77c>
  if(unlink("dd/dd/ffff") != 0){
    23ae:	c7 04 24 72 4c 00 00 	movl   $0x4c72,(%esp)
    23b5:	e8 50 1c 00 00       	call   400a <unlink>
    23ba:	85 c0                	test   %eax,%eax
    23bc:	0f 85 aa 00 00 00    	jne    246c <subdir+0x45c>
  if(unlink("dd/ff") != 0){
    23c2:	c7 04 24 11 4c 00 00 	movl   $0x4c11,(%esp)
    23c9:	e8 3c 1c 00 00       	call   400a <unlink>
    23ce:	85 c0                	test   %eax,%eax
    23d0:	0f 85 96 03 00 00    	jne    276c <subdir+0x75c>
  if(unlink("dd") == 0){
    23d6:	c7 04 24 d8 4c 00 00 	movl   $0x4cd8,(%esp)
    23dd:	e8 28 1c 00 00       	call   400a <unlink>
    23e2:	85 c0                	test   %eax,%eax
    23e4:	0f 84 62 03 00 00    	je     274c <subdir+0x73c>
  if(unlink("dd/dd") < 0){
    23ea:	c7 04 24 ed 4b 00 00 	movl   $0x4bed,(%esp)
    23f1:	e8 14 1c 00 00       	call   400a <unlink>
    23f6:	85 c0                	test   %eax,%eax
    23f8:	0f 88 2e 03 00 00    	js     272c <subdir+0x71c>
  if(unlink("dd") < 0){
    23fe:	c7 04 24 d8 4c 00 00 	movl   $0x4cd8,(%esp)
    2405:	e8 00 1c 00 00       	call   400a <unlink>
    240a:	85 c0                	test   %eax,%eax
    240c:	0f 88 fa 02 00 00    	js     270c <subdir+0x6fc>
  printf(1, "subdir ok\n");
    2412:	c7 44 24 04 ba 4e 00 	movl   $0x4eba,0x4(%esp)
    2419:	00 
    241a:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2421:	e8 da 1c 00 00       	call   4100 <printf>
}
    2426:	83 c4 14             	add    $0x14,%esp
    2429:	5b                   	pop    %ebx
    242a:	5d                   	pop    %ebp
    242b:	c3                   	ret    
    printf(1, "dd/dd/../ff wrong content\n");
    242c:	c7 44 24 04 57 4c 00 	movl   $0x4c57,0x4(%esp)
    2433:	00 
    2434:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    243b:	e8 c0 1c 00 00       	call   4100 <printf>
    exit(1);
    2440:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2447:	e8 66 1b 00 00       	call   3fb2 <exit>
    printf(1, "chdir dd/../../dd failed\n");
    244c:	c7 44 24 04 b2 4c 00 	movl   $0x4cb2,0x4(%esp)
    2453:	00 
    2454:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    245b:	e8 a0 1c 00 00       	call   4100 <printf>
    exit(1);
    2460:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2467:	e8 46 1b 00 00       	call   3fb2 <exit>
    printf(1, "unlink dd/dd/ff failed\n");
    246c:	c7 44 24 04 7d 4c 00 	movl   $0x4c7d,0x4(%esp)
    2473:	00 
    2474:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    247b:	e8 80 1c 00 00       	call   4100 <printf>
    exit(1);
    2480:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2487:	e8 26 1b 00 00       	call   3fb2 <exit>
    printf(1, "create dd/ff/ff succeeded!\n");
    248c:	c7 44 24 04 2f 4d 00 	movl   $0x4d2f,0x4(%esp)
    2493:	00 
    2494:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    249b:	e8 60 1c 00 00       	call   4100 <printf>
    exit(0);
    24a0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    24a7:	e8 06 1b 00 00       	call   3fb2 <exit>
    printf(1, "open (unlinked) dd/dd/ff succeeded!\n");
    24ac:	c7 44 24 04 14 57 00 	movl   $0x5714,0x4(%esp)
    24b3:	00 
    24b4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    24bb:	e8 40 1c 00 00       	call   4100 <printf>
    exit(0);
    24c0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    24c7:	e8 e6 1a 00 00       	call   3fb2 <exit>
    printf(1, "mkdir dd/ff/ff succeeded!\n");
    24cc:	c7 44 24 04 c3 4d 00 	movl   $0x4dc3,0x4(%esp)
    24d3:	00 
    24d4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    24db:	e8 20 1c 00 00       	call   4100 <printf>
    exit(0);
    24e0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    24e7:	e8 c6 1a 00 00       	call   3fb2 <exit>
    printf(1, "link dd/ff dd/dd/ffff succeeded!\n");
    24ec:	c7 44 24 04 84 57 00 	movl   $0x5784,0x4(%esp)
    24f3:	00 
    24f4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    24fb:	e8 00 1c 00 00       	call   4100 <printf>
    exit(0);
    2500:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2507:	e8 a6 1a 00 00       	call   3fb2 <exit>
    printf(1, "open dd/dd/../ff failed\n");
    250c:	c7 44 24 04 3e 4c 00 	movl   $0x4c3e,0x4(%esp)
    2513:	00 
    2514:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    251b:	e8 e0 1b 00 00       	call   4100 <printf>
    exit(1);
    2520:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2527:	e8 86 1a 00 00       	call   3fb2 <exit>
    printf(1, "create dd/dd/ff failed\n");
    252c:	c7 44 24 04 17 4c 00 	movl   $0x4c17,0x4(%esp)
    2533:	00 
    2534:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    253b:	e8 c0 1b 00 00       	call   4100 <printf>
    exit(1);
    2540:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2547:	e8 66 1a 00 00       	call   3fb2 <exit>
    printf(1, "chdir ./.. failed\n");
    254c:	c7 44 24 04 e0 4c 00 	movl   $0x4ce0,0x4(%esp)
    2553:	00 
    2554:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    255b:	e8 a0 1b 00 00       	call   4100 <printf>
    exit(1);
    2560:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2567:	e8 46 1a 00 00       	call   3fb2 <exit>
    printf(1, "link dd/dd/ff dd/dd/ffff failed\n");
    256c:	c7 44 24 04 cc 56 00 	movl   $0x56cc,0x4(%esp)
    2573:	00 
    2574:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    257b:	e8 80 1b 00 00       	call   4100 <printf>
    exit(1);
    2580:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2587:	e8 26 1a 00 00       	call   3fb2 <exit>
    printf(1, "link dd/xx/ff dd/dd/xx succeeded!\n");
    258c:	c7 44 24 04 60 57 00 	movl   $0x5760,0x4(%esp)
    2593:	00 
    2594:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    259b:	e8 60 1b 00 00       	call   4100 <printf>
    exit(0);
    25a0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    25a7:	e8 06 1a 00 00       	call   3fb2 <exit>
    printf(1, "link dd/ff/ff dd/dd/xx succeeded!\n");
    25ac:	c7 44 24 04 3c 57 00 	movl   $0x573c,0x4(%esp)
    25b3:	00 
    25b4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    25bb:	e8 40 1b 00 00       	call   4100 <printf>
    exit(0);
    25c0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    25c7:	e8 e6 19 00 00       	call   3fb2 <exit>
    printf(1, "open dd wronly succeeded!\n");
    25cc:	c7 44 24 04 9f 4d 00 	movl   $0x4d9f,0x4(%esp)
    25d3:	00 
    25d4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    25db:	e8 20 1b 00 00       	call   4100 <printf>
    exit(0);
    25e0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    25e7:	e8 c6 19 00 00       	call   3fb2 <exit>
    printf(1, "open dd rdwr succeeded!\n");
    25ec:	c7 44 24 04 86 4d 00 	movl   $0x4d86,0x4(%esp)
    25f3:	00 
    25f4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    25fb:	e8 00 1b 00 00       	call   4100 <printf>
    exit(0);
    2600:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2607:	e8 a6 19 00 00       	call   3fb2 <exit>
    printf(1, "create dd succeeded!\n");
    260c:	c7 44 24 04 70 4d 00 	movl   $0x4d70,0x4(%esp)
    2613:	00 
    2614:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    261b:	e8 e0 1a 00 00       	call   4100 <printf>
    exit(0);
    2620:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2627:	e8 86 19 00 00       	call   3fb2 <exit>
    printf(1, "create dd/xx/ff succeeded!\n");
    262c:	c7 44 24 04 54 4d 00 	movl   $0x4d54,0x4(%esp)
    2633:	00 
    2634:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    263b:	e8 c0 1a 00 00       	call   4100 <printf>
    exit(0);
    2640:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2647:	e8 66 19 00 00       	call   3fb2 <exit>
    printf(1, "chdir dd failed\n");
    264c:	c7 44 24 04 95 4c 00 	movl   $0x4c95,0x4(%esp)
    2653:	00 
    2654:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    265b:	e8 a0 1a 00 00       	call   4100 <printf>
    exit(1);
    2660:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2667:	e8 46 19 00 00       	call   3fb2 <exit>
    printf(1, "open (unlinked) dd/dd/ff succeeded\n");
    266c:	c7 44 24 04 f0 56 00 	movl   $0x56f0,0x4(%esp)
    2673:	00 
    2674:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    267b:	e8 80 1a 00 00       	call   4100 <printf>
    exit(0);
    2680:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2687:	e8 26 19 00 00       	call   3fb2 <exit>
    printf(1, "subdir mkdir dd/dd failed\n");
    268c:	c7 44 24 04 f3 4b 00 	movl   $0x4bf3,0x4(%esp)
    2693:	00 
    2694:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    269b:	e8 60 1a 00 00       	call   4100 <printf>
    exit(1);
    26a0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    26a7:	e8 06 19 00 00       	call   3fb2 <exit>
    printf(1, "unlink dd (non-empty dir) succeeded!\n");
    26ac:	c7 44 24 04 a4 56 00 	movl   $0x56a4,0x4(%esp)
    26b3:	00 
    26b4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    26bb:	e8 40 1a 00 00       	call   4100 <printf>
    exit(1);
    26c0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    26c7:	e8 e6 18 00 00       	call   3fb2 <exit>
    printf(1, "create dd/ff failed\n");
    26cc:	c7 44 24 04 d7 4b 00 	movl   $0x4bd7,0x4(%esp)
    26d3:	00 
    26d4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    26db:	e8 20 1a 00 00       	call   4100 <printf>
    exit(1);
    26e0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    26e7:	e8 c6 18 00 00       	call   3fb2 <exit>
    printf(1, "subdir mkdir dd failed\n");
    26ec:	c7 44 24 04 bf 4b 00 	movl   $0x4bbf,0x4(%esp)
    26f3:	00 
    26f4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    26fb:	e8 00 1a 00 00       	call   4100 <printf>
    exit(1);
    2700:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2707:	e8 a6 18 00 00       	call   3fb2 <exit>
    printf(1, "unlink dd failed\n");
    270c:	c7 44 24 04 a8 4e 00 	movl   $0x4ea8,0x4(%esp)
    2713:	00 
    2714:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    271b:	e8 e0 19 00 00       	call   4100 <printf>
    exit(1);
    2720:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2727:	e8 86 18 00 00       	call   3fb2 <exit>
    printf(1, "unlink dd/dd failed\n");
    272c:	c7 44 24 04 93 4e 00 	movl   $0x4e93,0x4(%esp)
    2733:	00 
    2734:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    273b:	e8 c0 19 00 00       	call   4100 <printf>
    exit(1);
    2740:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2747:	e8 66 18 00 00       	call   3fb2 <exit>
    printf(1, "unlink non-empty dd succeeded!\n");
    274c:	c7 44 24 04 a8 57 00 	movl   $0x57a8,0x4(%esp)
    2753:	00 
    2754:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    275b:	e8 a0 19 00 00       	call   4100 <printf>
    exit(0);
    2760:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2767:	e8 46 18 00 00       	call   3fb2 <exit>
    printf(1, "unlink dd/ff failed\n");
    276c:	c7 44 24 04 7e 4e 00 	movl   $0x4e7e,0x4(%esp)
    2773:	00 
    2774:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    277b:	e8 80 19 00 00       	call   4100 <printf>
    exit(1);
    2780:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2787:	e8 26 18 00 00       	call   3fb2 <exit>
    printf(1, "chdir dd/xx succeeded!\n");
    278c:	c7 44 24 04 66 4e 00 	movl   $0x4e66,0x4(%esp)
    2793:	00 
    2794:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    279b:	e8 60 19 00 00       	call   4100 <printf>
    exit(0);
    27a0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    27a7:	e8 06 18 00 00       	call   3fb2 <exit>
    printf(1, "chdir dd/ff succeeded!\n");
    27ac:	c7 44 24 04 4e 4e 00 	movl   $0x4e4e,0x4(%esp)
    27b3:	00 
    27b4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    27bb:	e8 40 19 00 00       	call   4100 <printf>
    exit(0);
    27c0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    27c7:	e8 e6 17 00 00       	call   3fb2 <exit>
    printf(1, "unlink dd/ff/ff succeeded!\n");
    27cc:	c7 44 24 04 32 4e 00 	movl   $0x4e32,0x4(%esp)
    27d3:	00 
    27d4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    27db:	e8 20 19 00 00       	call   4100 <printf>
    exit(0);
    27e0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    27e7:	e8 c6 17 00 00       	call   3fb2 <exit>
    printf(1, "unlink dd/xx/ff succeeded!\n");
    27ec:	c7 44 24 04 16 4e 00 	movl   $0x4e16,0x4(%esp)
    27f3:	00 
    27f4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    27fb:	e8 00 19 00 00       	call   4100 <printf>
    exit(0);
    2800:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2807:	e8 a6 17 00 00       	call   3fb2 <exit>
    printf(1, "mkdir dd/dd/ffff succeeded!\n");
    280c:	c7 44 24 04 f9 4d 00 	movl   $0x4df9,0x4(%esp)
    2813:	00 
    2814:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    281b:	e8 e0 18 00 00       	call   4100 <printf>
    exit(0);
    2820:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2827:	e8 86 17 00 00       	call   3fb2 <exit>
    printf(1, "mkdir dd/xx/ff succeeded!\n");
    282c:	c7 44 24 04 de 4d 00 	movl   $0x4dde,0x4(%esp)
    2833:	00 
    2834:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    283b:	e8 c0 18 00 00       	call   4100 <printf>
    exit(0);
    2840:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2847:	e8 66 17 00 00       	call   3fb2 <exit>
    printf(1, "read dd/dd/ffff wrong len\n");
    284c:	c7 44 24 04 0b 4d 00 	movl   $0x4d0b,0x4(%esp)
    2853:	00 
    2854:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    285b:	e8 a0 18 00 00       	call   4100 <printf>
    exit(1);
    2860:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2867:	e8 46 17 00 00       	call   3fb2 <exit>
    printf(1, "open dd/dd/ffff failed\n");
    286c:	c7 44 24 04 f3 4c 00 	movl   $0x4cf3,0x4(%esp)
    2873:	00 
    2874:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    287b:	e8 80 18 00 00       	call   4100 <printf>
    exit(1);
    2880:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2887:	e8 26 17 00 00       	call   3fb2 <exit>
    288c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00002890 <bigwrite>:
{
    2890:	55                   	push   %ebp
    2891:	89 e5                	mov    %esp,%ebp
    2893:	56                   	push   %esi
    2894:	53                   	push   %ebx
  for(sz = 499; sz < 12*512; sz += 471){
    2895:	bb f3 01 00 00       	mov    $0x1f3,%ebx
{
    289a:	83 ec 10             	sub    $0x10,%esp
  printf(1, "bigwrite test\n");
    289d:	c7 44 24 04 c5 4e 00 	movl   $0x4ec5,0x4(%esp)
    28a4:	00 
    28a5:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    28ac:	e8 4f 18 00 00       	call   4100 <printf>
  unlink("bigwrite");
    28b1:	c7 04 24 d4 4e 00 00 	movl   $0x4ed4,(%esp)
    28b8:	e8 4d 17 00 00       	call   400a <unlink>
    28bd:	8d 76 00             	lea    0x0(%esi),%esi
    fd = open("bigwrite", O_CREATE | O_RDWR);
    28c0:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    28c7:	00 
    28c8:	c7 04 24 d4 4e 00 00 	movl   $0x4ed4,(%esp)
    28cf:	e8 26 17 00 00       	call   3ffa <open>
    if(fd < 0){
    28d4:	85 c0                	test   %eax,%eax
    fd = open("bigwrite", O_CREATE | O_RDWR);
    28d6:	89 c6                	mov    %eax,%esi
    if(fd < 0){
    28d8:	0f 88 95 00 00 00    	js     2973 <bigwrite+0xe3>
      int cc = write(fd, buf, sz);
    28de:	89 5c 24 08          	mov    %ebx,0x8(%esp)
    28e2:	c7 44 24 04 c0 8c 00 	movl   $0x8cc0,0x4(%esp)
    28e9:	00 
    28ea:	89 04 24             	mov    %eax,(%esp)
    28ed:	e8 e8 16 00 00       	call   3fda <write>
      if(cc != sz){
    28f2:	39 d8                	cmp    %ebx,%eax
    28f4:	75 55                	jne    294b <bigwrite+0xbb>
      int cc = write(fd, buf, sz);
    28f6:	89 5c 24 08          	mov    %ebx,0x8(%esp)
    28fa:	c7 44 24 04 c0 8c 00 	movl   $0x8cc0,0x4(%esp)
    2901:	00 
    2902:	89 34 24             	mov    %esi,(%esp)
    2905:	e8 d0 16 00 00       	call   3fda <write>
      if(cc != sz){
    290a:	39 c3                	cmp    %eax,%ebx
    290c:	75 3d                	jne    294b <bigwrite+0xbb>
    close(fd);
    290e:	89 34 24             	mov    %esi,(%esp)
  for(sz = 499; sz < 12*512; sz += 471){
    2911:	81 c3 d7 01 00 00    	add    $0x1d7,%ebx
    close(fd);
    2917:	e8 c6 16 00 00       	call   3fe2 <close>
    unlink("bigwrite");
    291c:	c7 04 24 d4 4e 00 00 	movl   $0x4ed4,(%esp)
    2923:	e8 e2 16 00 00       	call   400a <unlink>
  for(sz = 499; sz < 12*512; sz += 471){
    2928:	81 fb 07 18 00 00    	cmp    $0x1807,%ebx
    292e:	75 90                	jne    28c0 <bigwrite+0x30>
  printf(1, "bigwrite ok\n");
    2930:	c7 44 24 04 07 4f 00 	movl   $0x4f07,0x4(%esp)
    2937:	00 
    2938:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    293f:	e8 bc 17 00 00       	call   4100 <printf>
}
    2944:	83 c4 10             	add    $0x10,%esp
    2947:	5b                   	pop    %ebx
    2948:	5e                   	pop    %esi
    2949:	5d                   	pop    %ebp
    294a:	c3                   	ret    
        printf(1, "write(%d) ret %d\n", sz, cc);
    294b:	89 44 24 0c          	mov    %eax,0xc(%esp)
    294f:	89 5c 24 08          	mov    %ebx,0x8(%esp)
    2953:	c7 44 24 04 f5 4e 00 	movl   $0x4ef5,0x4(%esp)
    295a:	00 
    295b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2962:	e8 99 17 00 00       	call   4100 <printf>
        exit(1);
    2967:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    296e:	e8 3f 16 00 00       	call   3fb2 <exit>
      printf(1, "cannot create bigwrite\n");
    2973:	c7 44 24 04 dd 4e 00 	movl   $0x4edd,0x4(%esp)
    297a:	00 
    297b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2982:	e8 79 17 00 00       	call   4100 <printf>
      exit(1);
    2987:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    298e:	e8 1f 16 00 00       	call   3fb2 <exit>
    2993:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    2999:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000029a0 <bigfile>:
{
    29a0:	55                   	push   %ebp
    29a1:	89 e5                	mov    %esp,%ebp
    29a3:	57                   	push   %edi
    29a4:	56                   	push   %esi
    29a5:	53                   	push   %ebx
    29a6:	83 ec 1c             	sub    $0x1c,%esp
  printf(1, "bigfile test\n");
    29a9:	c7 44 24 04 14 4f 00 	movl   $0x4f14,0x4(%esp)
    29b0:	00 
    29b1:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    29b8:	e8 43 17 00 00       	call   4100 <printf>
  unlink("bigfile");
    29bd:	c7 04 24 30 4f 00 00 	movl   $0x4f30,(%esp)
    29c4:	e8 41 16 00 00       	call   400a <unlink>
  fd = open("bigfile", O_CREATE | O_RDWR);
    29c9:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    29d0:	00 
    29d1:	c7 04 24 30 4f 00 00 	movl   $0x4f30,(%esp)
    29d8:	e8 1d 16 00 00       	call   3ffa <open>
  if(fd < 0){
    29dd:	85 c0                	test   %eax,%eax
  fd = open("bigfile", O_CREATE | O_RDWR);
    29df:	89 c6                	mov    %eax,%esi
  if(fd < 0){
    29e1:	0f 88 a2 01 00 00    	js     2b89 <bigfile+0x1e9>
    29e7:	31 db                	xor    %ebx,%ebx
    29e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    memset(buf, i, 600);
    29f0:	c7 44 24 08 58 02 00 	movl   $0x258,0x8(%esp)
    29f7:	00 
    29f8:	89 5c 24 04          	mov    %ebx,0x4(%esp)
    29fc:	c7 04 24 c0 8c 00 00 	movl   $0x8cc0,(%esp)
    2a03:	e8 38 14 00 00       	call   3e40 <memset>
    if(write(fd, buf, 600) != 600){
    2a08:	c7 44 24 08 58 02 00 	movl   $0x258,0x8(%esp)
    2a0f:	00 
    2a10:	c7 44 24 04 c0 8c 00 	movl   $0x8cc0,0x4(%esp)
    2a17:	00 
    2a18:	89 34 24             	mov    %esi,(%esp)
    2a1b:	e8 ba 15 00 00       	call   3fda <write>
    2a20:	3d 58 02 00 00       	cmp    $0x258,%eax
    2a25:	0f 85 1e 01 00 00    	jne    2b49 <bigfile+0x1a9>
  for(i = 0; i < 20; i++){
    2a2b:	83 c3 01             	add    $0x1,%ebx
    2a2e:	83 fb 14             	cmp    $0x14,%ebx
    2a31:	75 bd                	jne    29f0 <bigfile+0x50>
  close(fd);
    2a33:	89 34 24             	mov    %esi,(%esp)
    2a36:	e8 a7 15 00 00       	call   3fe2 <close>
  fd = open("bigfile", 0);
    2a3b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    2a42:	00 
    2a43:	c7 04 24 30 4f 00 00 	movl   $0x4f30,(%esp)
    2a4a:	e8 ab 15 00 00       	call   3ffa <open>
  if(fd < 0){
    2a4f:	85 c0                	test   %eax,%eax
  fd = open("bigfile", 0);
    2a51:	89 c6                	mov    %eax,%esi
  if(fd < 0){
    2a53:	0f 88 10 01 00 00    	js     2b69 <bigfile+0x1c9>
    2a59:	31 db                	xor    %ebx,%ebx
    2a5b:	31 ff                	xor    %edi,%edi
    2a5d:	eb 2f                	jmp    2a8e <bigfile+0xee>
    2a5f:	90                   	nop
    if(cc != 300){
    2a60:	3d 2c 01 00 00       	cmp    $0x12c,%eax
    2a65:	0f 85 9e 00 00 00    	jne    2b09 <bigfile+0x169>
    if(buf[0] != i/2 || buf[299] != i/2){
    2a6b:	0f be 05 c0 8c 00 00 	movsbl 0x8cc0,%eax
    2a72:	89 fa                	mov    %edi,%edx
    2a74:	d1 fa                	sar    %edx
    2a76:	39 d0                	cmp    %edx,%eax
    2a78:	75 6f                	jne    2ae9 <bigfile+0x149>
    2a7a:	0f be 15 eb 8d 00 00 	movsbl 0x8deb,%edx
    2a81:	39 d0                	cmp    %edx,%eax
    2a83:	75 64                	jne    2ae9 <bigfile+0x149>
    total += cc;
    2a85:	81 c3 2c 01 00 00    	add    $0x12c,%ebx
  for(i = 0; ; i++){
    2a8b:	83 c7 01             	add    $0x1,%edi
    cc = read(fd, buf, 300);
    2a8e:	c7 44 24 08 2c 01 00 	movl   $0x12c,0x8(%esp)
    2a95:	00 
    2a96:	c7 44 24 04 c0 8c 00 	movl   $0x8cc0,0x4(%esp)
    2a9d:	00 
    2a9e:	89 34 24             	mov    %esi,(%esp)
    2aa1:	e8 2c 15 00 00       	call   3fd2 <read>
    if(cc < 0){
    2aa6:	85 c0                	test   %eax,%eax
    2aa8:	78 7f                	js     2b29 <bigfile+0x189>
    if(cc == 0)
    2aaa:	75 b4                	jne    2a60 <bigfile+0xc0>
  close(fd);
    2aac:	89 34 24             	mov    %esi,(%esp)
    2aaf:	90                   	nop
    2ab0:	e8 2d 15 00 00       	call   3fe2 <close>
  if(total != 20*600){
    2ab5:	81 fb e0 2e 00 00    	cmp    $0x2ee0,%ebx
    2abb:	0f 85 e8 00 00 00    	jne    2ba9 <bigfile+0x209>
  unlink("bigfile");
    2ac1:	c7 04 24 30 4f 00 00 	movl   $0x4f30,(%esp)
    2ac8:	e8 3d 15 00 00       	call   400a <unlink>
  printf(1, "bigfile test ok\n");
    2acd:	c7 44 24 04 bf 4f 00 	movl   $0x4fbf,0x4(%esp)
    2ad4:	00 
    2ad5:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2adc:	e8 1f 16 00 00       	call   4100 <printf>
}
    2ae1:	83 c4 1c             	add    $0x1c,%esp
    2ae4:	5b                   	pop    %ebx
    2ae5:	5e                   	pop    %esi
    2ae6:	5f                   	pop    %edi
    2ae7:	5d                   	pop    %ebp
    2ae8:	c3                   	ret    
      printf(1, "read bigfile wrong data\n");
    2ae9:	c7 44 24 04 8c 4f 00 	movl   $0x4f8c,0x4(%esp)
    2af0:	00 
    2af1:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2af8:	e8 03 16 00 00       	call   4100 <printf>
      exit(1);
    2afd:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2b04:	e8 a9 14 00 00       	call   3fb2 <exit>
      printf(1, "short read bigfile\n");
    2b09:	c7 44 24 04 78 4f 00 	movl   $0x4f78,0x4(%esp)
    2b10:	00 
    2b11:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2b18:	e8 e3 15 00 00       	call   4100 <printf>
      exit(1);
    2b1d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2b24:	e8 89 14 00 00       	call   3fb2 <exit>
      printf(1, "read bigfile failed\n");
    2b29:	c7 44 24 04 63 4f 00 	movl   $0x4f63,0x4(%esp)
    2b30:	00 
    2b31:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2b38:	e8 c3 15 00 00       	call   4100 <printf>
      exit(1);
    2b3d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2b44:	e8 69 14 00 00       	call   3fb2 <exit>
      printf(1, "write bigfile failed\n");
    2b49:	c7 44 24 04 38 4f 00 	movl   $0x4f38,0x4(%esp)
    2b50:	00 
    2b51:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2b58:	e8 a3 15 00 00       	call   4100 <printf>
      exit(1);
    2b5d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2b64:	e8 49 14 00 00       	call   3fb2 <exit>
    printf(1, "cannot open bigfile\n");
    2b69:	c7 44 24 04 4e 4f 00 	movl   $0x4f4e,0x4(%esp)
    2b70:	00 
    2b71:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2b78:	e8 83 15 00 00       	call   4100 <printf>
    exit(1);
    2b7d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2b84:	e8 29 14 00 00       	call   3fb2 <exit>
    printf(1, "cannot create bigfile");
    2b89:	c7 44 24 04 22 4f 00 	movl   $0x4f22,0x4(%esp)
    2b90:	00 
    2b91:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2b98:	e8 63 15 00 00       	call   4100 <printf>
    exit(1);
    2b9d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2ba4:	e8 09 14 00 00       	call   3fb2 <exit>
    printf(1, "read bigfile wrong total\n");
    2ba9:	c7 44 24 04 a5 4f 00 	movl   $0x4fa5,0x4(%esp)
    2bb0:	00 
    2bb1:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2bb8:	e8 43 15 00 00       	call   4100 <printf>
    exit(1);
    2bbd:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2bc4:	e8 e9 13 00 00       	call   3fb2 <exit>
    2bc9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00002bd0 <fourteen>:
{
    2bd0:	55                   	push   %ebp
    2bd1:	89 e5                	mov    %esp,%ebp
    2bd3:	83 ec 18             	sub    $0x18,%esp
  printf(1, "fourteen test\n");
    2bd6:	c7 44 24 04 d0 4f 00 	movl   $0x4fd0,0x4(%esp)
    2bdd:	00 
    2bde:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2be5:	e8 16 15 00 00       	call   4100 <printf>
  if(mkdir("12345678901234") != 0){
    2bea:	c7 04 24 0b 50 00 00 	movl   $0x500b,(%esp)
    2bf1:	e8 2c 14 00 00       	call   4022 <mkdir>
    2bf6:	85 c0                	test   %eax,%eax
    2bf8:	0f 85 92 00 00 00    	jne    2c90 <fourteen+0xc0>
  if(mkdir("12345678901234/123456789012345") != 0){
    2bfe:	c7 04 24 c8 57 00 00 	movl   $0x57c8,(%esp)
    2c05:	e8 18 14 00 00       	call   4022 <mkdir>
    2c0a:	85 c0                	test   %eax,%eax
    2c0c:	0f 85 1e 01 00 00    	jne    2d30 <fourteen+0x160>
  fd = open("123456789012345/123456789012345/123456789012345", O_CREATE);
    2c12:	c7 44 24 04 00 02 00 	movl   $0x200,0x4(%esp)
    2c19:	00 
    2c1a:	c7 04 24 18 58 00 00 	movl   $0x5818,(%esp)
    2c21:	e8 d4 13 00 00       	call   3ffa <open>
  if(fd < 0){
    2c26:	85 c0                	test   %eax,%eax
    2c28:	0f 88 e2 00 00 00    	js     2d10 <fourteen+0x140>
  close(fd);
    2c2e:	89 04 24             	mov    %eax,(%esp)
    2c31:	e8 ac 13 00 00       	call   3fe2 <close>
  fd = open("12345678901234/12345678901234/12345678901234", 0);
    2c36:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    2c3d:	00 
    2c3e:	c7 04 24 88 58 00 00 	movl   $0x5888,(%esp)
    2c45:	e8 b0 13 00 00       	call   3ffa <open>
  if(fd < 0){
    2c4a:	85 c0                	test   %eax,%eax
    2c4c:	0f 88 9e 00 00 00    	js     2cf0 <fourteen+0x120>
  close(fd);
    2c52:	89 04 24             	mov    %eax,(%esp)
    2c55:	e8 88 13 00 00       	call   3fe2 <close>
  if(mkdir("12345678901234/12345678901234") == 0){
    2c5a:	c7 04 24 fc 4f 00 00 	movl   $0x4ffc,(%esp)
    2c61:	e8 bc 13 00 00       	call   4022 <mkdir>
    2c66:	85 c0                	test   %eax,%eax
    2c68:	74 66                	je     2cd0 <fourteen+0x100>
  if(mkdir("123456789012345/12345678901234") == 0){
    2c6a:	c7 04 24 24 59 00 00 	movl   $0x5924,(%esp)
    2c71:	e8 ac 13 00 00       	call   4022 <mkdir>
    2c76:	85 c0                	test   %eax,%eax
    2c78:	74 36                	je     2cb0 <fourteen+0xe0>
  printf(1, "fourteen ok\n");
    2c7a:	c7 44 24 04 1a 50 00 	movl   $0x501a,0x4(%esp)
    2c81:	00 
    2c82:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2c89:	e8 72 14 00 00       	call   4100 <printf>
}
    2c8e:	c9                   	leave  
    2c8f:	c3                   	ret    
    printf(1, "mkdir 12345678901234 failed\n");
    2c90:	c7 44 24 04 df 4f 00 	movl   $0x4fdf,0x4(%esp)
    2c97:	00 
    2c98:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2c9f:	e8 5c 14 00 00       	call   4100 <printf>
    exit(1);
    2ca4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2cab:	e8 02 13 00 00       	call   3fb2 <exit>
    printf(1, "mkdir 12345678901234/123456789012345 succeeded!\n");
    2cb0:	c7 44 24 04 44 59 00 	movl   $0x5944,0x4(%esp)
    2cb7:	00 
    2cb8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2cbf:	e8 3c 14 00 00       	call   4100 <printf>
    exit(1);//
    2cc4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2ccb:	e8 e2 12 00 00       	call   3fb2 <exit>
    printf(1, "mkdir 12345678901234/12345678901234 succeeded!\n");
    2cd0:	c7 44 24 04 f4 58 00 	movl   $0x58f4,0x4(%esp)
    2cd7:	00 
    2cd8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2cdf:	e8 1c 14 00 00       	call   4100 <printf>
    exit(1);//
    2ce4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2ceb:	e8 c2 12 00 00       	call   3fb2 <exit>
    printf(1, "open 12345678901234/12345678901234/12345678901234 failed\n");
    2cf0:	c7 44 24 04 b8 58 00 	movl   $0x58b8,0x4(%esp)
    2cf7:	00 
    2cf8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2cff:	e8 fc 13 00 00       	call   4100 <printf>
    exit(1);
    2d04:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2d0b:	e8 a2 12 00 00       	call   3fb2 <exit>
    printf(1, "create 123456789012345/123456789012345/123456789012345 failed\n");
    2d10:	c7 44 24 04 48 58 00 	movl   $0x5848,0x4(%esp)
    2d17:	00 
    2d18:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2d1f:	e8 dc 13 00 00       	call   4100 <printf>
    exit(1);
    2d24:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2d2b:	e8 82 12 00 00       	call   3fb2 <exit>
    printf(1, "mkdir 12345678901234/123456789012345 failed\n");
    2d30:	c7 44 24 04 e8 57 00 	movl   $0x57e8,0x4(%esp)
    2d37:	00 
    2d38:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2d3f:	e8 bc 13 00 00       	call   4100 <printf>
    exit(1);
    2d44:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2d4b:	e8 62 12 00 00       	call   3fb2 <exit>

00002d50 <rmdot>:
{
    2d50:	55                   	push   %ebp
    2d51:	89 e5                	mov    %esp,%ebp
    2d53:	83 ec 18             	sub    $0x18,%esp
  printf(1, "rmdot test\n");
    2d56:	c7 44 24 04 27 50 00 	movl   $0x5027,0x4(%esp)
    2d5d:	00 
    2d5e:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2d65:	e8 96 13 00 00       	call   4100 <printf>
  if(mkdir("dots") != 0){
    2d6a:	c7 04 24 33 50 00 00 	movl   $0x5033,(%esp)
    2d71:	e8 ac 12 00 00       	call   4022 <mkdir>
    2d76:	85 c0                	test   %eax,%eax
    2d78:	0f 85 9a 00 00 00    	jne    2e18 <rmdot+0xc8>
  if(chdir("dots") != 0){
    2d7e:	c7 04 24 33 50 00 00 	movl   $0x5033,(%esp)
    2d85:	e8 a0 12 00 00       	call   402a <chdir>
    2d8a:	85 c0                	test   %eax,%eax
    2d8c:	0f 85 66 01 00 00    	jne    2ef8 <rmdot+0x1a8>
  if(unlink(".") == 0){
    2d92:	c7 04 24 de 4c 00 00 	movl   $0x4cde,(%esp)
    2d99:	e8 6c 12 00 00       	call   400a <unlink>
    2d9e:	85 c0                	test   %eax,%eax
    2da0:	0f 84 32 01 00 00    	je     2ed8 <rmdot+0x188>
  if(unlink("..") == 0){
    2da6:	c7 04 24 dd 4c 00 00 	movl   $0x4cdd,(%esp)
    2dad:	e8 58 12 00 00       	call   400a <unlink>
    2db2:	85 c0                	test   %eax,%eax
    2db4:	0f 84 fe 00 00 00    	je     2eb8 <rmdot+0x168>
  if(chdir("/") != 0){
    2dba:	c7 04 24 b1 44 00 00 	movl   $0x44b1,(%esp)
    2dc1:	e8 64 12 00 00       	call   402a <chdir>
    2dc6:	85 c0                	test   %eax,%eax
    2dc8:	0f 85 ca 00 00 00    	jne    2e98 <rmdot+0x148>
  if(unlink("dots/.") == 0){
    2dce:	c7 04 24 7b 50 00 00 	movl   $0x507b,(%esp)
    2dd5:	e8 30 12 00 00       	call   400a <unlink>
    2dda:	85 c0                	test   %eax,%eax
    2ddc:	0f 84 96 00 00 00    	je     2e78 <rmdot+0x128>
  if(unlink("dots/..") == 0){
    2de2:	c7 04 24 99 50 00 00 	movl   $0x5099,(%esp)
    2de9:	e8 1c 12 00 00       	call   400a <unlink>
    2dee:	85 c0                	test   %eax,%eax
    2df0:	74 66                	je     2e58 <rmdot+0x108>
  if(unlink("dots") != 0){
    2df2:	c7 04 24 33 50 00 00 	movl   $0x5033,(%esp)
    2df9:	e8 0c 12 00 00       	call   400a <unlink>
    2dfe:	85 c0                	test   %eax,%eax
    2e00:	75 36                	jne    2e38 <rmdot+0xe8>
  printf(1, "rmdot ok\n");
    2e02:	c7 44 24 04 ce 50 00 	movl   $0x50ce,0x4(%esp)
    2e09:	00 
    2e0a:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2e11:	e8 ea 12 00 00       	call   4100 <printf>
}
    2e16:	c9                   	leave  
    2e17:	c3                   	ret    
    printf(1, "mkdir dots failed\n");
    2e18:	c7 44 24 04 38 50 00 	movl   $0x5038,0x4(%esp)
    2e1f:	00 
    2e20:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2e27:	e8 d4 12 00 00       	call   4100 <printf>
    exit(1);
    2e2c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2e33:	e8 7a 11 00 00       	call   3fb2 <exit>
    printf(1, "unlink dots failed!\n");
    2e38:	c7 44 24 04 b9 50 00 	movl   $0x50b9,0x4(%esp)
    2e3f:	00 
    2e40:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2e47:	e8 b4 12 00 00       	call   4100 <printf>
    exit(1);
    2e4c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2e53:	e8 5a 11 00 00       	call   3fb2 <exit>
    printf(1, "unlink dots/.. worked!\n");
    2e58:	c7 44 24 04 a1 50 00 	movl   $0x50a1,0x4(%esp)
    2e5f:	00 
    2e60:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2e67:	e8 94 12 00 00       	call   4100 <printf>
    exit(1);
    2e6c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2e73:	e8 3a 11 00 00       	call   3fb2 <exit>
    printf(1, "unlink dots/. worked!\n");
    2e78:	c7 44 24 04 82 50 00 	movl   $0x5082,0x4(%esp)
    2e7f:	00 
    2e80:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2e87:	e8 74 12 00 00       	call   4100 <printf>
    exit(1);
    2e8c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2e93:	e8 1a 11 00 00       	call   3fb2 <exit>
    printf(1, "chdir / failed\n");
    2e98:	c7 44 24 04 b3 44 00 	movl   $0x44b3,0x4(%esp)
    2e9f:	00 
    2ea0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2ea7:	e8 54 12 00 00       	call   4100 <printf>
    exit(1);
    2eac:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2eb3:	e8 fa 10 00 00       	call   3fb2 <exit>
    printf(1, "rm .. worked!\n");
    2eb8:	c7 44 24 04 6c 50 00 	movl   $0x506c,0x4(%esp)
    2ebf:	00 
    2ec0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2ec7:	e8 34 12 00 00       	call   4100 <printf>
    exit(1);
    2ecc:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2ed3:	e8 da 10 00 00       	call   3fb2 <exit>
    printf(1, "rm . worked!\n");
    2ed8:	c7 44 24 04 5e 50 00 	movl   $0x505e,0x4(%esp)
    2edf:	00 
    2ee0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2ee7:	e8 14 12 00 00       	call   4100 <printf>
    exit(1);
    2eec:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2ef3:	e8 ba 10 00 00       	call   3fb2 <exit>
    printf(1, "chdir dots failed\n");
    2ef8:	c7 44 24 04 4b 50 00 	movl   $0x504b,0x4(%esp)
    2eff:	00 
    2f00:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2f07:	e8 f4 11 00 00       	call   4100 <printf>
    exit(1);
    2f0c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2f13:	e8 9a 10 00 00       	call   3fb2 <exit>
    2f18:	90                   	nop
    2f19:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00002f20 <dirfile>:
{
    2f20:	55                   	push   %ebp
    2f21:	89 e5                	mov    %esp,%ebp
    2f23:	53                   	push   %ebx
    2f24:	83 ec 14             	sub    $0x14,%esp
  printf(1, "dir vs file\n");
    2f27:	c7 44 24 04 d8 50 00 	movl   $0x50d8,0x4(%esp)
    2f2e:	00 
    2f2f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2f36:	e8 c5 11 00 00       	call   4100 <printf>
  fd = open("dirfile", O_CREATE);
    2f3b:	c7 44 24 04 00 02 00 	movl   $0x200,0x4(%esp)
    2f42:	00 
    2f43:	c7 04 24 e5 50 00 00 	movl   $0x50e5,(%esp)
    2f4a:	e8 ab 10 00 00       	call   3ffa <open>
  if(fd < 0){
    2f4f:	85 c0                	test   %eax,%eax
    2f51:	0f 88 60 01 00 00    	js     30b7 <dirfile+0x197>
  close(fd);
    2f57:	89 04 24             	mov    %eax,(%esp)
    2f5a:	e8 83 10 00 00       	call   3fe2 <close>
  if(chdir("dirfile") == 0){
    2f5f:	c7 04 24 e5 50 00 00 	movl   $0x50e5,(%esp)
    2f66:	e8 bf 10 00 00       	call   402a <chdir>
    2f6b:	85 c0                	test   %eax,%eax
    2f6d:	0f 84 24 01 00 00    	je     3097 <dirfile+0x177>
  fd = open("dirfile/xx", 0);
    2f73:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    2f7a:	00 
    2f7b:	c7 04 24 1e 51 00 00 	movl   $0x511e,(%esp)
    2f82:	e8 73 10 00 00       	call   3ffa <open>
  if(fd >= 0){
    2f87:	85 c0                	test   %eax,%eax
    2f89:	0f 89 e8 00 00 00    	jns    3077 <dirfile+0x157>
  fd = open("dirfile/xx", O_CREATE);
    2f8f:	c7 44 24 04 00 02 00 	movl   $0x200,0x4(%esp)
    2f96:	00 
    2f97:	c7 04 24 1e 51 00 00 	movl   $0x511e,(%esp)
    2f9e:	e8 57 10 00 00       	call   3ffa <open>
  if(fd >= 0){
    2fa3:	85 c0                	test   %eax,%eax
    2fa5:	0f 89 cc 00 00 00    	jns    3077 <dirfile+0x157>
  if(mkdir("dirfile/xx") == 0){
    2fab:	c7 04 24 1e 51 00 00 	movl   $0x511e,(%esp)
    2fb2:	e8 6b 10 00 00       	call   4022 <mkdir>
    2fb7:	85 c0                	test   %eax,%eax
    2fb9:	0f 84 b8 01 00 00    	je     3177 <dirfile+0x257>
  if(unlink("dirfile/xx") == 0){
    2fbf:	c7 04 24 1e 51 00 00 	movl   $0x511e,(%esp)
    2fc6:	e8 3f 10 00 00       	call   400a <unlink>
    2fcb:	85 c0                	test   %eax,%eax
    2fcd:	0f 84 84 01 00 00    	je     3157 <dirfile+0x237>
  if(link("README", "dirfile/xx") == 0){
    2fd3:	c7 44 24 04 1e 51 00 	movl   $0x511e,0x4(%esp)
    2fda:	00 
    2fdb:	c7 04 24 82 51 00 00 	movl   $0x5182,(%esp)
    2fe2:	e8 33 10 00 00       	call   401a <link>
    2fe7:	85 c0                	test   %eax,%eax
    2fe9:	0f 84 48 01 00 00    	je     3137 <dirfile+0x217>
  if(unlink("dirfile") != 0){
    2fef:	c7 04 24 e5 50 00 00 	movl   $0x50e5,(%esp)
    2ff6:	e8 0f 10 00 00       	call   400a <unlink>
    2ffb:	85 c0                	test   %eax,%eax
    2ffd:	0f 85 14 01 00 00    	jne    3117 <dirfile+0x1f7>
  fd = open(".", O_RDWR);
    3003:	c7 44 24 04 02 00 00 	movl   $0x2,0x4(%esp)
    300a:	00 
    300b:	c7 04 24 de 4c 00 00 	movl   $0x4cde,(%esp)
    3012:	e8 e3 0f 00 00       	call   3ffa <open>
  if(fd >= 0){
    3017:	85 c0                	test   %eax,%eax
    3019:	0f 89 d8 00 00 00    	jns    30f7 <dirfile+0x1d7>
  fd = open(".", 0);
    301f:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    3026:	00 
    3027:	c7 04 24 de 4c 00 00 	movl   $0x4cde,(%esp)
    302e:	e8 c7 0f 00 00       	call   3ffa <open>
  if(write(fd, "x", 1) > 0){
    3033:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    303a:	00 
    303b:	c7 44 24 04 c1 4d 00 	movl   $0x4dc1,0x4(%esp)
    3042:	00 
    3043:	89 04 24             	mov    %eax,(%esp)
  fd = open(".", 0);
    3046:	89 c3                	mov    %eax,%ebx
  if(write(fd, "x", 1) > 0){
    3048:	e8 8d 0f 00 00       	call   3fda <write>
    304d:	85 c0                	test   %eax,%eax
    304f:	0f 8f 82 00 00 00    	jg     30d7 <dirfile+0x1b7>
  close(fd);
    3055:	89 1c 24             	mov    %ebx,(%esp)
    3058:	e8 85 0f 00 00       	call   3fe2 <close>
  printf(1, "dir vs file OK\n");
    305d:	c7 44 24 04 b5 51 00 	movl   $0x51b5,0x4(%esp)
    3064:	00 
    3065:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    306c:	e8 8f 10 00 00       	call   4100 <printf>
}
    3071:	83 c4 14             	add    $0x14,%esp
    3074:	5b                   	pop    %ebx
    3075:	5d                   	pop    %ebp
    3076:	c3                   	ret    
    printf(1, "create dirfile/xx succeeded!\n");
    3077:	c7 44 24 04 29 51 00 	movl   $0x5129,0x4(%esp)
    307e:	00 
    307f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3086:	e8 75 10 00 00       	call   4100 <printf>
    exit(0);
    308b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3092:	e8 1b 0f 00 00       	call   3fb2 <exit>
    printf(1, "chdir dirfile succeeded!\n");
    3097:	c7 44 24 04 04 51 00 	movl   $0x5104,0x4(%esp)
    309e:	00 
    309f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    30a6:	e8 55 10 00 00       	call   4100 <printf>
    exit(0);
    30ab:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    30b2:	e8 fb 0e 00 00       	call   3fb2 <exit>
    printf(1, "create dirfile failed\n");
    30b7:	c7 44 24 04 ed 50 00 	movl   $0x50ed,0x4(%esp)
    30be:	00 
    30bf:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    30c6:	e8 35 10 00 00       	call   4100 <printf>
    exit(1);
    30cb:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    30d2:	e8 db 0e 00 00       	call   3fb2 <exit>
    printf(1, "write . succeeded!\n");
    30d7:	c7 44 24 04 a1 51 00 	movl   $0x51a1,0x4(%esp)
    30de:	00 
    30df:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    30e6:	e8 15 10 00 00       	call   4100 <printf>
    exit(0);
    30eb:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    30f2:	e8 bb 0e 00 00       	call   3fb2 <exit>
    printf(1, "open . for writing succeeded!\n");
    30f7:	c7 44 24 04 98 59 00 	movl   $0x5998,0x4(%esp)
    30fe:	00 
    30ff:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3106:	e8 f5 0f 00 00       	call   4100 <printf>
    exit(0);
    310b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3112:	e8 9b 0e 00 00       	call   3fb2 <exit>
    printf(1, "unlink dirfile failed!\n");
    3117:	c7 44 24 04 89 51 00 	movl   $0x5189,0x4(%esp)
    311e:	00 
    311f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3126:	e8 d5 0f 00 00       	call   4100 <printf>
    exit(0);
    312b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3132:	e8 7b 0e 00 00       	call   3fb2 <exit>
    printf(1, "link to dirfile/xx succeeded!\n");
    3137:	c7 44 24 04 78 59 00 	movl   $0x5978,0x4(%esp)
    313e:	00 
    313f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3146:	e8 b5 0f 00 00       	call   4100 <printf>
    exit(0);
    314b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3152:	e8 5b 0e 00 00       	call   3fb2 <exit>
    printf(1, "unlink dirfile/xx succeeded!\n");
    3157:	c7 44 24 04 64 51 00 	movl   $0x5164,0x4(%esp)
    315e:	00 
    315f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3166:	e8 95 0f 00 00       	call   4100 <printf>
    exit(0);
    316b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3172:	e8 3b 0e 00 00       	call   3fb2 <exit>
    printf(1, "mkdir dirfile/xx succeeded!\n");
    3177:	c7 44 24 04 47 51 00 	movl   $0x5147,0x4(%esp)
    317e:	00 
    317f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3186:	e8 75 0f 00 00       	call   4100 <printf>
    exit(0);
    318b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3192:	e8 1b 0e 00 00       	call   3fb2 <exit>
    3197:	89 f6                	mov    %esi,%esi
    3199:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000031a0 <iref>:
{
    31a0:	55                   	push   %ebp
    31a1:	89 e5                	mov    %esp,%ebp
    31a3:	53                   	push   %ebx
  printf(1, "empty file name\n");
    31a4:	bb 33 00 00 00       	mov    $0x33,%ebx
{
    31a9:	83 ec 14             	sub    $0x14,%esp
  printf(1, "empty file name\n");
    31ac:	c7 44 24 04 c5 51 00 	movl   $0x51c5,0x4(%esp)
    31b3:	00 
    31b4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    31bb:	e8 40 0f 00 00       	call   4100 <printf>
    if(mkdir("irefd") != 0){
    31c0:	c7 04 24 d6 51 00 00 	movl   $0x51d6,(%esp)
    31c7:	e8 56 0e 00 00       	call   4022 <mkdir>
    31cc:	85 c0                	test   %eax,%eax
    31ce:	0f 85 af 00 00 00    	jne    3283 <iref+0xe3>
    if(chdir("irefd") != 0){
    31d4:	c7 04 24 d6 51 00 00 	movl   $0x51d6,(%esp)
    31db:	e8 4a 0e 00 00       	call   402a <chdir>
    31e0:	85 c0                	test   %eax,%eax
    31e2:	0f 85 bb 00 00 00    	jne    32a3 <iref+0x103>
    mkdir("");
    31e8:	c7 04 24 8b 48 00 00 	movl   $0x488b,(%esp)
    31ef:	e8 2e 0e 00 00       	call   4022 <mkdir>
    link("README", "");
    31f4:	c7 44 24 04 8b 48 00 	movl   $0x488b,0x4(%esp)
    31fb:	00 
    31fc:	c7 04 24 82 51 00 00 	movl   $0x5182,(%esp)
    3203:	e8 12 0e 00 00       	call   401a <link>
    fd = open("", O_CREATE);
    3208:	c7 44 24 04 00 02 00 	movl   $0x200,0x4(%esp)
    320f:	00 
    3210:	c7 04 24 8b 48 00 00 	movl   $0x488b,(%esp)
    3217:	e8 de 0d 00 00       	call   3ffa <open>
    if(fd >= 0)
    321c:	85 c0                	test   %eax,%eax
    321e:	78 08                	js     3228 <iref+0x88>
      close(fd);
    3220:	89 04 24             	mov    %eax,(%esp)
    3223:	e8 ba 0d 00 00       	call   3fe2 <close>
    fd = open("xx", O_CREATE);
    3228:	c7 44 24 04 00 02 00 	movl   $0x200,0x4(%esp)
    322f:	00 
    3230:	c7 04 24 c0 4d 00 00 	movl   $0x4dc0,(%esp)
    3237:	e8 be 0d 00 00       	call   3ffa <open>
    if(fd >= 0)
    323c:	85 c0                	test   %eax,%eax
    323e:	78 08                	js     3248 <iref+0xa8>
      close(fd);
    3240:	89 04 24             	mov    %eax,(%esp)
    3243:	e8 9a 0d 00 00       	call   3fe2 <close>
    unlink("xx");
    3248:	c7 04 24 c0 4d 00 00 	movl   $0x4dc0,(%esp)
    324f:	e8 b6 0d 00 00       	call   400a <unlink>
  for(i = 0; i < 50 + 1; i++){
    3254:	83 eb 01             	sub    $0x1,%ebx
    3257:	0f 85 63 ff ff ff    	jne    31c0 <iref+0x20>
  chdir("/");
    325d:	c7 04 24 b1 44 00 00 	movl   $0x44b1,(%esp)
    3264:	e8 c1 0d 00 00       	call   402a <chdir>
  printf(1, "empty file name OK\n");
    3269:	c7 44 24 04 04 52 00 	movl   $0x5204,0x4(%esp)
    3270:	00 
    3271:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3278:	e8 83 0e 00 00       	call   4100 <printf>
}
    327d:	83 c4 14             	add    $0x14,%esp
    3280:	5b                   	pop    %ebx
    3281:	5d                   	pop    %ebp
    3282:	c3                   	ret    
      printf(1, "mkdir irefd failed\n");
    3283:	c7 44 24 04 dc 51 00 	movl   $0x51dc,0x4(%esp)
    328a:	00 
    328b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3292:	e8 69 0e 00 00       	call   4100 <printf>
      exit(1);
    3297:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    329e:	e8 0f 0d 00 00       	call   3fb2 <exit>
      printf(1, "chdir irefd failed\n");
    32a3:	c7 44 24 04 f0 51 00 	movl   $0x51f0,0x4(%esp)
    32aa:	00 
    32ab:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    32b2:	e8 49 0e 00 00       	call   4100 <printf>
      exit(1);
    32b7:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    32be:	e8 ef 0c 00 00       	call   3fb2 <exit>
    32c3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    32c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000032d0 <forktest>:
{
    32d0:	55                   	push   %ebp
    32d1:	89 e5                	mov    %esp,%ebp
    32d3:	53                   	push   %ebx
  for(n=0; n<1000; n++){
    32d4:	31 db                	xor    %ebx,%ebx
{
    32d6:	83 ec 14             	sub    $0x14,%esp
  printf(1, "fork test\n");
    32d9:	c7 44 24 04 18 52 00 	movl   $0x5218,0x4(%esp)
    32e0:	00 
    32e1:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    32e8:	e8 13 0e 00 00       	call   4100 <printf>
    32ed:	eb 0e                	jmp    32fd <forktest+0x2d>
    32ef:	90                   	nop
    if(pid == 0)
    32f0:	74 72                	je     3364 <forktest+0x94>
  for(n=0; n<1000; n++){
    32f2:	83 c3 01             	add    $0x1,%ebx
    32f5:	81 fb e8 03 00 00    	cmp    $0x3e8,%ebx
    32fb:	74 53                	je     3350 <forktest+0x80>
    pid = fork();
    32fd:	e8 a8 0c 00 00       	call   3faa <fork>
    if(pid < 0)
    3302:	85 c0                	test   %eax,%eax
    3304:	79 ea                	jns    32f0 <forktest+0x20>
  for(; n > 0; n--){
    3306:	85 db                	test   %ebx,%ebx
    3308:	74 1b                	je     3325 <forktest+0x55>
    330a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    if(wait(0) < 0){
    3310:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3317:	e8 9e 0c 00 00       	call   3fba <wait>
    331c:	85 c0                	test   %eax,%eax
    331e:	78 50                	js     3370 <forktest+0xa0>
  for(; n > 0; n--){
    3320:	83 eb 01             	sub    $0x1,%ebx
    3323:	75 eb                	jne    3310 <forktest+0x40>
  if(wait(0) != -1){
    3325:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    332c:	e8 89 0c 00 00       	call   3fba <wait>
    3331:	83 f8 ff             	cmp    $0xffffffff,%eax
    3334:	75 5a                	jne    3390 <forktest+0xc0>
  printf(1, "fork test OK\n");
    3336:	c7 44 24 04 4a 52 00 	movl   $0x524a,0x4(%esp)
    333d:	00 
    333e:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3345:	e8 b6 0d 00 00       	call   4100 <printf>
}
    334a:	83 c4 14             	add    $0x14,%esp
    334d:	5b                   	pop    %ebx
    334e:	5d                   	pop    %ebp
    334f:	c3                   	ret    
    printf(1, "fork claimed to work 1000 times!\n");
    3350:	c7 44 24 04 b8 59 00 	movl   $0x59b8,0x4(%esp)
    3357:	00 
    3358:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    335f:	e8 9c 0d 00 00       	call   4100 <printf>
    exit(0);
    3364:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    336b:	e8 42 0c 00 00       	call   3fb2 <exit>
      printf(1, "wait stopped early\n");
    3370:	c7 44 24 04 23 52 00 	movl   $0x5223,0x4(%esp)
    3377:	00 
    3378:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    337f:	e8 7c 0d 00 00       	call   4100 <printf>
      exit(1);
    3384:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    338b:	e8 22 0c 00 00       	call   3fb2 <exit>
    printf(1, "wait got too many\n");
    3390:	c7 44 24 04 37 52 00 	movl   $0x5237,0x4(%esp)
    3397:	00 
    3398:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    339f:	e8 5c 0d 00 00       	call   4100 <printf>
    exit(1);
    33a4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    33ab:	e8 02 0c 00 00       	call   3fb2 <exit>

000033b0 <sbrktest>:
{
    33b0:	55                   	push   %ebp
    33b1:	89 e5                	mov    %esp,%ebp
    33b3:	57                   	push   %edi
    33b4:	56                   	push   %esi
  for(i = 0; i < 5000; i++){
    33b5:	31 f6                	xor    %esi,%esi
{
    33b7:	53                   	push   %ebx
    33b8:	83 ec 6c             	sub    $0x6c,%esp
  printf(stdout, "sbrk test\n");
    33bb:	a1 e4 64 00 00       	mov    0x64e4,%eax
    33c0:	c7 44 24 04 58 52 00 	movl   $0x5258,0x4(%esp)
    33c7:	00 
    33c8:	89 04 24             	mov    %eax,(%esp)
    33cb:	e8 30 0d 00 00       	call   4100 <printf>
  oldbrk = sbrk(0);
    33d0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    33d7:	e8 66 0c 00 00       	call   4042 <sbrk>
  a = sbrk(0);
    33dc:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  oldbrk = sbrk(0);
    33e3:	89 45 a4             	mov    %eax,-0x5c(%ebp)
  a = sbrk(0);
    33e6:	e8 57 0c 00 00       	call   4042 <sbrk>
    33eb:	89 c3                	mov    %eax,%ebx
    33ed:	8d 76 00             	lea    0x0(%esi),%esi
    b = sbrk(1);
    33f0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    33f7:	e8 46 0c 00 00       	call   4042 <sbrk>
    if(b != a){
    33fc:	39 d8                	cmp    %ebx,%eax
    b = sbrk(1);
    33fe:	89 c7                	mov    %eax,%edi
    if(b != a){
    3400:	0f 85 90 02 00 00    	jne    3696 <sbrktest+0x2e6>
  for(i = 0; i < 5000; i++){
    3406:	83 c6 01             	add    $0x1,%esi
    a = b + 1;
    3409:	83 c3 01             	add    $0x1,%ebx
    *b = 1;
    340c:	c6 43 ff 01          	movb   $0x1,-0x1(%ebx)
  for(i = 0; i < 5000; i++){
    3410:	81 fe 88 13 00 00    	cmp    $0x1388,%esi
    3416:	75 d8                	jne    33f0 <sbrktest+0x40>
  pid = fork();
    3418:	e8 8d 0b 00 00       	call   3faa <fork>
  if(pid < 0){
    341d:	85 c0                	test   %eax,%eax
  pid = fork();
    341f:	89 c3                	mov    %eax,%ebx
  if(pid < 0){
    3421:	0f 88 9c 03 00 00    	js     37c3 <sbrktest+0x413>
  c = sbrk(1);
    3427:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    342e:	e8 0f 0c 00 00       	call   4042 <sbrk>
  c = sbrk(1);
    3433:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    343a:	e8 03 0c 00 00       	call   4042 <sbrk>
  if(c != a + 1){
    343f:	8d 57 02             	lea    0x2(%edi),%edx
    3442:	39 d0                	cmp    %edx,%eax
    3444:	0f 85 6c 03 00 00    	jne    37b6 <sbrktest+0x406>
  if(pid == 0)
    344a:	85 db                	test   %ebx,%ebx
    exit(0);
    344c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  if(pid == 0)
    3453:	0f 84 a6 02 00 00    	je     36ff <sbrktest+0x34f>
  wait(0);
    3459:	e8 5c 0b 00 00       	call   3fba <wait>
  a = sbrk(0);
    345e:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3465:	e8 d8 0b 00 00       	call   4042 <sbrk>
  amt = (BIG) - (uint)a;
    346a:	ba 00 00 40 06       	mov    $0x6400000,%edx
    346f:	29 c2                	sub    %eax,%edx
  a = sbrk(0);
    3471:	89 c3                	mov    %eax,%ebx
  p = sbrk(amt);
    3473:	89 14 24             	mov    %edx,(%esp)
    3476:	e8 c7 0b 00 00       	call   4042 <sbrk>
  if (p != a) {
    347b:	39 d8                	cmp    %ebx,%eax
    347d:	0f 85 07 03 00 00    	jne    378a <sbrktest+0x3da>
  *lastaddr = 99;
    3483:	c6 05 ff ff 3f 06 63 	movb   $0x63,0x63fffff
  a = sbrk(0);
    348a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3491:	e8 ac 0b 00 00       	call   4042 <sbrk>
  c = sbrk(-4096);
    3496:	c7 04 24 00 f0 ff ff 	movl   $0xfffff000,(%esp)
  a = sbrk(0);
    349d:	89 c3                	mov    %eax,%ebx
  c = sbrk(-4096);
    349f:	e8 9e 0b 00 00       	call   4042 <sbrk>
  if(c == (char*)0xffffffff){
    34a4:	83 f8 ff             	cmp    $0xffffffff,%eax
    34a7:	0f 84 fc 02 00 00    	je     37a9 <sbrktest+0x3f9>
  c = sbrk(0);
    34ad:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    34b4:	e8 89 0b 00 00       	call   4042 <sbrk>
  if(c != a - 4096){
    34b9:	8d 93 00 f0 ff ff    	lea    -0x1000(%ebx),%edx
    34bf:	39 d0                	cmp    %edx,%eax
    34c1:	0f 85 d0 02 00 00    	jne    3797 <sbrktest+0x3e7>
  a = sbrk(0);
    34c7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    34ce:	e8 6f 0b 00 00       	call   4042 <sbrk>
  c = sbrk(4096);
    34d3:	c7 04 24 00 10 00 00 	movl   $0x1000,(%esp)
  a = sbrk(0);
    34da:	89 c6                	mov    %eax,%esi
  c = sbrk(4096);
    34dc:	e8 61 0b 00 00       	call   4042 <sbrk>
  if(c != a || sbrk(0) != a + 4096){
    34e1:	39 f0                	cmp    %esi,%eax
  c = sbrk(4096);
    34e3:	89 c3                	mov    %eax,%ebx
  if(c != a || sbrk(0) != a + 4096){
    34e5:	0f 85 8d 02 00 00    	jne    3778 <sbrktest+0x3c8>
    34eb:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    34f2:	e8 4b 0b 00 00       	call   4042 <sbrk>
    34f7:	8d 93 00 10 00 00    	lea    0x1000(%ebx),%edx
    34fd:	39 d0                	cmp    %edx,%eax
    34ff:	0f 85 73 02 00 00    	jne    3778 <sbrktest+0x3c8>
  if(*lastaddr == 99){
    3505:	80 3d ff ff 3f 06 63 	cmpb   $0x63,0x63fffff
    350c:	0f 84 59 02 00 00    	je     376b <sbrktest+0x3bb>
  a = sbrk(0);
    3512:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3519:	e8 24 0b 00 00       	call   4042 <sbrk>
  c = sbrk(-(sbrk(0) - oldbrk));
    351e:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  a = sbrk(0);
    3525:	89 c3                	mov    %eax,%ebx
  c = sbrk(-(sbrk(0) - oldbrk));
    3527:	e8 16 0b 00 00       	call   4042 <sbrk>
    352c:	8b 4d a4             	mov    -0x5c(%ebp),%ecx
    352f:	29 c1                	sub    %eax,%ecx
    3531:	89 0c 24             	mov    %ecx,(%esp)
    3534:	e8 09 0b 00 00       	call   4042 <sbrk>
  if(c != a){
    3539:	39 d8                	cmp    %ebx,%eax
    353b:	0f 85 01 02 00 00    	jne    3742 <sbrktest+0x392>
    3541:	bb 00 00 00 80       	mov    $0x80000000,%ebx
    3546:	66 90                	xchg   %ax,%ax
    ppid = getpid();
    3548:	e8 ed 0a 00 00       	call   403a <getpid>
    354d:	89 c6                	mov    %eax,%esi
    pid = fork();
    354f:	e8 56 0a 00 00       	call   3faa <fork>
    if(pid < 0){
    3554:	85 c0                	test   %eax,%eax
    3556:	0f 88 dc 01 00 00    	js     3738 <sbrktest+0x388>
    355c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(pid == 0){
    3560:	0f 84 9e 01 00 00    	je     3704 <sbrktest+0x354>
    wait(0);
    3566:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  for(a = (char*)(KERNBASE); a < (char*) (KERNBASE+2000000); a += 50000){
    356d:	81 c3 50 c3 00 00    	add    $0xc350,%ebx
    wait(0);
    3573:	e8 42 0a 00 00       	call   3fba <wait>
  for(a = (char*)(KERNBASE); a < (char*) (KERNBASE+2000000); a += 50000){
    3578:	81 fb 80 84 1e 80    	cmp    $0x801e8480,%ebx
    357e:	75 c8                	jne    3548 <sbrktest+0x198>
  if(pipe(fds) != 0){
    3580:	8d 45 b8             	lea    -0x48(%ebp),%eax
    3583:	89 04 24             	mov    %eax,(%esp)
    3586:	e8 3f 0a 00 00       	call   3fca <pipe>
    358b:	85 c0                	test   %eax,%eax
    358d:	0f 85 51 01 00 00    	jne    36e4 <sbrktest+0x334>
    3593:	8d 5d e8             	lea    -0x18(%ebp),%ebx
    3596:	8d 75 c0             	lea    -0x40(%ebp),%esi
      read(fds[0], &scratch, 1);
    3599:	8d 7d b7             	lea    -0x49(%ebp),%edi
    if((pids[i] = fork()) == 0){
    359c:	e8 09 0a 00 00       	call   3faa <fork>
    35a1:	85 c0                	test   %eax,%eax
    35a3:	89 06                	mov    %eax,(%esi)
    35a5:	0f 84 a6 00 00 00    	je     3651 <sbrktest+0x2a1>
    if(pids[i] != -1)
    35ab:	83 f8 ff             	cmp    $0xffffffff,%eax
    35ae:	74 17                	je     35c7 <sbrktest+0x217>
      read(fds[0], &scratch, 1);
    35b0:	8b 45 b8             	mov    -0x48(%ebp),%eax
    35b3:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    35ba:	00 
    35bb:	89 7c 24 04          	mov    %edi,0x4(%esp)
    35bf:	89 04 24             	mov    %eax,(%esp)
    35c2:	e8 0b 0a 00 00       	call   3fd2 <read>
    35c7:	83 c6 04             	add    $0x4,%esi
  for(i = 0; i < sizeof(pids)/sizeof(pids[0]); i++){
    35ca:	39 de                	cmp    %ebx,%esi
    35cc:	75 ce                	jne    359c <sbrktest+0x1ec>
  c = sbrk(4096);
    35ce:	c7 04 24 00 10 00 00 	movl   $0x1000,(%esp)
    35d5:	8d 75 c0             	lea    -0x40(%ebp),%esi
    35d8:	e8 65 0a 00 00       	call   4042 <sbrk>
    35dd:	89 c7                	mov    %eax,%edi
    if(pids[i] == -1)
    35df:	8b 06                	mov    (%esi),%eax
    35e1:	83 f8 ff             	cmp    $0xffffffff,%eax
    35e4:	74 14                	je     35fa <sbrktest+0x24a>
    kill(pids[i]);
    35e6:	89 04 24             	mov    %eax,(%esp)
    35e9:	e8 fc 09 00 00       	call   3fea <kill>
    wait(0);
    35ee:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    35f5:	e8 c0 09 00 00       	call   3fba <wait>
    35fa:	83 c6 04             	add    $0x4,%esi
  for(i = 0; i < sizeof(pids)/sizeof(pids[0]); i++){
    35fd:	39 f3                	cmp    %esi,%ebx
    35ff:	75 de                	jne    35df <sbrktest+0x22f>
  if(c == (char*)0xffffffff){
    3601:	83 ff ff             	cmp    $0xffffffff,%edi
    3604:	0f 84 b9 00 00 00    	je     36c3 <sbrktest+0x313>
  if(sbrk(0) > oldbrk)
    360a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3611:	e8 2c 0a 00 00       	call   4042 <sbrk>
    3616:	39 45 a4             	cmp    %eax,-0x5c(%ebp)
    3619:	73 19                	jae    3634 <sbrktest+0x284>
    sbrk(-(sbrk(0) - oldbrk));
    361b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3622:	e8 1b 0a 00 00       	call   4042 <sbrk>
    3627:	8b 7d a4             	mov    -0x5c(%ebp),%edi
    362a:	29 c7                	sub    %eax,%edi
    362c:	89 3c 24             	mov    %edi,(%esp)
    362f:	e8 0e 0a 00 00       	call   4042 <sbrk>
  printf(stdout, "sbrk test OK\n");
    3634:	a1 e4 64 00 00       	mov    0x64e4,%eax
    3639:	c7 44 24 04 00 53 00 	movl   $0x5300,0x4(%esp)
    3640:	00 
    3641:	89 04 24             	mov    %eax,(%esp)
    3644:	e8 b7 0a 00 00       	call   4100 <printf>
}
    3649:	83 c4 6c             	add    $0x6c,%esp
    364c:	5b                   	pop    %ebx
    364d:	5e                   	pop    %esi
    364e:	5f                   	pop    %edi
    364f:	5d                   	pop    %ebp
    3650:	c3                   	ret    
      sbrk(BIG - (uint)sbrk(0));
    3651:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3658:	e8 e5 09 00 00       	call   4042 <sbrk>
    365d:	ba 00 00 40 06       	mov    $0x6400000,%edx
    3662:	29 c2                	sub    %eax,%edx
    3664:	89 14 24             	mov    %edx,(%esp)
    3667:	e8 d6 09 00 00       	call   4042 <sbrk>
      write(fds[1], "x", 1);
    366c:	8b 45 bc             	mov    -0x44(%ebp),%eax
    366f:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    3676:	00 
    3677:	c7 44 24 04 c1 4d 00 	movl   $0x4dc1,0x4(%esp)
    367e:	00 
    367f:	89 04 24             	mov    %eax,(%esp)
    3682:	e8 53 09 00 00       	call   3fda <write>
    3687:	90                   	nop
      for(;;) sleep(1000);
    3688:	c7 04 24 e8 03 00 00 	movl   $0x3e8,(%esp)
    368f:	e8 b6 09 00 00       	call   404a <sleep>
    3694:	eb f2                	jmp    3688 <sbrktest+0x2d8>
      printf(stdout, "sbrk test failed %d %x %x\n", i, a, b);
    3696:	89 44 24 10          	mov    %eax,0x10(%esp)
    369a:	a1 e4 64 00 00       	mov    0x64e4,%eax
    369f:	89 5c 24 0c          	mov    %ebx,0xc(%esp)
    36a3:	89 74 24 08          	mov    %esi,0x8(%esp)
    36a7:	c7 44 24 04 63 52 00 	movl   $0x5263,0x4(%esp)
    36ae:	00 
    36af:	89 04 24             	mov    %eax,(%esp)
    36b2:	e8 49 0a 00 00       	call   4100 <printf>
      exit(1);
    36b7:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    36be:	e8 ef 08 00 00       	call   3fb2 <exit>
    printf(stdout, "failed sbrk leaked memory\n");
    36c3:	c7 44 24 04 e5 52 00 	movl   $0x52e5,0x4(%esp)
    36ca:	00 
    printf(stdout, "sbrk test failed post-fork\n");
    36cb:	a1 e4 64 00 00       	mov    0x64e4,%eax
    36d0:	89 04 24             	mov    %eax,(%esp)
    36d3:	e8 28 0a 00 00       	call   4100 <printf>
    exit(1);
    36d8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    36df:	e8 ce 08 00 00       	call   3fb2 <exit>
    printf(1, "pipe() failed\n");
    36e4:	c7 44 24 04 a1 47 00 	movl   $0x47a1,0x4(%esp)
    36eb:	00 
    36ec:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    36f3:	e8 08 0a 00 00       	call   4100 <printf>
    exit(1);
    36f8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    36ff:	e8 ae 08 00 00       	call   3fb2 <exit>
      printf(stdout, "oops could read %x = %x\n", a, *a);
    3704:	0f be 03             	movsbl (%ebx),%eax
    3707:	89 5c 24 08          	mov    %ebx,0x8(%esp)
    370b:	c7 44 24 04 cc 52 00 	movl   $0x52cc,0x4(%esp)
    3712:	00 
    3713:	89 44 24 0c          	mov    %eax,0xc(%esp)
    3717:	a1 e4 64 00 00       	mov    0x64e4,%eax
    371c:	89 04 24             	mov    %eax,(%esp)
    371f:	e8 dc 09 00 00       	call   4100 <printf>
      kill(ppid);
    3724:	89 34 24             	mov    %esi,(%esp)
    3727:	e8 be 08 00 00       	call   3fea <kill>
      exit(1);
    372c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3733:	e8 7a 08 00 00       	call   3fb2 <exit>
      printf(stdout, "fork failed\n");
    3738:	c7 44 24 04 a9 53 00 	movl   $0x53a9,0x4(%esp)
    373f:	00 
    3740:	eb 89                	jmp    36cb <sbrktest+0x31b>
    printf(stdout, "sbrk downsize failed, a %x c %x\n", a, c);
    3742:	89 44 24 0c          	mov    %eax,0xc(%esp)
    3746:	89 5c 24 08          	mov    %ebx,0x8(%esp)
    374a:	c7 44 24 04 ac 5a 00 	movl   $0x5aac,0x4(%esp)
    3751:	00 
    3752:	a1 e4 64 00 00       	mov    0x64e4,%eax
    3757:	89 04 24             	mov    %eax,(%esp)
    375a:	e8 a1 09 00 00       	call   4100 <printf>
    exit(1);
    375f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3766:	e8 47 08 00 00       	call   3fb2 <exit>
    printf(stdout, "sbrk de-allocation didn't really deallocate\n");
    376b:	c7 44 24 04 7c 5a 00 	movl   $0x5a7c,0x4(%esp)
    3772:	00 
    3773:	e9 53 ff ff ff       	jmp    36cb <sbrktest+0x31b>
    printf(stdout, "sbrk re-allocation failed, a %x c %x\n", a, c);
    3778:	89 5c 24 0c          	mov    %ebx,0xc(%esp)
    377c:	89 74 24 08          	mov    %esi,0x8(%esp)
    3780:	c7 44 24 04 54 5a 00 	movl   $0x5a54,0x4(%esp)
    3787:	00 
    3788:	eb c8                	jmp    3752 <sbrktest+0x3a2>
    printf(stdout, "sbrk test failed to grow big address space; enough phys mem?\n");
    378a:	c7 44 24 04 dc 59 00 	movl   $0x59dc,0x4(%esp)
    3791:	00 
    3792:	e9 34 ff ff ff       	jmp    36cb <sbrktest+0x31b>
    printf(stdout, "sbrk deallocation produced wrong address, a %x c %x\n", a, c);
    3797:	89 44 24 0c          	mov    %eax,0xc(%esp)
    379b:	89 5c 24 08          	mov    %ebx,0x8(%esp)
    379f:	c7 44 24 04 1c 5a 00 	movl   $0x5a1c,0x4(%esp)
    37a6:	00 
    37a7:	eb a9                	jmp    3752 <sbrktest+0x3a2>
    printf(stdout, "sbrk could not deallocate\n");
    37a9:	c7 44 24 04 b1 52 00 	movl   $0x52b1,0x4(%esp)
    37b0:	00 
    37b1:	e9 15 ff ff ff       	jmp    36cb <sbrktest+0x31b>
    printf(stdout, "sbrk test failed post-fork\n");
    37b6:	c7 44 24 04 95 52 00 	movl   $0x5295,0x4(%esp)
    37bd:	00 
    37be:	e9 08 ff ff ff       	jmp    36cb <sbrktest+0x31b>
    printf(stdout, "sbrk test fork failed\n");
    37c3:	c7 44 24 04 7e 52 00 	movl   $0x527e,0x4(%esp)
    37ca:	00 
    37cb:	e9 fb fe ff ff       	jmp    36cb <sbrktest+0x31b>

000037d0 <validateint>:
{
    37d0:	55                   	push   %ebp
    37d1:	89 e5                	mov    %esp,%ebp
}
    37d3:	5d                   	pop    %ebp
    37d4:	c3                   	ret    
    37d5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    37d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000037e0 <validatetest>:
{
    37e0:	55                   	push   %ebp
    37e1:	89 e5                	mov    %esp,%ebp
    37e3:	56                   	push   %esi
    37e4:	53                   	push   %ebx
  for(p = 0; p <= (uint)hi; p += 4096){
    37e5:	31 db                	xor    %ebx,%ebx
{
    37e7:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "validate test\n");
    37ea:	a1 e4 64 00 00       	mov    0x64e4,%eax
    37ef:	c7 44 24 04 0e 53 00 	movl   $0x530e,0x4(%esp)
    37f6:	00 
    37f7:	89 04 24             	mov    %eax,(%esp)
    37fa:	e8 01 09 00 00       	call   4100 <printf>
    37ff:	90                   	nop
    if((pid = fork()) == 0){
    3800:	e8 a5 07 00 00       	call   3faa <fork>
    3805:	85 c0                	test   %eax,%eax
    3807:	89 c6                	mov    %eax,%esi
    3809:	0f 84 80 00 00 00    	je     388f <validatetest+0xaf>
    sleep(0);
    380f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3816:	e8 2f 08 00 00       	call   404a <sleep>
    sleep(0);
    381b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3822:	e8 23 08 00 00       	call   404a <sleep>
    kill(pid);
    3827:	89 34 24             	mov    %esi,(%esp)
    382a:	e8 bb 07 00 00       	call   3fea <kill>
    wait(0);
    382f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3836:	e8 7f 07 00 00       	call   3fba <wait>
    if(link("nosuchfile", (char*)p) != -1){
    383b:	89 5c 24 04          	mov    %ebx,0x4(%esp)
    383f:	c7 04 24 1d 53 00 00 	movl   $0x531d,(%esp)
    3846:	e8 cf 07 00 00       	call   401a <link>
    384b:	83 f8 ff             	cmp    $0xffffffff,%eax
    384e:	75 2a                	jne    387a <validatetest+0x9a>
  for(p = 0; p <= (uint)hi; p += 4096){
    3850:	81 c3 00 10 00 00    	add    $0x1000,%ebx
    3856:	81 fb 00 40 11 00    	cmp    $0x114000,%ebx
    385c:	75 a2                	jne    3800 <validatetest+0x20>
  printf(stdout, "validate ok\n");
    385e:	a1 e4 64 00 00       	mov    0x64e4,%eax
    3863:	c7 44 24 04 41 53 00 	movl   $0x5341,0x4(%esp)
    386a:	00 
    386b:	89 04 24             	mov    %eax,(%esp)
    386e:	e8 8d 08 00 00       	call   4100 <printf>
}
    3873:	83 c4 10             	add    $0x10,%esp
    3876:	5b                   	pop    %ebx
    3877:	5e                   	pop    %esi
    3878:	5d                   	pop    %ebp
    3879:	c3                   	ret    
      printf(stdout, "link should not succeed\n");
    387a:	a1 e4 64 00 00       	mov    0x64e4,%eax
    387f:	c7 44 24 04 28 53 00 	movl   $0x5328,0x4(%esp)
    3886:	00 
    3887:	89 04 24             	mov    %eax,(%esp)
    388a:	e8 71 08 00 00       	call   4100 <printf>
      exit(1);
    388f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3896:	e8 17 07 00 00       	call   3fb2 <exit>
    389b:	90                   	nop
    389c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000038a0 <bsstest>:
{
    38a0:	55                   	push   %ebp
    38a1:	89 e5                	mov    %esp,%ebp
    38a3:	83 ec 18             	sub    $0x18,%esp
  printf(stdout, "bss test\n");
    38a6:	a1 e4 64 00 00       	mov    0x64e4,%eax
    38ab:	c7 44 24 04 4e 53 00 	movl   $0x534e,0x4(%esp)
    38b2:	00 
    38b3:	89 04 24             	mov    %eax,(%esp)
    38b6:	e8 45 08 00 00       	call   4100 <printf>
    if(uninit[i] != '\0'){
    38bb:	80 3d a0 65 00 00 00 	cmpb   $0x0,0x65a0
    38c2:	75 36                	jne    38fa <bsstest+0x5a>
  for(i = 0; i < sizeof(uninit); i++){
    38c4:	b8 01 00 00 00       	mov    $0x1,%eax
    38c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(uninit[i] != '\0'){
    38d0:	80 b8 a0 65 00 00 00 	cmpb   $0x0,0x65a0(%eax)
    38d7:	75 21                	jne    38fa <bsstest+0x5a>
  for(i = 0; i < sizeof(uninit); i++){
    38d9:	83 c0 01             	add    $0x1,%eax
    38dc:	3d 10 27 00 00       	cmp    $0x2710,%eax
    38e1:	75 ed                	jne    38d0 <bsstest+0x30>
  printf(stdout, "bss test ok\n");
    38e3:	a1 e4 64 00 00       	mov    0x64e4,%eax
    38e8:	c7 44 24 04 69 53 00 	movl   $0x5369,0x4(%esp)
    38ef:	00 
    38f0:	89 04 24             	mov    %eax,(%esp)
    38f3:	e8 08 08 00 00       	call   4100 <printf>
}
    38f8:	c9                   	leave  
    38f9:	c3                   	ret    
      printf(stdout, "bss test failed\n");
    38fa:	a1 e4 64 00 00       	mov    0x64e4,%eax
    38ff:	c7 44 24 04 58 53 00 	movl   $0x5358,0x4(%esp)
    3906:	00 
    3907:	89 04 24             	mov    %eax,(%esp)
    390a:	e8 f1 07 00 00       	call   4100 <printf>
      exit(1);
    390f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3916:	e8 97 06 00 00       	call   3fb2 <exit>
    391b:	90                   	nop
    391c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00003920 <bigargtest>:
{
    3920:	55                   	push   %ebp
    3921:	89 e5                	mov    %esp,%ebp
    3923:	83 ec 18             	sub    $0x18,%esp
  unlink("bigarg-ok");
    3926:	c7 04 24 76 53 00 00 	movl   $0x5376,(%esp)
    392d:	e8 d8 06 00 00       	call   400a <unlink>
  pid = fork();
    3932:	e8 73 06 00 00       	call   3faa <fork>
  if(pid == 0){
    3937:	85 c0                	test   %eax,%eax
    3939:	74 4d                	je     3988 <bigargtest+0x68>
    393b:	90                   	nop
    393c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  } else if(pid < 0){
    3940:	0f 88 e6 00 00 00    	js     3a2c <bigargtest+0x10c>
  wait(0);
    3946:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    394d:	e8 68 06 00 00       	call   3fba <wait>
  fd = open("bigarg-ok", 0);
    3952:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    3959:	00 
    395a:	c7 04 24 76 53 00 00 	movl   $0x5376,(%esp)
    3961:	e8 94 06 00 00       	call   3ffa <open>
  if(fd < 0){
    3966:	85 c0                	test   %eax,%eax
    3968:	0f 88 9d 00 00 00    	js     3a0b <bigargtest+0xeb>
  close(fd);
    396e:	89 04 24             	mov    %eax,(%esp)
    3971:	e8 6c 06 00 00       	call   3fe2 <close>
  unlink("bigarg-ok");
    3976:	c7 04 24 76 53 00 00 	movl   $0x5376,(%esp)
    397d:	e8 88 06 00 00       	call   400a <unlink>
}
    3982:	c9                   	leave  
    3983:	c3                   	ret    
    3984:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      args[i] = "bigargs test: failed\n                                                                                                                                                                                                       ";
    3988:	c7 04 85 00 65 00 00 	movl   $0x5ad0,0x6500(,%eax,4)
    398f:	d0 5a 00 00 
    for(i = 0; i < MAXARG-1; i++)
    3993:	83 c0 01             	add    $0x1,%eax
    3996:	83 f8 1f             	cmp    $0x1f,%eax
    3999:	75 ed                	jne    3988 <bigargtest+0x68>
    printf(stdout, "bigarg test\n");
    399b:	a1 e4 64 00 00       	mov    0x64e4,%eax
    39a0:	c7 44 24 04 80 53 00 	movl   $0x5380,0x4(%esp)
    39a7:	00 
    args[MAXARG-1] = 0;
    39a8:	c7 05 7c 65 00 00 00 	movl   $0x0,0x657c
    39af:	00 00 00 
    printf(stdout, "bigarg test\n");
    39b2:	89 04 24             	mov    %eax,(%esp)
    39b5:	e8 46 07 00 00       	call   4100 <printf>
    exec("echo", args);
    39ba:	c7 44 24 04 00 65 00 	movl   $0x6500,0x4(%esp)
    39c1:	00 
    39c2:	c7 04 24 4d 45 00 00 	movl   $0x454d,(%esp)
    39c9:	e8 24 06 00 00       	call   3ff2 <exec>
    printf(stdout, "bigarg test ok\n");
    39ce:	a1 e4 64 00 00       	mov    0x64e4,%eax
    39d3:	c7 44 24 04 8d 53 00 	movl   $0x538d,0x4(%esp)
    39da:	00 
    39db:	89 04 24             	mov    %eax,(%esp)
    39de:	e8 1d 07 00 00       	call   4100 <printf>
    fd = open("bigarg-ok", O_CREATE);
    39e3:	c7 44 24 04 00 02 00 	movl   $0x200,0x4(%esp)
    39ea:	00 
    39eb:	c7 04 24 76 53 00 00 	movl   $0x5376,(%esp)
    39f2:	e8 03 06 00 00       	call   3ffa <open>
    close(fd);
    39f7:	89 04 24             	mov    %eax,(%esp)
    39fa:	e8 e3 05 00 00       	call   3fe2 <close>
    exit(0);
    39ff:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3a06:	e8 a7 05 00 00       	call   3fb2 <exit>
    printf(stdout, "bigarg test failed!\n");
    3a0b:	c7 44 24 04 b6 53 00 	movl   $0x53b6,0x4(%esp)
    3a12:	00 
    3a13:	a1 e4 64 00 00       	mov    0x64e4,%eax
    3a18:	89 04 24             	mov    %eax,(%esp)
    3a1b:	e8 e0 06 00 00       	call   4100 <printf>
    exit(1);
    3a20:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3a27:	e8 86 05 00 00       	call   3fb2 <exit>
    printf(stdout, "bigargtest: fork failed\n");
    3a2c:	c7 44 24 04 9d 53 00 	movl   $0x539d,0x4(%esp)
    3a33:	00 
    3a34:	eb dd                	jmp    3a13 <bigargtest+0xf3>
    3a36:	8d 76 00             	lea    0x0(%esi),%esi
    3a39:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003a40 <fsfull>:
{
    3a40:	55                   	push   %ebp
    3a41:	89 e5                	mov    %esp,%ebp
    3a43:	57                   	push   %edi
    3a44:	56                   	push   %esi
    3a45:	53                   	push   %ebx
  for(nfiles = 0; ; nfiles++){
    3a46:	31 db                	xor    %ebx,%ebx
{
    3a48:	83 ec 5c             	sub    $0x5c,%esp
  printf(1, "fsfull test\n");
    3a4b:	c7 44 24 04 cb 53 00 	movl   $0x53cb,0x4(%esp)
    3a52:	00 
    3a53:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3a5a:	e8 a1 06 00 00       	call   4100 <printf>
    3a5f:	90                   	nop
    name[1] = '0' + nfiles / 1000;
    3a60:	b8 d3 4d 62 10       	mov    $0x10624dd3,%eax
    3a65:	89 d9                	mov    %ebx,%ecx
    3a67:	f7 eb                	imul   %ebx
    name[2] = '0' + (nfiles % 1000) / 100;
    3a69:	89 de                	mov    %ebx,%esi
    name[1] = '0' + nfiles / 1000;
    3a6b:	c1 f9 1f             	sar    $0x1f,%ecx
    name[3] = '0' + (nfiles % 100) / 10;
    3a6e:	89 df                	mov    %ebx,%edi
    printf(1, "writing %s\n", name);
    3a70:	c7 44 24 04 d8 53 00 	movl   $0x53d8,0x4(%esp)
    3a77:	00 
    3a78:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    name[1] = '0' + nfiles / 1000;
    3a7f:	c1 fa 06             	sar    $0x6,%edx
    3a82:	29 ca                	sub    %ecx,%edx
    3a84:	8d 42 30             	lea    0x30(%edx),%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    3a87:	69 d2 e8 03 00 00    	imul   $0x3e8,%edx,%edx
    name[1] = '0' + nfiles / 1000;
    3a8d:	88 45 a9             	mov    %al,-0x57(%ebp)
    name[2] = '0' + (nfiles % 1000) / 100;
    3a90:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    name[0] = 'f';
    3a95:	c6 45 a8 66          	movb   $0x66,-0x58(%ebp)
    name[5] = '\0';
    3a99:	c6 45 ad 00          	movb   $0x0,-0x53(%ebp)
    name[2] = '0' + (nfiles % 1000) / 100;
    3a9d:	29 d6                	sub    %edx,%esi
    3a9f:	f7 ee                	imul   %esi
    name[3] = '0' + (nfiles % 100) / 10;
    3aa1:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    3aa6:	c1 fe 1f             	sar    $0x1f,%esi
    3aa9:	c1 fa 05             	sar    $0x5,%edx
    3aac:	29 f2                	sub    %esi,%edx
    name[3] = '0' + (nfiles % 100) / 10;
    3aae:	be 67 66 66 66       	mov    $0x66666667,%esi
    name[2] = '0' + (nfiles % 1000) / 100;
    3ab3:	83 c2 30             	add    $0x30,%edx
    3ab6:	88 55 aa             	mov    %dl,-0x56(%ebp)
    name[3] = '0' + (nfiles % 100) / 10;
    3ab9:	f7 eb                	imul   %ebx
    3abb:	c1 fa 05             	sar    $0x5,%edx
    3abe:	29 ca                	sub    %ecx,%edx
    3ac0:	6b d2 64             	imul   $0x64,%edx,%edx
    3ac3:	29 d7                	sub    %edx,%edi
    3ac5:	89 f8                	mov    %edi,%eax
    3ac7:	f7 ee                	imul   %esi
    name[4] = '0' + (nfiles % 10);
    3ac9:	89 d8                	mov    %ebx,%eax
    name[3] = '0' + (nfiles % 100) / 10;
    3acb:	c1 ff 1f             	sar    $0x1f,%edi
    3ace:	c1 fa 02             	sar    $0x2,%edx
    3ad1:	29 fa                	sub    %edi,%edx
    3ad3:	83 c2 30             	add    $0x30,%edx
    3ad6:	88 55 ab             	mov    %dl,-0x55(%ebp)
    name[4] = '0' + (nfiles % 10);
    3ad9:	f7 ee                	imul   %esi
    3adb:	c1 fa 02             	sar    $0x2,%edx
    3ade:	29 ca                	sub    %ecx,%edx
    3ae0:	89 d9                	mov    %ebx,%ecx
    3ae2:	8d 04 92             	lea    (%edx,%edx,4),%eax
    3ae5:	01 c0                	add    %eax,%eax
    3ae7:	29 c1                	sub    %eax,%ecx
    3ae9:	89 c8                	mov    %ecx,%eax
    3aeb:	83 c0 30             	add    $0x30,%eax
    3aee:	88 45 ac             	mov    %al,-0x54(%ebp)
    printf(1, "writing %s\n", name);
    3af1:	8d 45 a8             	lea    -0x58(%ebp),%eax
    3af4:	89 44 24 08          	mov    %eax,0x8(%esp)
    3af8:	e8 03 06 00 00       	call   4100 <printf>
    int fd = open(name, O_CREATE|O_RDWR);
    3afd:	8d 45 a8             	lea    -0x58(%ebp),%eax
    3b00:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    3b07:	00 
    3b08:	89 04 24             	mov    %eax,(%esp)
    3b0b:	e8 ea 04 00 00       	call   3ffa <open>
    if(fd < 0){
    3b10:	85 c0                	test   %eax,%eax
    int fd = open(name, O_CREATE|O_RDWR);
    3b12:	89 c7                	mov    %eax,%edi
    if(fd < 0){
    3b14:	78 57                	js     3b6d <fsfull+0x12d>
    3b16:	31 f6                	xor    %esi,%esi
    3b18:	eb 08                	jmp    3b22 <fsfull+0xe2>
    3b1a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      total += cc;
    3b20:	01 c6                	add    %eax,%esi
      int cc = write(fd, buf, 512);
    3b22:	c7 44 24 08 00 02 00 	movl   $0x200,0x8(%esp)
    3b29:	00 
    3b2a:	c7 44 24 04 c0 8c 00 	movl   $0x8cc0,0x4(%esp)
    3b31:	00 
    3b32:	89 3c 24             	mov    %edi,(%esp)
    3b35:	e8 a0 04 00 00       	call   3fda <write>
      if(cc < 512)
    3b3a:	3d ff 01 00 00       	cmp    $0x1ff,%eax
    3b3f:	7f df                	jg     3b20 <fsfull+0xe0>
    printf(1, "wrote %d bytes\n", total);
    3b41:	89 74 24 08          	mov    %esi,0x8(%esp)
    3b45:	c7 44 24 04 f4 53 00 	movl   $0x53f4,0x4(%esp)
    3b4c:	00 
    3b4d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3b54:	e8 a7 05 00 00       	call   4100 <printf>
    close(fd);
    3b59:	89 3c 24             	mov    %edi,(%esp)
    3b5c:	e8 81 04 00 00       	call   3fe2 <close>
    if(total == 0)
    3b61:	85 f6                	test   %esi,%esi
    3b63:	74 23                	je     3b88 <fsfull+0x148>
  for(nfiles = 0; ; nfiles++){
    3b65:	83 c3 01             	add    $0x1,%ebx
  }
    3b68:	e9 f3 fe ff ff       	jmp    3a60 <fsfull+0x20>
      printf(1, "open %s failed\n", name);
    3b6d:	8d 45 a8             	lea    -0x58(%ebp),%eax
    3b70:	89 44 24 08          	mov    %eax,0x8(%esp)
    3b74:	c7 44 24 04 e4 53 00 	movl   $0x53e4,0x4(%esp)
    3b7b:	00 
    3b7c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3b83:	e8 78 05 00 00       	call   4100 <printf>
    name[1] = '0' + nfiles / 1000;
    3b88:	b8 d3 4d 62 10       	mov    $0x10624dd3,%eax
    3b8d:	89 d9                	mov    %ebx,%ecx
    3b8f:	f7 eb                	imul   %ebx
    name[2] = '0' + (nfiles % 1000) / 100;
    3b91:	89 de                	mov    %ebx,%esi
    name[1] = '0' + nfiles / 1000;
    3b93:	c1 f9 1f             	sar    $0x1f,%ecx
    name[3] = '0' + (nfiles % 100) / 10;
    3b96:	89 df                	mov    %ebx,%edi
    name[0] = 'f';
    3b98:	c6 45 a8 66          	movb   $0x66,-0x58(%ebp)
    name[5] = '\0';
    3b9c:	c6 45 ad 00          	movb   $0x0,-0x53(%ebp)
    name[1] = '0' + nfiles / 1000;
    3ba0:	c1 fa 06             	sar    $0x6,%edx
    3ba3:	29 ca                	sub    %ecx,%edx
    3ba5:	8d 42 30             	lea    0x30(%edx),%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    3ba8:	69 d2 e8 03 00 00    	imul   $0x3e8,%edx,%edx
    name[1] = '0' + nfiles / 1000;
    3bae:	88 45 a9             	mov    %al,-0x57(%ebp)
    name[2] = '0' + (nfiles % 1000) / 100;
    3bb1:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    3bb6:	29 d6                	sub    %edx,%esi
    3bb8:	f7 ee                	imul   %esi
    name[3] = '0' + (nfiles % 100) / 10;
    3bba:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    3bbf:	c1 fe 1f             	sar    $0x1f,%esi
    3bc2:	c1 fa 05             	sar    $0x5,%edx
    3bc5:	29 f2                	sub    %esi,%edx
    name[3] = '0' + (nfiles % 100) / 10;
    3bc7:	be 67 66 66 66       	mov    $0x66666667,%esi
    name[2] = '0' + (nfiles % 1000) / 100;
    3bcc:	83 c2 30             	add    $0x30,%edx
    3bcf:	88 55 aa             	mov    %dl,-0x56(%ebp)
    name[3] = '0' + (nfiles % 100) / 10;
    3bd2:	f7 eb                	imul   %ebx
    3bd4:	c1 fa 05             	sar    $0x5,%edx
    3bd7:	29 ca                	sub    %ecx,%edx
    3bd9:	6b d2 64             	imul   $0x64,%edx,%edx
    3bdc:	29 d7                	sub    %edx,%edi
    3bde:	89 f8                	mov    %edi,%eax
    3be0:	f7 ee                	imul   %esi
    name[4] = '0' + (nfiles % 10);
    3be2:	89 d8                	mov    %ebx,%eax
    name[3] = '0' + (nfiles % 100) / 10;
    3be4:	c1 ff 1f             	sar    $0x1f,%edi
    3be7:	c1 fa 02             	sar    $0x2,%edx
    3bea:	29 fa                	sub    %edi,%edx
    3bec:	83 c2 30             	add    $0x30,%edx
    3bef:	88 55 ab             	mov    %dl,-0x55(%ebp)
    name[4] = '0' + (nfiles % 10);
    3bf2:	f7 ee                	imul   %esi
    3bf4:	c1 fa 02             	sar    $0x2,%edx
    3bf7:	29 ca                	sub    %ecx,%edx
    3bf9:	89 d9                	mov    %ebx,%ecx
    3bfb:	8d 04 92             	lea    (%edx,%edx,4),%eax
    nfiles--;
    3bfe:	83 eb 01             	sub    $0x1,%ebx
    name[4] = '0' + (nfiles % 10);
    3c01:	01 c0                	add    %eax,%eax
    3c03:	29 c1                	sub    %eax,%ecx
    3c05:	89 c8                	mov    %ecx,%eax
    3c07:	83 c0 30             	add    $0x30,%eax
    3c0a:	88 45 ac             	mov    %al,-0x54(%ebp)
    unlink(name);
    3c0d:	8d 45 a8             	lea    -0x58(%ebp),%eax
    3c10:	89 04 24             	mov    %eax,(%esp)
    3c13:	e8 f2 03 00 00       	call   400a <unlink>
  while(nfiles >= 0){
    3c18:	83 fb ff             	cmp    $0xffffffff,%ebx
    3c1b:	0f 85 67 ff ff ff    	jne    3b88 <fsfull+0x148>
  printf(1, "fsfull test finished\n");
    3c21:	c7 44 24 04 04 54 00 	movl   $0x5404,0x4(%esp)
    3c28:	00 
    3c29:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3c30:	e8 cb 04 00 00       	call   4100 <printf>
}
    3c35:	83 c4 5c             	add    $0x5c,%esp
    3c38:	5b                   	pop    %ebx
    3c39:	5e                   	pop    %esi
    3c3a:	5f                   	pop    %edi
    3c3b:	5d                   	pop    %ebp
    3c3c:	c3                   	ret    
    3c3d:	8d 76 00             	lea    0x0(%esi),%esi

00003c40 <uio>:
{
    3c40:	55                   	push   %ebp
    3c41:	89 e5                	mov    %esp,%ebp
    3c43:	83 ec 18             	sub    $0x18,%esp
  printf(1, "uio test\n");
    3c46:	c7 44 24 04 1a 54 00 	movl   $0x541a,0x4(%esp)
    3c4d:	00 
    3c4e:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3c55:	e8 a6 04 00 00       	call   4100 <printf>
  pid = fork();
    3c5a:	e8 4b 03 00 00       	call   3faa <fork>
  if(pid == 0){
    3c5f:	85 c0                	test   %eax,%eax
    3c61:	74 24                	je     3c87 <uio+0x47>
  } else if(pid < 0){
    3c63:	78 50                	js     3cb5 <uio+0x75>
  wait(0);
    3c65:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3c6c:	e8 49 03 00 00       	call   3fba <wait>
  printf(1, "uio test done\n");
    3c71:	c7 44 24 04 24 54 00 	movl   $0x5424,0x4(%esp)
    3c78:	00 
    3c79:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3c80:	e8 7b 04 00 00       	call   4100 <printf>
}
    3c85:	c9                   	leave  
    3c86:	c3                   	ret    
    asm volatile("outb %0,%1"::"a"(val), "d" (port));
    3c87:	ba 70 00 00 00       	mov    $0x70,%edx
    3c8c:	b8 09 00 00 00       	mov    $0x9,%eax
    3c91:	ee                   	out    %al,(%dx)
    asm volatile("inb %1,%0" : "=a" (val) : "d" (port));
    3c92:	b2 71                	mov    $0x71,%dl
    3c94:	ec                   	in     (%dx),%al
    printf(1, "uio: uio succeeded; test FAILED\n");
    3c95:	c7 44 24 04 b0 5b 00 	movl   $0x5bb0,0x4(%esp)
    3c9c:	00 
    3c9d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3ca4:	e8 57 04 00 00       	call   4100 <printf>
    exit(1);
    3ca9:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3cb0:	e8 fd 02 00 00       	call   3fb2 <exit>
    printf (1, "fork failed\n");
    3cb5:	c7 44 24 04 a9 53 00 	movl   $0x53a9,0x4(%esp)
    3cbc:	00 
    3cbd:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3cc4:	e8 37 04 00 00       	call   4100 <printf>
    exit(1);
    3cc9:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3cd0:	e8 dd 02 00 00       	call   3fb2 <exit>
    3cd5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3cd9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003ce0 <argptest>:
{
    3ce0:	55                   	push   %ebp
    3ce1:	89 e5                	mov    %esp,%ebp
    3ce3:	53                   	push   %ebx
    3ce4:	83 ec 14             	sub    $0x14,%esp
  fd = open("init", O_RDONLY);
    3ce7:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    3cee:	00 
    3cef:	c7 04 24 33 54 00 00 	movl   $0x5433,(%esp)
    3cf6:	e8 ff 02 00 00       	call   3ffa <open>
  if (fd < 0) {
    3cfb:	85 c0                	test   %eax,%eax
  fd = open("init", O_RDONLY);
    3cfd:	89 c3                	mov    %eax,%ebx
  if (fd < 0) {
    3cff:	78 45                	js     3d46 <argptest+0x66>
  read(fd, sbrk(0) - 1, -1);
    3d01:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3d08:	e8 35 03 00 00       	call   4042 <sbrk>
    3d0d:	89 1c 24             	mov    %ebx,(%esp)
    3d10:	c7 44 24 08 ff ff ff 	movl   $0xffffffff,0x8(%esp)
    3d17:	ff 
    3d18:	83 e8 01             	sub    $0x1,%eax
    3d1b:	89 44 24 04          	mov    %eax,0x4(%esp)
    3d1f:	e8 ae 02 00 00       	call   3fd2 <read>
  close(fd);
    3d24:	89 1c 24             	mov    %ebx,(%esp)
    3d27:	e8 b6 02 00 00       	call   3fe2 <close>
  printf(1, "arg test passed\n");
    3d2c:	c7 44 24 04 45 54 00 	movl   $0x5445,0x4(%esp)
    3d33:	00 
    3d34:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3d3b:	e8 c0 03 00 00       	call   4100 <printf>
}
    3d40:	83 c4 14             	add    $0x14,%esp
    3d43:	5b                   	pop    %ebx
    3d44:	5d                   	pop    %ebp
    3d45:	c3                   	ret    
    printf(2, "open failed\n");
    3d46:	c7 44 24 04 38 54 00 	movl   $0x5438,0x4(%esp)
    3d4d:	00 
    3d4e:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
    3d55:	e8 a6 03 00 00       	call   4100 <printf>
    exit(1);
    3d5a:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3d61:	e8 4c 02 00 00       	call   3fb2 <exit>
    3d66:	8d 76 00             	lea    0x0(%esi),%esi
    3d69:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003d70 <rand>:
  randstate = randstate * 1664525 + 1013904223;
    3d70:	69 05 e0 64 00 00 0d 	imul   $0x19660d,0x64e0,%eax
    3d77:	66 19 00 
{
    3d7a:	55                   	push   %ebp
    3d7b:	89 e5                	mov    %esp,%ebp
}
    3d7d:	5d                   	pop    %ebp
  randstate = randstate * 1664525 + 1013904223;
    3d7e:	05 5f f3 6e 3c       	add    $0x3c6ef35f,%eax
    3d83:	a3 e0 64 00 00       	mov    %eax,0x64e0
}
    3d88:	c3                   	ret    
    3d89:	66 90                	xchg   %ax,%ax
    3d8b:	66 90                	xchg   %ax,%ax
    3d8d:	66 90                	xchg   %ax,%ax
    3d8f:	90                   	nop

00003d90 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
    3d90:	55                   	push   %ebp
    3d91:	89 e5                	mov    %esp,%ebp
    3d93:	8b 45 08             	mov    0x8(%ebp),%eax
    3d96:	8b 4d 0c             	mov    0xc(%ebp),%ecx
    3d99:	53                   	push   %ebx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
    3d9a:	89 c2                	mov    %eax,%edx
    3d9c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3da0:	83 c1 01             	add    $0x1,%ecx
    3da3:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
    3da7:	83 c2 01             	add    $0x1,%edx
    3daa:	84 db                	test   %bl,%bl
    3dac:	88 5a ff             	mov    %bl,-0x1(%edx)
    3daf:	75 ef                	jne    3da0 <strcpy+0x10>
    ;
  return os;
}
    3db1:	5b                   	pop    %ebx
    3db2:	5d                   	pop    %ebp
    3db3:	c3                   	ret    
    3db4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    3dba:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00003dc0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
    3dc0:	55                   	push   %ebp
    3dc1:	89 e5                	mov    %esp,%ebp
    3dc3:	8b 55 08             	mov    0x8(%ebp),%edx
    3dc6:	53                   	push   %ebx
    3dc7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
    3dca:	0f b6 02             	movzbl (%edx),%eax
    3dcd:	84 c0                	test   %al,%al
    3dcf:	74 2d                	je     3dfe <strcmp+0x3e>
    3dd1:	0f b6 19             	movzbl (%ecx),%ebx
    3dd4:	38 d8                	cmp    %bl,%al
    3dd6:	74 0e                	je     3de6 <strcmp+0x26>
    3dd8:	eb 2b                	jmp    3e05 <strcmp+0x45>
    3dda:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    3de0:	38 c8                	cmp    %cl,%al
    3de2:	75 15                	jne    3df9 <strcmp+0x39>
    p++, q++;
    3de4:	89 d9                	mov    %ebx,%ecx
    3de6:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
    3de9:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
    3dec:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
    3def:	0f b6 49 01          	movzbl 0x1(%ecx),%ecx
    3df3:	84 c0                	test   %al,%al
    3df5:	75 e9                	jne    3de0 <strcmp+0x20>
    3df7:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
    3df9:	29 c8                	sub    %ecx,%eax
}
    3dfb:	5b                   	pop    %ebx
    3dfc:	5d                   	pop    %ebp
    3dfd:	c3                   	ret    
    3dfe:	0f b6 09             	movzbl (%ecx),%ecx
  while(*p && *p == *q)
    3e01:	31 c0                	xor    %eax,%eax
    3e03:	eb f4                	jmp    3df9 <strcmp+0x39>
    3e05:	0f b6 cb             	movzbl %bl,%ecx
    3e08:	eb ef                	jmp    3df9 <strcmp+0x39>
    3e0a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00003e10 <strlen>:

uint
strlen(const char *s)
{
    3e10:	55                   	push   %ebp
    3e11:	89 e5                	mov    %esp,%ebp
    3e13:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
    3e16:	80 39 00             	cmpb   $0x0,(%ecx)
    3e19:	74 12                	je     3e2d <strlen+0x1d>
    3e1b:	31 d2                	xor    %edx,%edx
    3e1d:	8d 76 00             	lea    0x0(%esi),%esi
    3e20:	83 c2 01             	add    $0x1,%edx
    3e23:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
    3e27:	89 d0                	mov    %edx,%eax
    3e29:	75 f5                	jne    3e20 <strlen+0x10>
    ;
  return n;
}
    3e2b:	5d                   	pop    %ebp
    3e2c:	c3                   	ret    
  for(n = 0; s[n]; n++)
    3e2d:	31 c0                	xor    %eax,%eax
}
    3e2f:	5d                   	pop    %ebp
    3e30:	c3                   	ret    
    3e31:	eb 0d                	jmp    3e40 <memset>
    3e33:	90                   	nop
    3e34:	90                   	nop
    3e35:	90                   	nop
    3e36:	90                   	nop
    3e37:	90                   	nop
    3e38:	90                   	nop
    3e39:	90                   	nop
    3e3a:	90                   	nop
    3e3b:	90                   	nop
    3e3c:	90                   	nop
    3e3d:	90                   	nop
    3e3e:	90                   	nop
    3e3f:	90                   	nop

00003e40 <memset>:

void*
memset(void *dst, int c, uint n)
{
    3e40:	55                   	push   %ebp
    3e41:	89 e5                	mov    %esp,%ebp
    3e43:	8b 55 08             	mov    0x8(%ebp),%edx
    3e46:	57                   	push   %edi
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
    3e47:	8b 4d 10             	mov    0x10(%ebp),%ecx
    3e4a:	8b 45 0c             	mov    0xc(%ebp),%eax
    3e4d:	89 d7                	mov    %edx,%edi
    3e4f:	fc                   	cld    
    3e50:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
    3e52:	89 d0                	mov    %edx,%eax
    3e54:	5f                   	pop    %edi
    3e55:	5d                   	pop    %ebp
    3e56:	c3                   	ret    
    3e57:	89 f6                	mov    %esi,%esi
    3e59:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003e60 <strchr>:

char*
strchr(const char *s, char c)
{
    3e60:	55                   	push   %ebp
    3e61:	89 e5                	mov    %esp,%ebp
    3e63:	8b 45 08             	mov    0x8(%ebp),%eax
    3e66:	53                   	push   %ebx
    3e67:	8b 55 0c             	mov    0xc(%ebp),%edx
  for(; *s; s++)
    3e6a:	0f b6 18             	movzbl (%eax),%ebx
    3e6d:	84 db                	test   %bl,%bl
    3e6f:	74 1d                	je     3e8e <strchr+0x2e>
    if(*s == c)
    3e71:	38 d3                	cmp    %dl,%bl
    3e73:	89 d1                	mov    %edx,%ecx
    3e75:	75 0d                	jne    3e84 <strchr+0x24>
    3e77:	eb 17                	jmp    3e90 <strchr+0x30>
    3e79:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3e80:	38 ca                	cmp    %cl,%dl
    3e82:	74 0c                	je     3e90 <strchr+0x30>
  for(; *s; s++)
    3e84:	83 c0 01             	add    $0x1,%eax
    3e87:	0f b6 10             	movzbl (%eax),%edx
    3e8a:	84 d2                	test   %dl,%dl
    3e8c:	75 f2                	jne    3e80 <strchr+0x20>
      return (char*)s;
  return 0;
    3e8e:	31 c0                	xor    %eax,%eax
}
    3e90:	5b                   	pop    %ebx
    3e91:	5d                   	pop    %ebp
    3e92:	c3                   	ret    
    3e93:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    3e99:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003ea0 <gets>:

char*
gets(char *buf, int max)
{
    3ea0:	55                   	push   %ebp
    3ea1:	89 e5                	mov    %esp,%ebp
    3ea3:	57                   	push   %edi
    3ea4:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    3ea5:	31 f6                	xor    %esi,%esi
{
    3ea7:	53                   	push   %ebx
    3ea8:	83 ec 2c             	sub    $0x2c,%esp
    cc = read(0, &c, 1);
    3eab:	8d 7d e7             	lea    -0x19(%ebp),%edi
  for(i=0; i+1 < max; ){
    3eae:	eb 31                	jmp    3ee1 <gets+0x41>
    cc = read(0, &c, 1);
    3eb0:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    3eb7:	00 
    3eb8:	89 7c 24 04          	mov    %edi,0x4(%esp)
    3ebc:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3ec3:	e8 0a 01 00 00       	call   3fd2 <read>
    if(cc < 1)
    3ec8:	85 c0                	test   %eax,%eax
    3eca:	7e 1d                	jle    3ee9 <gets+0x49>
      break;
    buf[i++] = c;
    3ecc:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
  for(i=0; i+1 < max; ){
    3ed0:	89 de                	mov    %ebx,%esi
    buf[i++] = c;
    3ed2:	8b 55 08             	mov    0x8(%ebp),%edx
    if(c == '\n' || c == '\r')
    3ed5:	3c 0d                	cmp    $0xd,%al
    buf[i++] = c;
    3ed7:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
    3edb:	74 0c                	je     3ee9 <gets+0x49>
    3edd:	3c 0a                	cmp    $0xa,%al
    3edf:	74 08                	je     3ee9 <gets+0x49>
  for(i=0; i+1 < max; ){
    3ee1:	8d 5e 01             	lea    0x1(%esi),%ebx
    3ee4:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
    3ee7:	7c c7                	jl     3eb0 <gets+0x10>
      break;
  }
  buf[i] = '\0';
    3ee9:	8b 45 08             	mov    0x8(%ebp),%eax
    3eec:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
    3ef0:	83 c4 2c             	add    $0x2c,%esp
    3ef3:	5b                   	pop    %ebx
    3ef4:	5e                   	pop    %esi
    3ef5:	5f                   	pop    %edi
    3ef6:	5d                   	pop    %ebp
    3ef7:	c3                   	ret    
    3ef8:	90                   	nop
    3ef9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00003f00 <stat>:

int
stat(const char *n, struct stat *st)
{
    3f00:	55                   	push   %ebp
    3f01:	89 e5                	mov    %esp,%ebp
    3f03:	56                   	push   %esi
    3f04:	53                   	push   %ebx
    3f05:	83 ec 10             	sub    $0x10,%esp
  int fd;
  int r;

  fd = open(n, O_RDONLY);
    3f08:	8b 45 08             	mov    0x8(%ebp),%eax
    3f0b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    3f12:	00 
    3f13:	89 04 24             	mov    %eax,(%esp)
    3f16:	e8 df 00 00 00       	call   3ffa <open>
  if(fd < 0)
    3f1b:	85 c0                	test   %eax,%eax
  fd = open(n, O_RDONLY);
    3f1d:	89 c3                	mov    %eax,%ebx
  if(fd < 0)
    3f1f:	78 27                	js     3f48 <stat+0x48>
    return -1;
  r = fstat(fd, st);
    3f21:	8b 45 0c             	mov    0xc(%ebp),%eax
    3f24:	89 1c 24             	mov    %ebx,(%esp)
    3f27:	89 44 24 04          	mov    %eax,0x4(%esp)
    3f2b:	e8 e2 00 00 00       	call   4012 <fstat>
  close(fd);
    3f30:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
    3f33:	89 c6                	mov    %eax,%esi
  close(fd);
    3f35:	e8 a8 00 00 00       	call   3fe2 <close>
  return r;
    3f3a:	89 f0                	mov    %esi,%eax
}
    3f3c:	83 c4 10             	add    $0x10,%esp
    3f3f:	5b                   	pop    %ebx
    3f40:	5e                   	pop    %esi
    3f41:	5d                   	pop    %ebp
    3f42:	c3                   	ret    
    3f43:	90                   	nop
    3f44:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    return -1;
    3f48:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3f4d:	eb ed                	jmp    3f3c <stat+0x3c>
    3f4f:	90                   	nop

00003f50 <atoi>:

int
atoi(const char *s)
{
    3f50:	55                   	push   %ebp
    3f51:	89 e5                	mov    %esp,%ebp
    3f53:	8b 4d 08             	mov    0x8(%ebp),%ecx
    3f56:	53                   	push   %ebx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    3f57:	0f be 11             	movsbl (%ecx),%edx
    3f5a:	8d 42 d0             	lea    -0x30(%edx),%eax
    3f5d:	3c 09                	cmp    $0x9,%al
  n = 0;
    3f5f:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
    3f64:	77 17                	ja     3f7d <atoi+0x2d>
    3f66:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
    3f68:	83 c1 01             	add    $0x1,%ecx
    3f6b:	8d 04 80             	lea    (%eax,%eax,4),%eax
    3f6e:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
  while('0' <= *s && *s <= '9')
    3f72:	0f be 11             	movsbl (%ecx),%edx
    3f75:	8d 5a d0             	lea    -0x30(%edx),%ebx
    3f78:	80 fb 09             	cmp    $0x9,%bl
    3f7b:	76 eb                	jbe    3f68 <atoi+0x18>
  return n;
}
    3f7d:	5b                   	pop    %ebx
    3f7e:	5d                   	pop    %ebp
    3f7f:	c3                   	ret    

00003f80 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
    3f80:	55                   	push   %ebp
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    3f81:	31 d2                	xor    %edx,%edx
{
    3f83:	89 e5                	mov    %esp,%ebp
    3f85:	56                   	push   %esi
    3f86:	8b 45 08             	mov    0x8(%ebp),%eax
    3f89:	53                   	push   %ebx
    3f8a:	8b 5d 10             	mov    0x10(%ebp),%ebx
    3f8d:	8b 75 0c             	mov    0xc(%ebp),%esi
  while(n-- > 0)
    3f90:	85 db                	test   %ebx,%ebx
    3f92:	7e 12                	jle    3fa6 <memmove+0x26>
    3f94:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
    3f98:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
    3f9c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
    3f9f:	83 c2 01             	add    $0x1,%edx
  while(n-- > 0)
    3fa2:	39 da                	cmp    %ebx,%edx
    3fa4:	75 f2                	jne    3f98 <memmove+0x18>
  return vdst;
}
    3fa6:	5b                   	pop    %ebx
    3fa7:	5e                   	pop    %esi
    3fa8:	5d                   	pop    %ebp
    3fa9:	c3                   	ret    

00003faa <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
    3faa:	b8 01 00 00 00       	mov    $0x1,%eax
    3faf:	cd 40                	int    $0x40
    3fb1:	c3                   	ret    

00003fb2 <exit>:
SYSCALL(exit)
    3fb2:	b8 02 00 00 00       	mov    $0x2,%eax
    3fb7:	cd 40                	int    $0x40
    3fb9:	c3                   	ret    

00003fba <wait>:
SYSCALL(wait)
    3fba:	b8 03 00 00 00       	mov    $0x3,%eax
    3fbf:	cd 40                	int    $0x40
    3fc1:	c3                   	ret    

00003fc2 <waitpid>:
SYSCALL(waitpid)
    3fc2:	b8 16 00 00 00       	mov    $0x16,%eax
    3fc7:	cd 40                	int    $0x40
    3fc9:	c3                   	ret    

00003fca <pipe>:
SYSCALL(pipe)
    3fca:	b8 04 00 00 00       	mov    $0x4,%eax
    3fcf:	cd 40                	int    $0x40
    3fd1:	c3                   	ret    

00003fd2 <read>:
SYSCALL(read)
    3fd2:	b8 05 00 00 00       	mov    $0x5,%eax
    3fd7:	cd 40                	int    $0x40
    3fd9:	c3                   	ret    

00003fda <write>:
SYSCALL(write)
    3fda:	b8 10 00 00 00       	mov    $0x10,%eax
    3fdf:	cd 40                	int    $0x40
    3fe1:	c3                   	ret    

00003fe2 <close>:
SYSCALL(close)
    3fe2:	b8 15 00 00 00       	mov    $0x15,%eax
    3fe7:	cd 40                	int    $0x40
    3fe9:	c3                   	ret    

00003fea <kill>:
SYSCALL(kill)
    3fea:	b8 06 00 00 00       	mov    $0x6,%eax
    3fef:	cd 40                	int    $0x40
    3ff1:	c3                   	ret    

00003ff2 <exec>:
SYSCALL(exec)
    3ff2:	b8 07 00 00 00       	mov    $0x7,%eax
    3ff7:	cd 40                	int    $0x40
    3ff9:	c3                   	ret    

00003ffa <open>:
SYSCALL(open)
    3ffa:	b8 0f 00 00 00       	mov    $0xf,%eax
    3fff:	cd 40                	int    $0x40
    4001:	c3                   	ret    

00004002 <mknod>:
SYSCALL(mknod)
    4002:	b8 11 00 00 00       	mov    $0x11,%eax
    4007:	cd 40                	int    $0x40
    4009:	c3                   	ret    

0000400a <unlink>:
SYSCALL(unlink)
    400a:	b8 12 00 00 00       	mov    $0x12,%eax
    400f:	cd 40                	int    $0x40
    4011:	c3                   	ret    

00004012 <fstat>:
SYSCALL(fstat)
    4012:	b8 08 00 00 00       	mov    $0x8,%eax
    4017:	cd 40                	int    $0x40
    4019:	c3                   	ret    

0000401a <link>:
SYSCALL(link)
    401a:	b8 13 00 00 00       	mov    $0x13,%eax
    401f:	cd 40                	int    $0x40
    4021:	c3                   	ret    

00004022 <mkdir>:
SYSCALL(mkdir)
    4022:	b8 14 00 00 00       	mov    $0x14,%eax
    4027:	cd 40                	int    $0x40
    4029:	c3                   	ret    

0000402a <chdir>:
SYSCALL(chdir)
    402a:	b8 09 00 00 00       	mov    $0x9,%eax
    402f:	cd 40                	int    $0x40
    4031:	c3                   	ret    

00004032 <dup>:
SYSCALL(dup)
    4032:	b8 0a 00 00 00       	mov    $0xa,%eax
    4037:	cd 40                	int    $0x40
    4039:	c3                   	ret    

0000403a <getpid>:
SYSCALL(getpid)
    403a:	b8 0b 00 00 00       	mov    $0xb,%eax
    403f:	cd 40                	int    $0x40
    4041:	c3                   	ret    

00004042 <sbrk>:
SYSCALL(sbrk)
    4042:	b8 0c 00 00 00       	mov    $0xc,%eax
    4047:	cd 40                	int    $0x40
    4049:	c3                   	ret    

0000404a <sleep>:
SYSCALL(sleep)
    404a:	b8 0d 00 00 00       	mov    $0xd,%eax
    404f:	cd 40                	int    $0x40
    4051:	c3                   	ret    

00004052 <uptime>:
SYSCALL(uptime)
    4052:	b8 0e 00 00 00       	mov    $0xe,%eax
    4057:	cd 40                	int    $0x40
    4059:	c3                   	ret    
    405a:	66 90                	xchg   %ax,%ax
    405c:	66 90                	xchg   %ax,%ax
    405e:	66 90                	xchg   %ax,%ax

00004060 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
    4060:	55                   	push   %ebp
    4061:	89 e5                	mov    %esp,%ebp
    4063:	57                   	push   %edi
    4064:	56                   	push   %esi
    4065:	89 c6                	mov    %eax,%esi
    4067:	53                   	push   %ebx
    4068:	83 ec 4c             	sub    $0x4c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    406b:	8b 5d 08             	mov    0x8(%ebp),%ebx
    406e:	85 db                	test   %ebx,%ebx
    4070:	74 09                	je     407b <printint+0x1b>
    4072:	89 d0                	mov    %edx,%eax
    4074:	c1 e8 1f             	shr    $0x1f,%eax
    4077:	84 c0                	test   %al,%al
    4079:	75 75                	jne    40f0 <printint+0x90>
    neg = 1;
    x = -xx;
  } else {
    x = xx;
    407b:	89 d0                	mov    %edx,%eax
  neg = 0;
    407d:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
    4084:	89 75 c0             	mov    %esi,-0x40(%ebp)
  }

  i = 0;
    4087:	31 ff                	xor    %edi,%edi
    4089:	89 ce                	mov    %ecx,%esi
    408b:	8d 5d d7             	lea    -0x29(%ebp),%ebx
    408e:	eb 02                	jmp    4092 <printint+0x32>
  do{
    buf[i++] = digits[x % base];
    4090:	89 cf                	mov    %ecx,%edi
    4092:	31 d2                	xor    %edx,%edx
    4094:	f7 f6                	div    %esi
    4096:	8d 4f 01             	lea    0x1(%edi),%ecx
    4099:	0f b6 92 07 5c 00 00 	movzbl 0x5c07(%edx),%edx
  }while((x /= base) != 0);
    40a0:	85 c0                	test   %eax,%eax
    buf[i++] = digits[x % base];
    40a2:	88 14 0b             	mov    %dl,(%ebx,%ecx,1)
  }while((x /= base) != 0);
    40a5:	75 e9                	jne    4090 <printint+0x30>
  if(neg)
    40a7:	8b 55 c4             	mov    -0x3c(%ebp),%edx
    buf[i++] = digits[x % base];
    40aa:	89 c8                	mov    %ecx,%eax
    40ac:	8b 75 c0             	mov    -0x40(%ebp),%esi
  if(neg)
    40af:	85 d2                	test   %edx,%edx
    40b1:	74 08                	je     40bb <printint+0x5b>
    buf[i++] = '-';
    40b3:	8d 4f 02             	lea    0x2(%edi),%ecx
    40b6:	c6 44 05 d8 2d       	movb   $0x2d,-0x28(%ebp,%eax,1)

  while(--i >= 0)
    40bb:	8d 79 ff             	lea    -0x1(%ecx),%edi
    40be:	66 90                	xchg   %ax,%ax
    40c0:	0f b6 44 3d d8       	movzbl -0x28(%ebp,%edi,1),%eax
    40c5:	83 ef 01             	sub    $0x1,%edi
  write(fd, &c, 1);
    40c8:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    40cf:	00 
    40d0:	89 5c 24 04          	mov    %ebx,0x4(%esp)
    40d4:	89 34 24             	mov    %esi,(%esp)
    40d7:	88 45 d7             	mov    %al,-0x29(%ebp)
    40da:	e8 fb fe ff ff       	call   3fda <write>
  while(--i >= 0)
    40df:	83 ff ff             	cmp    $0xffffffff,%edi
    40e2:	75 dc                	jne    40c0 <printint+0x60>
    putc(fd, buf[i]);
}
    40e4:	83 c4 4c             	add    $0x4c,%esp
    40e7:	5b                   	pop    %ebx
    40e8:	5e                   	pop    %esi
    40e9:	5f                   	pop    %edi
    40ea:	5d                   	pop    %ebp
    40eb:	c3                   	ret    
    40ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    x = -xx;
    40f0:	89 d0                	mov    %edx,%eax
    40f2:	f7 d8                	neg    %eax
    neg = 1;
    40f4:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
    40fb:	eb 87                	jmp    4084 <printint+0x24>
    40fd:	8d 76 00             	lea    0x0(%esi),%esi

00004100 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
    4100:	55                   	push   %ebp
    4101:	89 e5                	mov    %esp,%ebp
    4103:	57                   	push   %edi
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
    4104:	31 ff                	xor    %edi,%edi
{
    4106:	56                   	push   %esi
    4107:	53                   	push   %ebx
    4108:	83 ec 3c             	sub    $0x3c,%esp
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    410b:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  ap = (uint*)(void*)&fmt + 1;
    410e:	8d 45 10             	lea    0x10(%ebp),%eax
{
    4111:	8b 75 08             	mov    0x8(%ebp),%esi
  ap = (uint*)(void*)&fmt + 1;
    4114:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  for(i = 0; fmt[i]; i++){
    4117:	0f b6 13             	movzbl (%ebx),%edx
    411a:	83 c3 01             	add    $0x1,%ebx
    411d:	84 d2                	test   %dl,%dl
    411f:	75 39                	jne    415a <printf+0x5a>
    4121:	e9 c2 00 00 00       	jmp    41e8 <printf+0xe8>
    4126:	66 90                	xchg   %ax,%ax
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
    4128:	83 fa 25             	cmp    $0x25,%edx
    412b:	0f 84 bf 00 00 00    	je     41f0 <printf+0xf0>
  write(fd, &c, 1);
    4131:	8d 45 e2             	lea    -0x1e(%ebp),%eax
    4134:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    413b:	00 
    413c:	89 44 24 04          	mov    %eax,0x4(%esp)
    4140:	89 34 24             	mov    %esi,(%esp)
        state = '%';
      } else {
        putc(fd, c);
    4143:	88 55 e2             	mov    %dl,-0x1e(%ebp)
  write(fd, &c, 1);
    4146:	e8 8f fe ff ff       	call   3fda <write>
    414b:	83 c3 01             	add    $0x1,%ebx
  for(i = 0; fmt[i]; i++){
    414e:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
    4152:	84 d2                	test   %dl,%dl
    4154:	0f 84 8e 00 00 00    	je     41e8 <printf+0xe8>
    if(state == 0){
    415a:	85 ff                	test   %edi,%edi
    c = fmt[i] & 0xff;
    415c:	0f be c2             	movsbl %dl,%eax
    if(state == 0){
    415f:	74 c7                	je     4128 <printf+0x28>
      }
    } else if(state == '%'){
    4161:	83 ff 25             	cmp    $0x25,%edi
    4164:	75 e5                	jne    414b <printf+0x4b>
      if(c == 'd'){
    4166:	83 fa 64             	cmp    $0x64,%edx
    4169:	0f 84 31 01 00 00    	je     42a0 <printf+0x1a0>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
    416f:	25 f7 00 00 00       	and    $0xf7,%eax
    4174:	83 f8 70             	cmp    $0x70,%eax
    4177:	0f 84 83 00 00 00    	je     4200 <printf+0x100>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
    417d:	83 fa 73             	cmp    $0x73,%edx
    4180:	0f 84 a2 00 00 00    	je     4228 <printf+0x128>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
    4186:	83 fa 63             	cmp    $0x63,%edx
    4189:	0f 84 35 01 00 00    	je     42c4 <printf+0x1c4>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
    418f:	83 fa 25             	cmp    $0x25,%edx
    4192:	0f 84 e0 00 00 00    	je     4278 <printf+0x178>
  write(fd, &c, 1);
    4198:	8d 45 e6             	lea    -0x1a(%ebp),%eax
    419b:	83 c3 01             	add    $0x1,%ebx
    419e:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    41a5:	00 
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    41a6:	31 ff                	xor    %edi,%edi
  write(fd, &c, 1);
    41a8:	89 44 24 04          	mov    %eax,0x4(%esp)
    41ac:	89 34 24             	mov    %esi,(%esp)
    41af:	89 55 d0             	mov    %edx,-0x30(%ebp)
    41b2:	c6 45 e6 25          	movb   $0x25,-0x1a(%ebp)
    41b6:	e8 1f fe ff ff       	call   3fda <write>
        putc(fd, c);
    41bb:	8b 55 d0             	mov    -0x30(%ebp),%edx
  write(fd, &c, 1);
    41be:	8d 45 e7             	lea    -0x19(%ebp),%eax
    41c1:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    41c8:	00 
    41c9:	89 44 24 04          	mov    %eax,0x4(%esp)
    41cd:	89 34 24             	mov    %esi,(%esp)
        putc(fd, c);
    41d0:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
    41d3:	e8 02 fe ff ff       	call   3fda <write>
  for(i = 0; fmt[i]; i++){
    41d8:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
    41dc:	84 d2                	test   %dl,%dl
    41de:	0f 85 76 ff ff ff    	jne    415a <printf+0x5a>
    41e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    }
  }
}
    41e8:	83 c4 3c             	add    $0x3c,%esp
    41eb:	5b                   	pop    %ebx
    41ec:	5e                   	pop    %esi
    41ed:	5f                   	pop    %edi
    41ee:	5d                   	pop    %ebp
    41ef:	c3                   	ret    
        state = '%';
    41f0:	bf 25 00 00 00       	mov    $0x25,%edi
    41f5:	e9 51 ff ff ff       	jmp    414b <printf+0x4b>
    41fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
    4200:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    4203:	b9 10 00 00 00       	mov    $0x10,%ecx
      state = 0;
    4208:	31 ff                	xor    %edi,%edi
        printint(fd, *ap, 16, 0);
    420a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    4211:	8b 10                	mov    (%eax),%edx
    4213:	89 f0                	mov    %esi,%eax
    4215:	e8 46 fe ff ff       	call   4060 <printint>
        ap++;
    421a:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
    421e:	e9 28 ff ff ff       	jmp    414b <printf+0x4b>
    4223:	90                   	nop
    4224:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
    4228:	8b 45 d4             	mov    -0x2c(%ebp),%eax
        ap++;
    422b:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
        s = (char*)*ap;
    422f:	8b 38                	mov    (%eax),%edi
          s = "(null)";
    4231:	b8 00 5c 00 00       	mov    $0x5c00,%eax
    4236:	85 ff                	test   %edi,%edi
    4238:	0f 44 f8             	cmove  %eax,%edi
        while(*s != 0){
    423b:	0f b6 07             	movzbl (%edi),%eax
    423e:	84 c0                	test   %al,%al
    4240:	74 2a                	je     426c <printf+0x16c>
    4242:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    4248:	88 45 e3             	mov    %al,-0x1d(%ebp)
  write(fd, &c, 1);
    424b:	8d 45 e3             	lea    -0x1d(%ebp),%eax
          s++;
    424e:	83 c7 01             	add    $0x1,%edi
  write(fd, &c, 1);
    4251:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    4258:	00 
    4259:	89 44 24 04          	mov    %eax,0x4(%esp)
    425d:	89 34 24             	mov    %esi,(%esp)
    4260:	e8 75 fd ff ff       	call   3fda <write>
        while(*s != 0){
    4265:	0f b6 07             	movzbl (%edi),%eax
    4268:	84 c0                	test   %al,%al
    426a:	75 dc                	jne    4248 <printf+0x148>
      state = 0;
    426c:	31 ff                	xor    %edi,%edi
    426e:	e9 d8 fe ff ff       	jmp    414b <printf+0x4b>
    4273:	90                   	nop
    4274:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  write(fd, &c, 1);
    4278:	8d 45 e5             	lea    -0x1b(%ebp),%eax
      state = 0;
    427b:	31 ff                	xor    %edi,%edi
  write(fd, &c, 1);
    427d:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    4284:	00 
    4285:	89 44 24 04          	mov    %eax,0x4(%esp)
    4289:	89 34 24             	mov    %esi,(%esp)
    428c:	c6 45 e5 25          	movb   $0x25,-0x1b(%ebp)
    4290:	e8 45 fd ff ff       	call   3fda <write>
    4295:	e9 b1 fe ff ff       	jmp    414b <printf+0x4b>
    429a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
    42a0:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    42a3:	b9 0a 00 00 00       	mov    $0xa,%ecx
      state = 0;
    42a8:	66 31 ff             	xor    %di,%di
        printint(fd, *ap, 10, 1);
    42ab:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    42b2:	8b 10                	mov    (%eax),%edx
    42b4:	89 f0                	mov    %esi,%eax
    42b6:	e8 a5 fd ff ff       	call   4060 <printint>
        ap++;
    42bb:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
    42bf:	e9 87 fe ff ff       	jmp    414b <printf+0x4b>
        putc(fd, *ap);
    42c4:	8b 45 d4             	mov    -0x2c(%ebp),%eax
      state = 0;
    42c7:	31 ff                	xor    %edi,%edi
        putc(fd, *ap);
    42c9:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
    42cb:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    42d2:	00 
    42d3:	89 34 24             	mov    %esi,(%esp)
        putc(fd, *ap);
    42d6:	88 45 e4             	mov    %al,-0x1c(%ebp)
  write(fd, &c, 1);
    42d9:	8d 45 e4             	lea    -0x1c(%ebp),%eax
    42dc:	89 44 24 04          	mov    %eax,0x4(%esp)
    42e0:	e8 f5 fc ff ff       	call   3fda <write>
        ap++;
    42e5:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
    42e9:	e9 5d fe ff ff       	jmp    414b <printf+0x4b>
    42ee:	66 90                	xchg   %ax,%ax

000042f0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    42f0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    42f1:	a1 80 65 00 00       	mov    0x6580,%eax
{
    42f6:	89 e5                	mov    %esp,%ebp
    42f8:	57                   	push   %edi
    42f9:	56                   	push   %esi
    42fa:	53                   	push   %ebx
    42fb:	8b 5d 08             	mov    0x8(%ebp),%ebx
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    42fe:	8b 08                	mov    (%eax),%ecx
  bp = (Header*)ap - 1;
    4300:	8d 53 f8             	lea    -0x8(%ebx),%edx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    4303:	39 d0                	cmp    %edx,%eax
    4305:	72 11                	jb     4318 <free+0x28>
    4307:	90                   	nop
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    4308:	39 c8                	cmp    %ecx,%eax
    430a:	72 04                	jb     4310 <free+0x20>
    430c:	39 ca                	cmp    %ecx,%edx
    430e:	72 10                	jb     4320 <free+0x30>
    4310:	89 c8                	mov    %ecx,%eax
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    4312:	39 d0                	cmp    %edx,%eax
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    4314:	8b 08                	mov    (%eax),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    4316:	73 f0                	jae    4308 <free+0x18>
    4318:	39 ca                	cmp    %ecx,%edx
    431a:	72 04                	jb     4320 <free+0x30>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    431c:	39 c8                	cmp    %ecx,%eax
    431e:	72 f0                	jb     4310 <free+0x20>
      break;
  if(bp + bp->s.size == p->s.ptr){
    4320:	8b 73 fc             	mov    -0x4(%ebx),%esi
    4323:	8d 3c f2             	lea    (%edx,%esi,8),%edi
    4326:	39 cf                	cmp    %ecx,%edi
    4328:	74 1e                	je     4348 <free+0x58>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
    432a:	89 4b f8             	mov    %ecx,-0x8(%ebx)
  if(p + p->s.size == bp){
    432d:	8b 48 04             	mov    0x4(%eax),%ecx
    4330:	8d 34 c8             	lea    (%eax,%ecx,8),%esi
    4333:	39 f2                	cmp    %esi,%edx
    4335:	74 28                	je     435f <free+0x6f>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
    4337:	89 10                	mov    %edx,(%eax)
  freep = p;
    4339:	a3 80 65 00 00       	mov    %eax,0x6580
}
    433e:	5b                   	pop    %ebx
    433f:	5e                   	pop    %esi
    4340:	5f                   	pop    %edi
    4341:	5d                   	pop    %ebp
    4342:	c3                   	ret    
    4343:	90                   	nop
    4344:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    bp->s.size += p->s.ptr->s.size;
    4348:	03 71 04             	add    0x4(%ecx),%esi
    434b:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    434e:	8b 08                	mov    (%eax),%ecx
    4350:	8b 09                	mov    (%ecx),%ecx
    4352:	89 4b f8             	mov    %ecx,-0x8(%ebx)
  if(p + p->s.size == bp){
    4355:	8b 48 04             	mov    0x4(%eax),%ecx
    4358:	8d 34 c8             	lea    (%eax,%ecx,8),%esi
    435b:	39 f2                	cmp    %esi,%edx
    435d:	75 d8                	jne    4337 <free+0x47>
    p->s.size += bp->s.size;
    435f:	03 4b fc             	add    -0x4(%ebx),%ecx
  freep = p;
    4362:	a3 80 65 00 00       	mov    %eax,0x6580
    p->s.size += bp->s.size;
    4367:	89 48 04             	mov    %ecx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
    436a:	8b 53 f8             	mov    -0x8(%ebx),%edx
    436d:	89 10                	mov    %edx,(%eax)
}
    436f:	5b                   	pop    %ebx
    4370:	5e                   	pop    %esi
    4371:	5f                   	pop    %edi
    4372:	5d                   	pop    %ebp
    4373:	c3                   	ret    
    4374:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    437a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00004380 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    4380:	55                   	push   %ebp
    4381:	89 e5                	mov    %esp,%ebp
    4383:	57                   	push   %edi
    4384:	56                   	push   %esi
    4385:	53                   	push   %ebx
    4386:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    4389:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    438c:	8b 1d 80 65 00 00    	mov    0x6580,%ebx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    4392:	8d 48 07             	lea    0x7(%eax),%ecx
    4395:	c1 e9 03             	shr    $0x3,%ecx
  if((prevp = freep) == 0){
    4398:	85 db                	test   %ebx,%ebx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    439a:	8d 71 01             	lea    0x1(%ecx),%esi
  if((prevp = freep) == 0){
    439d:	0f 84 9b 00 00 00    	je     443e <malloc+0xbe>
    43a3:	8b 13                	mov    (%ebx),%edx
    43a5:	8b 7a 04             	mov    0x4(%edx),%edi
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
    43a8:	39 fe                	cmp    %edi,%esi
    43aa:	76 64                	jbe    4410 <malloc+0x90>
    43ac:	8d 04 f5 00 00 00 00 	lea    0x0(,%esi,8),%eax
  if(nu < 4096)
    43b3:	bb 00 80 00 00       	mov    $0x8000,%ebx
    43b8:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    43bb:	eb 0e                	jmp    43cb <malloc+0x4b>
    43bd:	8d 76 00             	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    43c0:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    43c2:	8b 78 04             	mov    0x4(%eax),%edi
    43c5:	39 fe                	cmp    %edi,%esi
    43c7:	76 4f                	jbe    4418 <malloc+0x98>
    43c9:	89 c2                	mov    %eax,%edx
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    43cb:	3b 15 80 65 00 00    	cmp    0x6580,%edx
    43d1:	75 ed                	jne    43c0 <malloc+0x40>
  if(nu < 4096)
    43d3:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    43d6:	81 fe 00 10 00 00    	cmp    $0x1000,%esi
    43dc:	bf 00 10 00 00       	mov    $0x1000,%edi
    43e1:	0f 43 fe             	cmovae %esi,%edi
    43e4:	0f 42 c3             	cmovb  %ebx,%eax
  p = sbrk(nu * sizeof(Header));
    43e7:	89 04 24             	mov    %eax,(%esp)
    43ea:	e8 53 fc ff ff       	call   4042 <sbrk>
  if(p == (char*)-1)
    43ef:	83 f8 ff             	cmp    $0xffffffff,%eax
    43f2:	74 18                	je     440c <malloc+0x8c>
  hp->s.size = nu;
    43f4:	89 78 04             	mov    %edi,0x4(%eax)
  free((void*)(hp + 1));
    43f7:	83 c0 08             	add    $0x8,%eax
    43fa:	89 04 24             	mov    %eax,(%esp)
    43fd:	e8 ee fe ff ff       	call   42f0 <free>
  return freep;
    4402:	8b 15 80 65 00 00    	mov    0x6580,%edx
      if((p = morecore(nunits)) == 0)
    4408:	85 d2                	test   %edx,%edx
    440a:	75 b4                	jne    43c0 <malloc+0x40>
        return 0;
    440c:	31 c0                	xor    %eax,%eax
    440e:	eb 20                	jmp    4430 <malloc+0xb0>
    if(p->s.size >= nunits){
    4410:	89 d0                	mov    %edx,%eax
    4412:	89 da                	mov    %ebx,%edx
    4414:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      if(p->s.size == nunits)
    4418:	39 fe                	cmp    %edi,%esi
    441a:	74 1c                	je     4438 <malloc+0xb8>
        p->s.size -= nunits;
    441c:	29 f7                	sub    %esi,%edi
    441e:	89 78 04             	mov    %edi,0x4(%eax)
        p += p->s.size;
    4421:	8d 04 f8             	lea    (%eax,%edi,8),%eax
        p->s.size = nunits;
    4424:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
    4427:	89 15 80 65 00 00    	mov    %edx,0x6580
      return (void*)(p + 1);
    442d:	83 c0 08             	add    $0x8,%eax
  }
}
    4430:	83 c4 1c             	add    $0x1c,%esp
    4433:	5b                   	pop    %ebx
    4434:	5e                   	pop    %esi
    4435:	5f                   	pop    %edi
    4436:	5d                   	pop    %ebp
    4437:	c3                   	ret    
        prevp->s.ptr = p->s.ptr;
    4438:	8b 08                	mov    (%eax),%ecx
    443a:	89 0a                	mov    %ecx,(%edx)
    443c:	eb e9                	jmp    4427 <malloc+0xa7>
    base.s.ptr = freep = prevp = &base;
    443e:	c7 05 80 65 00 00 84 	movl   $0x6584,0x6580
    4445:	65 00 00 
    base.s.size = 0;
    4448:	ba 84 65 00 00       	mov    $0x6584,%edx
    base.s.ptr = freep = prevp = &base;
    444d:	c7 05 84 65 00 00 84 	movl   $0x6584,0x6584
    4454:	65 00 00 
    base.s.size = 0;
    4457:	c7 05 88 65 00 00 00 	movl   $0x0,0x6588
    445e:	00 00 00 
    4461:	e9 46 ff ff ff       	jmp    43ac <malloc+0x2c>
