function [ u ] = pd_controller(~, s, s_des, params)
%PD_CONTROLLER  PD controller for the height
%
%   s: 2x1 vector containing the current state [z; v_z]
%   s_des: 2x1 vector containing desired state [z; v_z]
%   params: robot parameters

% FILL IN YOUR CODE HERE
k_p = 55;
k_v = 10;
u = params.mass*(0+k_v*(s_des(2)-s(2)) + k_p*(s_des(1)-s(1)) + params.gravity);

end

