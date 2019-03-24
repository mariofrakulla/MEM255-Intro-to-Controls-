% filename: HW7_SIP_1.m,  Simple Inverted Pendulum
% BC Chang, Drexel University, on 2/22/2019
%Program running sequence:  MATLAB R2015a or later versions
% 1. HW7_SIP_1.m
% 2. HW7_SIP_tmrpns_2.mdl
% 3. HW7_plot_3.m

% x1_dot=x2
% x2_dot=9*sinx1-0.6*x2+cosx1*u
% Initial Conditions
x10_deg = 15   %in degrees
x10=x10_deg*3.1416/180  % in radians
x20=0

AU=[0  1; 9  -0.6]
BU=[0; 1]
eig(AU)

% u=F*x
%Choose desired damping ratio ze and natural frequency wn
ze=0.8
wn=5
F=[-9-wn^2  0.6-2*ze*wn]  % Use this to obtain closed-loop response

%Zero Feedback
%F=[0  0]; 

Acl=AU+BU*F
eig(Acl)

%Part 3 Simulation
% Using the the following script to run the simulink and plot the
% simulation results
sim_time=3
%sim_time = 20

sim_options = simset('SrcWorkspace ', 'current',...
    'DstWorkspace ', 'current');
%open('CSDInvP_sim_2_wFriction') % 
%sim('CSDInvP_sim_2_wFriction', [0, sim_time], sim_options); 
open('HW7_SIP_tmrpns_2') % 
sim('HW7_SIP_tmrpns_2', [0, sim_time], sim_options); 
run('HW7_plot_3')





      
     



