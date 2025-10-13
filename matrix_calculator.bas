10 print chr$(147)
20 print "***** matrix calculator *****"
30 print "1=add  2=subtract  3=multiply  0=quit"

40 dim a(10,10),b(10,10),res(10,10)
50 input "select operation ";o
60 if o=0 then end
70 input "number of rows for matrix a: ";r1
80 input "number of columns for matrix a: ";c1
90 input "number of rows for matrix b: ";r2
100 input "number of columns for matrix b: ";c2

110 if o=3 and c1<>r2 then print "error: columns of a must equal rows of b" : goto 50

120 print "enter matrix a:"
130 for i=1 to r1
140   for j=1 to c1
150     print "a(";i;",";j;") ";
160     input a(i,j)
170   next j
180 next i

190 print "enter matrix b:"
200 for i=1 to r2
210   for j=1 to c2
220     print "b(";i;",";j;") ";
230     input b(i,j)
240   next j
250 next i

260 print
270 print "matrix a:"
280 gosub 910
290 print
300 print "matrix b:"
310 gosub 920

320 if o=1 then gosub 500
330 if o=2 then gosub 600
340 if o=3 then gosub 700
350 goto 50

500 rem --- addition ---
510 for i=1 to r1
520   for j=1 to c1
530     res(i,j)=a(i,j)+b(i,j)
540   next j
550 next i
560 print : print "result of addition:"
570 gosub 930
580 return

600 rem --- subtraction ---
610 for i=1 to r1
620   for j=1 to c1
630     res(i,j)=a(i,j)-b(i,j)
640   next j
650 next i
660 print : print "result of subtraction:"
670 gosub 930
680 return

700 rem --- multiplication ---
710 for i=1 to r1
720   for j=1 to c2
730     sum=0
740     for k=1 to c1
750       sum=sum+a(i,k)*b(k,j)
760     next k
770     res(i,j)=sum
780   next j
790 next i
800 print : print "result of multiplication:"
810 gosub 930
820 return

910 rem --- display matrix a ---
911 for i=1 to r1
912   for j=1 to c1
913     print a(i,j);" ";
914   next j
915   print
916 next i
917 return

920 rem --- display matrix b ---
921 for i=1 to r2
922   for j=1 to c2
923     print b(i,j);" ";
924   next j
925   print
926 next i
927 return

930 rem --- display result matrix ---
931 for i=1 to r1
932   for j=1 to c2
933     print res(i,j);" ";
934   next j
935   print
936 next i
937 return