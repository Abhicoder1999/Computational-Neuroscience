clc;close all;clear all;
load('tuning.mat');
load('pop_coding.mat');

temp1 = sum(neuron1)/24;
temp2 = sum(neuron2)/24;
temp3 = sum(neuron3)/24;
temp4 = sum(neuron4)/24;

var1 = var(neuron1);
var2 = var(neuron2);
var3 = var(neuron3);
var4 = var(neuron4);

figure(1)
subplot(221)
plot(stim,temp1)

subplot(222)
plot(stim,temp2)

subplot(223)
plot(stim,temp3)

subplot(224)
plot(stim,temp4)

figure(2)
subplot(211)
plot(r1./r2)

subplot(212)
plot(stim,temp1./temp2)
