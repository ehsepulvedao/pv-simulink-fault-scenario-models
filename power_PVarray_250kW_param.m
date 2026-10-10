% Author: Edgar Hernando Sepulveda Oviedo
% Year: 2026
% File: power_PVarray_250kW_param.m
% Description:
% Minimal parameter file for the simplified PV array model.
% The model does not include inverter, transformer, grid connection,
% MPPT, PWM or control loops. The PV array is connected to an
% equivalent constant DC load.

%% =========================================================
% SAMPLING PARAMETERS
% =========================================================

% Power model sampling time (s)
Ts_Power = 1;

% Control sampling time, kept only for compatibility if required
Ts_Control = 1;

%% =========================================================
% COMPATIBILITY PARAMETERS REQUIRED BY SIMULINK BLOCKS
% =========================================================

% Nominal grid frequency used by Mean blocks or legacy measurement blocks (Hz)
Fnom = 60;

% Nominal DC-link voltage used by Mean blocks or initialization parameters (V)
Vnom_dc = 480;

%% =========================================================
% EQUIVALENT DC LOAD
% =========================================================

% Constant equivalent DC load used by the simplified PV model (ohm)
Rload_day = 1.0;

%% =========================================================
% SIMULATION DURATION
% =========================================================

% Reference duration for a complete daily simulation
% tfinal = 86400;    % 24 h in seconds

% Alternative durations for testing
% tfinal = 57600;    % 16 h in seconds
% tfinal = 3600;     % 1 h in seconds
tfinal = 86400;      % 24 h in seconds