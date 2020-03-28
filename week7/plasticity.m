%% Data Loading
close all;clc;clear all;
load('data.mat')

%% Data Initialisation & Preprocessing
alpha = 1;
del_t = 0.01;
etta = 1;
itr_len= 100000;
w = zeros(2,itr_len+1);
w_int = [0.1;0.1];
w(:,1) = w_int;

X_mean = mean(X,1)+[1 2];
u = X-X_mean;%

figure(1)
scatter(u(:,1),u(:,2))

%% Iterations

for i = 1:itr_len
    v = u(mod(i,100)+1,:)*w(:,i);
    w(:,i+1) = w(:,i) + 0.01*(v*u(mod(i,100)+1,:)' - v*v*w(:,i)); 
end

figure(2)
subplot(211)
plot(1:itr_len,w(1,1:itr_len))
subplot(212)
plot(1:itr_len,w(2,1:itr_len))