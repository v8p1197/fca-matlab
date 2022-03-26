function [Yel] = free_evolution(A,C,x)
%FREE_EVOLUTION Computes the Laplace transform of the free evolution of the
%state-space system defined by the dynamic matrices A and C, starting from 
%the state X
%   The function implements the equazion Yel(s) = C (sI-A)^-1 x
syms s
I = eye(size(A));
Yel(s) = C / (s*I - A) * x;
end

