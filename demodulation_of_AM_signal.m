clc;
clear all;
close all;
t=0:.001:1;
Am=input('enter the amplitude of message signal')
Fm=input('enter the frequency of message signal')
m=Am*cos(2*pi*Fm*t);
subplot(5,1,1)
plot(m)
ylabel('message signal')
xlabel('time')
Ac=input('enter the amplitude of carrier signal')
Fc=input('enter the frequency of carrier signal')
c=Ac*cos(2*pi*Fc*t);
subplot(5,1,2)
plot(c)
ylabel('carrier signal')
xlabel('time')
AM=(Ac+m).*cos(2*pi*Fc*t);
subplot(5,1,3)
plot(AM)
ylabel('Amplitude modulated signal')
xlabel('time')
demod=AM.*cos(2*pi*Fc*t);
subplot(5,1,4)
plot(demod)
ylabel('demodulated wave before filtering')
xlabel('time')
envelope=abs(hilbert(AM));
subplot(5,1,5)
plot(envelope)
ylabel('demodulated wave after filtering')
xlabel('time')
