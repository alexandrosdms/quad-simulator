clear;
close all;

% When a call is made to a file, in addition to looking for it at the
% project folder, MATLAB should look in these folders (given by relative
% path)
addpath('utils');
addpath('trajectories');

% Function handles allow functions to be passed as inputs to other
% functions
controlhandle = @controller;

% Choose which trajectory you want to test with
% trajhandle = @traj_line;
% trajhandle = @traj_diamond;
trajhandle = @traj_sine;
% trajhandle = @traj_step;

% calling simulation function
[t, state] = simulation_2d(controlhandle, trajhandle);
