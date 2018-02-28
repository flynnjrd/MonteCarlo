clear all; clc;
format long
% n= number of points to run in Monte Carlo (MC)
% a sum of points inside the circle
% x and y randomized values within the square/circle
n=750000000;
b=5;
x=double(rand(1,n));
y=double(rand(1,n));
%matrix to store b runs of the MC
B = 1:b;

%loop to run MC 10 times, take average of values
for j = 1:1:b;   
    %loop, increments for MC
    %a placed here to reset a value for each iteration
    a=0;
    for k=1:1:n;
                        
        if (x(k)^2)+(y(k)^2)<=1
            a=a+1;
        else 
            a=a+0;
        end             
    end
     %pie=MC pi estimation
      pie=double(4*a/n);
    %assign MC value to matrix
    B(1,j) = pie;
end

%sum and avg all of the MC runs to get an avg MC pi
S = sum(B);
avg = S/b

%rounded values of "real" pi and averaged MC pi
piR= round(pi,4)
pieR= round(avg,4)

if pieR==piR
    
    disp('Yes! Its a match')
else
    disp('Nope')
end

 
 

    

       
            
 

 
        