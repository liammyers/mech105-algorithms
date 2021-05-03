function [L, U, P] = luFactor(A)
% luFactor(A)
%	LU decomposition with pivotiing
% inputs:
%	A = coefficient matrix
% outputs:
%	L = lower triangular matrix
%	U = upper triangular matrix
%   P = the permutation matrix

if size(A,1) ~= size(A,2)
    error('Matrix dimensions invalid!');
end

L = zeros(size(A,1),size(A,2)); %temp 
U = zeros(size(A,1),size(A,2)); %temp 
P = zeros(size(A,1),size(A,2)); %temp

end