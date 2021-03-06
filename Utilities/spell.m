function [] = spell(n,precision)
%- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% [] = spell(n,precision)
%- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% SPELL formats and displays a matrix in a clean, copyable format. SPELL uses precision of 3 by default; can pass as an 
% additional (optional) argument (default precision = 4)
%
% INPUTS:
% n           2D matrix of numerical values
% precision   (optional) numerical precision of output values (default=4)
%- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

if nargin==1
    precision = 4;
end

tot_length = 6+precision;

if size(n,1)>1
    disp('[...')
    for i=1:size(n,1)
        str = [];
        for j = 1:size(n,2)
            substr = num2str(n(i,j),precision);
            str = [str,substr,repmat(' ',1,tot_length-length(substr))];
        end
        disp(str)
    end
    disp('];')
else
    str = [];
    for j = 1:size(n,2)
        substr = num2str(n(1,j),precision);
        str = [str,substr,repmat(' ',1,tot_length-length(substr))];
    end
    disp(['[ ', str,' ]'])
    
end