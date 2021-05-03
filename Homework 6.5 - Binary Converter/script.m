function [base2] = binaryConverter(base10)
%binary A simple function to convert a base10 number to binary
%   Inputs:
%       base10 - A number in base10
%   Outputs:
%       base2 - The base10 number converted to binary

case1 = 0;
case2 = 1;

n = length(num2str(base10)); %temporary

for i = 1:n %"n" also temporary
    if base10 < case1
        error('Input must be nonnegative, base-10 number!')
    elseif base10 == case1
        base2 = 0; 
        break
    elseif base10 == case2
        base2 = 1; 
        break
    end
    
    quo = base10;
    count = 1;
    while quo >= 1
        bin = mod(quo,2); %modulo, quotient, base of 2
        quo = quo/2; %dividing quotient by 2
        arr(count) = [floor(bin)];
        count = count + 1;
    end

    base2 = fliplr(arr);
    
end

end