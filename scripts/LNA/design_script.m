close all;
clear;
clc;
format long long;

V_CC = 5; %V
R_2 = 51;
f_c = 100e6; %Hz
omega_c = f_c*2*pi; %rad
C_dcp = 1e-6; %F

h_fe = 120; %Typical value
alpha = h_fe/(h_fe + 1);
I_C = 20e-3; %Collector current
V_CE = 3; %Collector-Emitter Voltage
V_BE = 0.7; %Basic modeling

R_F = (h_fe*(V_CE - V_BE))/I_C; %Feedback resistor
R_1 = ((V_CC - V_CE)*alpha)/I_C - R_2;
Z_C = 1/(i*omega_c*C_dcp);

%Impedance Matching
disp("Unilateral Transistor")
Z_0 = 50;
s_11 = 0.4659 - i*0.2824;
s_22 = -0.09663 - i*0.156;
s_12 = 0.00975 - i*0.0024;
s_21 = 0.583 + i*24.2;
Gamma_in = s_11;
Gamma_out = s_22;
Z_in1 = Z_0 * ( (1 + Gamma_in)/(1 - Gamma_in) )
Z_in2 = Z_0 * ( (1 + Gamma_out)/(1 - Gamma_out) )
R_1 = real(Z_in1);
X_1 = imag(Z_in1);
R_2 = real(Z_in2);
X_2 = imag(Z_in2);
%If B is negative, is inductive and L = -1/(omega*B)
%If B is positive, is capacitive and C = |B|/omega
%If X is negative, is capacitive and C = -1/(omega*X)
%If X is positive, is inductive and L = |X|/omega
%As is outside 1 + jx circle, (Z_L || jB) + jX
B1_1 = (X_1 + sqrt(R_1/Z_0) * sqrt(R_1^2 + X_1^2 - Z_0*R_1))/(R_1^2 + X_1^2);
B1_2 = (X_1 - sqrt(R_1/Z_0) * sqrt(R_1^2 + X_1^2 - Z_0*R_1))/(R_1^2 + X_1^2);
X1_1 = 1/B1_1 + (X_1*Z_0)/(R_1) - (Z_0)/(B1_1*R_1);
X1_2 = 1/B1_2 + (X_1*Z_0)/(R_1) - (Z_0)/(B1_2*R_1);
%As is inside 1 + jx circle, (Z_L + jX) || jB
B2_1 = sqrt((Z_0 - R_2)/(R_2))/(Z_0);
B2_2 = -sqrt((Z_0 - R_2)/(R_2))/(Z_0);
X2_1 = sqrt(R_2 * (Z_0 - R_2)) - X_2;
X2_2 = -sqrt(R_2 * (Z_0 - R_2)) - X_2;
%Network in
C1_1 = B1_1 / omega_c;
L1_1 = X1_1 / omega_c;
disp(["Par:" " (C1_1) " num2str(C1_1) ", Ser:" " (L1_1) " num2str(L1_1)])
L1_2 = -1 / (omega_c * B1_2);
C1_2 = -1 / (omega_c * X1_2);
disp(["Par:" " (L1_2) " num2str(L1_2) ", Ser:" " (C1_2) " num2str(C1_2)])
%Network out
C2_1 = B2_1 / omega_c;
L2_1 = X2_1 / omega_c;
disp(["Par:" " (C2_1) " num2str(C2_1) ", Ser:" " (L2_1) " num2str(L2_1)])
L2_2 = -1 / (omega_c * B2_2);
C2_2 = -1 / (omega_c * X2_2);
disp(["Par:" " (L2_2) " num2str(L2_2) ", Ser:" " (C2_2) " num2str(C2_2)])

disp("Non-Unilateral Transistor")
Gamma_in = s_11;
Gamma_out = s_22;
Z_in1 = Z_0 * ( (1 + Gamma_in)/(1 - Gamma_in) )
Z_in2 = Z_0 * ( (1 + Gamma_out)/(1 - Gamma_out) )
R_1 = real(Z_in1);
X_1 = imag(Z_in1);
R_2 = real(Z_in2);
X_2 = imag(Z_in2);
%If B is negative, is inductive and L = -1/(omega*B)
%If B is positive, is capacitive and C = |B|/omega
%If X is negative, is capacitive and C = -1/(omega*X)
%If X is positive, is inductive and L = |X|/omega
%As is outside 1 + jx circle, (Z_L || jB) + jX
B1_1 = (X_1 + sqrt(R_1/Z_0) * sqrt(R_1^2 + X_1^2 - Z_0*R_1))/(R_1^2 + X_1^2);
B1_2 = (X_1 - sqrt(R_1/Z_0) * sqrt(R_1^2 + X_1^2 - Z_0*R_1))/(R_1^2 + X_1^2);
X1_1 = 1/B1_1 + (X_1*Z_0)/(R_1) - (Z_0)/(B1_1*R_1);
X1_2 = 1/B1_2 + (X_1*Z_0)/(R_1) - (Z_0)/(B1_2*R_1);
%As is inside 1 + jx circle, (Z_L + jX) || jB
B2_1 = sqrt((Z_0 - R_2)/(R_2))/(Z_0);
B2_2 = -sqrt((Z_0 - R_2)/(R_2))/(Z_0);
X2_1 = sqrt(R_2 * (Z_0 - R_2)) - X_2;
X2_2 = -sqrt(R_2 * (Z_0 - R_2)) - X_2;
%Network in
C1_1 = B1_1 / omega_c;
L1_1 = X1_1 / omega_c;
disp(["Par:" " (C1_1) " num2str(C1_1) ", Ser:" " (L1_1) " num2str(L1_1)])
L1_2 = -1 / (omega_c * B1_2);
C1_2 = -1 / (omega_c * X1_2);
disp(["Par:" " (L1_2) " num2str(L1_2) ", Ser:" " (C1_2) " num2str(C1_2)])
%Network out
C2_1 = B2_1 / omega_c;
L2_1 = X2_1 / omega_c;
disp(["Par:" " (C2_1) " num2str(C2_1) ", Ser:" " (L2_1) " num2str(L2_1)])
L2_2 = -1 / (omega_c * B2_2);
C2_2 = -1 / (omega_c * X2_2);
disp(["Par:" " (L2_2) " num2str(L2_2) ", Ser:" " (C2_2) " num2str(C2_2)])
