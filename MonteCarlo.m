clear all; clc;
% n= number of points to run in Monte Carlo (MC)
% a sum of points inside the circle
% x and y randomized values within the square/circle
n=12000;
a=0;
x=rand(1,n);
y=rand(1,n);
%matrix to store 10 runs of the MC
B = cell(1,10);

%loop to run MC 10 times, take average of values
for j = 1:1:10;   
    %loop, increments for MC
    for k=1:1:n;
                        
        if (x(k)^2)+(y(k)^2)<=1
            a=a+1;
        else 
            a=a+0;
        end             
    end
     %pie=MC pi estimation
      pie=4*a/n;
    %assign MC value to matrix
    B(1,j) = pie
end

 S = sum(B)
 avg = S/10
 
 %rounded values of "real" pi and averaged MC pi
        piR= round(pi,2)
        pieR= round(avg,2)
 
 

    

       
            
 

 
        