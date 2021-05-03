function [A] = specialMatrix(n,m)
% This function should return a matrix A as described in the problem statement
% Inputs n is the number of rows, and m the number of columns
% It is recomended to first create the matrxix A of the correct size, filling it with zeros to start with is not a bad choice

if nargin ~= 2 %checks to make sure only two input values have been entered
    error('Input invalid, check entered values');
end

A = zeros(n,m); %initializes matrix of size n,m
A(1,:) = 1:m; %each element of firt row n is the number of column
A(:,1) = 1:n; %each element of first column m is the number of row

% Now the real challenge is to fill in the correct values of A

end