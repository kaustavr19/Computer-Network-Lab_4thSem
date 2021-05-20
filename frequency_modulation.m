clc;
close all;
clear all;
t=0:.001:1
beta=input('enter the value of modulation index')
Am=input('enter the amplitude of the message signal')
Fm=input('enter the frequency of the message signal')
m=Am*cos(2*pi*Fm*t);
subplot(3,1,1)
plot(m)
ylabel('message signal')
Ac=input('enter the amplitude of the carrier signal')
Fc=input('enter the frequency of the carrier signal')
c=Ac*cos(2*pi*Fc*t);
subplot(3,1,2)
plot(c)
ylabel('carrier signal')
FM=Ac*cos(2*pi*Fc*t+beta*sin(2*pi*Fm*t));
subplot(3,1,3)plot(FM)
ylabel('Frequency Modulated Signal')
