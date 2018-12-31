clear all
close all
clc

% Call constants.
constants;

% Numerically integrate ODE.
% SimOut = sim('feedforward.mdl','AbsTol','1e-6','RelTol','1e-6','SaveState','on','StateSaveName','xoutNew','SaveOutput','on','OutputSaveName','youtNew');
SimOut = sim('feedback.mdl','AbsTol','1e-6','RelTol','1e-6','SaveState','on','StateSaveName','xoutNew','SaveOutput','on','OutputSaveName','youtNew');
SimOutVars = SimOut.who;
yout = SimOut.get('youtNew');

% Extract time, velocity, force, etc.
post_processing

% Plot.
plot_script

% Save the data!
save sim_data_v1
