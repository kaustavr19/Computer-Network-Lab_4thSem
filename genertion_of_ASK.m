clc;
clear all;
close all;
fc=input('enter the frequency of sine wave carrier');
fp=input('enter the freq of periodic binary pulse');
amp=input('enter the amplitude for carrier and binary pulse');

t=0:.001:1;

c=amp.*sin(2*pi*fc*t);
subplot(3,1,1)
plot(t,c)
xlabel('time')
ylabel('amplitude')
title('carrier wave')

m=amp/2.*square(2*pi*fp*t)+(amp/2);
subplot(3,1,2)
plot(t,m)
xlabel('time')
ylabel('amplitude')
title('binary message pulse')

w=c.*m;
subplot(3,1,3)
plot(t,w)
xlabel('time')
ylabel('amplitude')
title('Amplitude Shift Keyed Signal')




