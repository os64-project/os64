0 poke 19, 1
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
14 if c$ = "about" then goto 383
15 if c$ = "getasc" then goto 447

63 print
64 print sw$
65 goto 2047

127 i = 0
128 i = i + 1
129 poke i, 0
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
384 print "os64, by iH8Ra1n. "
385 print "os64 is COMPLETELY free software,  "
386 print "if you paid for this, DEMAND A REFUND. "
387 print "os64 has an official website: os64-project.github.io"

447 input "$ "; s$
448 print asc(s$)
449 goto 2047

2047 print
2048 goto 2

4095 print "os64 has encountered a fatal error, which is not recoverable. "
4096 start = ti
4097 if (ti - start) >= 300 then goto 127
