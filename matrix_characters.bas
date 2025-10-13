10 poke 53280,0:poke 53281,0
20 print chr$(147)
30 for i=55296 to 56295:poke i,5:next i
40 poke 1024+int(rnd(1)*1000),33+int(rnd(1)*93)
50 goto 40