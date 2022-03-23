function [Yel] = free_evolution(A,C,x)
%FREE_EVOLUTION Summary of this function goes here
%   Detailed explanation goes here
syms s
I = eye(size(A));
Yel(s) = C / (s*I - A) * x;
end

