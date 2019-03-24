% filename: HW9_P6_1.m,  State Feeback Control
% BC Chang, Drexel University, on 3/19/2019
%Program running sequence:  MATLAB R2015a or later versions
% 2. HW9_P6_tmrpns_2.mdl
% 3. HW9_plot_3.m

% x_dot=A*x+B*u
% Initial Conditions
x10= 2  
x20= 0

A=[-2  -2; 2  3]
B=[-1; 1]
eig(A)

% u=F*x
%Choose desired damping ratio ze and natural frequency wn
ze=0.866
wn=4
F=[-2-wn^2  -3-wn^2-2*ze*wn]  % Use this to obtain closed-loop response


Acl=A+B*F
eig(Acl)

%Part 3 Simulation
% Using the the following script to run the simulink and plot the
% simulation results
%sim_time=3
sim_time = 30

sim_options = simset('SrcWorkspace ', 'current',...
    'DstWorkspace ', 'current');
open('HW9_P6_tmrpns_2') % 
sim('HW9_P6_tmrpns_2', [0, sim_time], sim_options); 
run('HW9_plot_3')





      
     



