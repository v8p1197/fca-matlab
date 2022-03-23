function [G] = transfer_function(A,B,C,D)
%TRANSFER_FUNCTION Summary of this function goes here
%   Detailed explanation goes here
syms s
I = eye(size(A));
G(s) = C / (s*I - A) * B + D;
end

