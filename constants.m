t_end = 60; % s

% Car parameters

m = 1000; % kg 
c = 150; % N s / m

% Actual car parameter (truth, which is never known)
m_t = 1000; % kg
% m_t = 1100; % kg
c_t = 150; % N s / m
% c_t = 135; % N s / m

% ICs
v_0 = 10/3600*1000; % m/s

% Reference
a = 24/t_end; % 1/s
r_bar = 50/3600*1000; % m/s

k_p = 500; % N s / m, the control gain.
k_i = 100;

