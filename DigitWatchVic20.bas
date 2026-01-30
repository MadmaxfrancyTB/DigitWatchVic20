0 print "{clear}"
20 o$="{home}":v$=""
30 for i=1 to 22
40 o$=o$+"{right}"
50 v$=v$+"{down}"
60 next i
70 dim n$(12),old$(6),p$(6),d$(2)
80 print "che ore sono";:input a$
90 if len(a$)<6 then a$="0"+a$
100 ti$=a$:bl=1
110 print chr$(147):gosub 230
120 for i=1 to 6
130 digit$=mid$(ti$,i,1)
140 v=val(digit$)
150 if old$(i)<>digit$ then print p$(i);:print n$(10):old$(i)=digit$
160 print p$(i);:print n$(v)
170 get a$:if a$<>"" goto 220
180 next i
190 gosub 480
210 print ps$;: print "orario: ";:print ti$: goto 120
220 end
230 n$(0)="{reverse on}{cm j} {reverse off}{left*2}{down}{cm j} {cm j}{left*3}{down}{cm j} {cm j}{left*3}{down}{cm j} {cm j}{left*3}{down}{cm j} {cm j}{left*3}{down}{cm j} {cm j}{left*3}{down}{reverse on}{cm j} {reverse off}"
240 n$(1)="{right*2}{cm j}{left}{down}{cm j}{left}{down}{cm j}{left}{down*2}{cm j}{left}{down}{cm j}{left}{down}{cm j}"
250 n$(2)="{reverse on}{cm j} {reverse off}{down}{cm j}{left}{down}{cm j}{left*3}{down}{reverse on}{cm j} {reverse off}{left*2}{down}{cm j}{left}{down}{cm j}{left}{down}{reverse on}{cm j} {reverse off}"
260 n$(3)="{reverse on}{cm j} {reverse off}{down}{cm j}{left}{down}{cm j}{left*3}{down}{reverse on}{cm j} {reverse off}{down}{cm j}{left}{down}{cm j}{left*3}{down}{reverse on}{cm j} {reverse off}"
270 n$(4)="{cm j} {cm j}{left*3}{down}{cm j} {cm j}{left*3}{down}{cm j} {cm j}{left*3}{down}{reverse on}{cm j} {reverse off}{down}{cm j}{left}{down}{cm j}{left}{down}{cm j}"
280 n$(5)="{reverse on}{cm j} {reverse off}{left*2}{down}{cm j}{left}{down}{cm j}{left}{down}{reverse on}{cm j} {reverse off}{down}{cm j}{left}{down}{cm j}{left*3}{down}{reverse on}{cm j} {reverse off}"
290 n$(6)="{reverse on}{cm j} {reverse off}{left*2}{down}{cm j}{left}{down}{cm j}{left}{down}{reverse on}{cm j} {reverse off}{left*2}{down}{cm j} {cm j}{left*3}{down}{cm j} {cm j}{left*3}{down}{reverse on}{cm j} {reverse off}"
300 n$(7)="{reverse on}{cm j} {reverse off}{down}{cm j}{left}{down}{cm j}{left}{down*2}{cm j}{left}{down}{cm j}{left}{down}{cm j}"
310 n$(8)="{reverse on}{cm j} {reverse off}{left*2}{down}{cm j} {cm j}{left*3}{down}{cm j} {cm j}{left*3}{down}{reverse on}{cm j} {reverse off}{left*2}{down}{cm j} {cm j}{left*3}{down}{cm j} {cm j}{left*3}{down}{reverse on}{cm j} {reverse off}"
320 n$(9)="{reverse on}{cm j} {reverse off}{left*2}{down}{cm j} {cm j}{left*3}{down}{cm j} {cm j}{left*3}{down}{reverse on}{cm j} {reverse off}{down}{cm j}{left}{down}{cm j}{left*3}{down}{reverse on}{cm j} {reverse off}"
330 n$(10)="   {left*3}{down}   {left*3}{down}   {left*3}{down}   {left*3}{down}   {left*3}{down}   {left*3}{down}   {left*3}{down}"
340 n$(11)="{cm v}{left}{down}{down}{cm v}"
350 n$(12)="{cm f}{left}{down}{down}{cm f}"
360 w=7
370 for k=1 to 6
380 read d
390 p$(k)=left$(o$,d)+left$(v$,w)
400 next k
405 ps$=left$(o$,5)+left$(v$,w-4)
410 for k=1 to 2
420 read d
430 d$(k)=left$(o$,d)+left$(v$,w+2)
440 next k
450 return
460 data 2,5,9,12,16,19
470 data 8,15
480 if bl=1 then goto 520
490 print d$(1);:print n$(11)
500 print d$(2);:print n$(11)
510 goto 540
520 print d$(1);:print n$(12)
530 print d$(2);:print n$(12)
540 bl=1-bl
550 return