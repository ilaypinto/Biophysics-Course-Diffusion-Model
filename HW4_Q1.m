%% HW 4- Cell Biophysics
close all;clear all;clc;

%% Q1- Diffusion of particles in compartment model
% Define Base parameters for the Question

compartments = 1000; particles_num = 1000;D = 0.004;

%% Section 1 - Different Time intervals
tmesh = 1:1000;
Result = Diffusion_model(compartments, particles_num, D, tmesh);

figure;
subplot(1,3,1);
bar(Result)
title('1000 steps');xlabel('Compartment number')
ylabel('No. of Particles');

tmesh = 1:10000;
Result = Diffusion_model(compartments, particles_num, D, tmesh);

subplot(1,3,2);
bar(Result)
title('10000 steps');xlabel('Compartment number')
ylabel('No. of Particles');

tmesh = 1:100000;
Result = Diffusion_model(compartments, particles_num, D, tmesh);

subplot(1,3,3);
bar(Result)
title('100000 steps');xlabel('Compartment number')
ylabel('No. of Particles');

suptitle('Compartment model- different timesteps number')
%% Section 2- Different Difussion parameter
tmesh = 1:1000; D = 0.004; 
Result = Diffusion_model(compartments, particles_num, D, tmesh);

figure;
subplot(1,3,1);
bar(Result)
title('D = 0.004');xlabel('Compartment number')
ylabel('No. of Particles');

D = 0.04; 
Result = Diffusion_model(compartments, particles_num, D, tmesh);

subplot(1,3,2);
bar(Result)
title('D = 0.04');xlabel('Compartment number')
ylabel('No. of Particles');


D = 0.4; 
Result = Diffusion_model(compartments, particles_num, D, tmesh);

subplot(1,3,3);
bar(Result)
title('D = 0.4');xlabel('Compartment number')
ylabel('No. of Particles');

suptitle('Compartment model- different D value')