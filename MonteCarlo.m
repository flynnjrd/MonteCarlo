clear all; clc;
% n= number of points to run in Monte Carlo
% A sum of points inside the circle
% x and y randomized values within the square/circle
n=12000;
A=0;
x=rand(1,n);
y=rand(1,n);
%loop, increments for Monte Carlo 
for j = 1:1:10;   
    for k=1:1:n;
        
        %pie=Monte Carlo pi estimation
        pie=4*A/k; 
        %rounded values of "real" pi and Monte Carlo pi
        piR= round(pi,2);
        pieR= round(pie,2);
        
        if (x(k)^2)+(y(k)^2)<=1
            A=A+1;
        else 
            A=A+0;
        end
        
    end
    
       
            
 

 
        