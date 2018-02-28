clear all; clc;
format long
% n= number of points to run in Monte Carlo (MC)
% a sum of points inside the circle
% decimal precision
% x and y randomized values within the square/circle
n=100000;
b=100;
d=2;

%matrix to store number of points each run of MC to reach
%desired precision, d
B = 1:b;

%loop to run MC 10 times, take average of values
 for j = 1:1:b
     %x & y placed here to regenerate new values for each iteration
     %a placed here to reset circle area value for each iteration
     x=single(rand(1,n));
     y=single(rand(1,n));
     a=0;
    %loop, increments for MC
    
 
    for k=1:1:n
      r=(x(k)^2)+(y(k)^2);
     
            if  r<=1
                a=a+1;
            else 
                a=a+0;
            end 
             %pie=MC pi estimation
              pie=single(4*a/k);

             %rounded values of "real" pi and averaged MC pi
              piR= single(round(pi,d));
              pieR= single(round(pie,d));
             %Created dif to calculate the difference between the two pis
             %Was checking if piR==pieR but the condition was not
             %triggering. Appeared to be some rounding error
              Dif=(10^d)*abs(piR-pieR);
                        
           if Dif<1
            %assign k value to matrix to take average
            B(1,j) = k;
             disp(piR)
             disp(pieR)
             disp(k)
            break      
           end     
    end    
 end

%sum and avg all of the MC runs to get an avg MC pi
 disp(B)
 S = sum(B);
 avg = S/b



 
 

    

       
            
 

 
        