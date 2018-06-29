0 poke 19,1
1 hw$ = "Commodore 64"
2 sw$ = "os64 a0.0.0 os64/os64"
3 swvs$ = "a0.0.0"
4 family$ = "os64"

5 print "os64"
6 input "os64# "; c$

7 if c$ = "software" then goto 63
8 if c$ = "exit" then goto 127
9 if c$ = "hardware" then goto 191
10 if c$ = "version" then goto 255
11 if c$ = "family" then goto 319
12 if c$ = "poke" then goto 383
13 if c$ = "peek" then goto 447
14 if c$ = "about" then goto 511
15 if c$ = "get_ascii" then goto 575

63 print
64 print sw$
65 goto 2047

127 i% = 0
128 i% = i% + 1
129 poke i, 255
130 goto 128

191 print
192 print hw$
193 goto 2047

255 print
256 print swv$
257 goto 2047

319 print
320 print family$
321 goto 2047

383 print
384 input "address: "; address%
385 print
386 input "byte: "; towrite%
387 poke address%, towrite%

447 print
448 input "address: "; address%
449 print
450 read% = peek(address%)
451 print read%

511 print
512 print "os64, by iH8Ra1n. "
513 print "os64 is COMPLETELY free software,  "
514 print "if you paid for this, DEMAND A REFUND. "
515 print "os64 has an official website: os64-project.github.io"

575 input "$ "; s$
576 print asc(s$)
577 goto 2047

2047 print
2048 goto 2

4095 print "os64 has encountered a fatal error, which is not recoverable. "
4096 start = ti
4097 if (ti - start) >= 300 then goto 127
